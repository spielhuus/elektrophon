/*
  elektrophon MIDI module

  Create CV signals from usb midi.

*/

#if CONFIG_FREERTOS_UNICORE
#define ARDUINO_RUNNING_CORE 0
#else
#define ARDUINO_RUNNING_CORE 1
#endif

#ifndef LED_BUILTIN
#define LED_BUILTIN 13
#endif

#include <SPI.h>
#include "freertos/timers.h"
#include "BleMidi.h"

#define MIDI_CHANNELS 16
#define MIDI_TRIGGER_TIME 50
#define LATCH_PIN 1

// Rescale 88 notes to 4096 mV:
//    noteMsg = 0 -> 0 mV 
//    noteMsg = 87 -> 4096 mV
// DAC output will be (4095/87) = 47.069 mV per note, and 564.9655 mV per octive
// Note that DAC output will need to be amplified by 1.77X for the standard 1V/octave 
#define NOTE_SF 47.069f // This value can be tuned if CV output isn't exactly 1V/octave

TimerHandle_t tmr[MIDI_CHANNELS];
int id[MIDI_CHANNELS];
int interval = 100;

enum CHANNEL_TYPES { MUTE, MIDI_CV, MIDI_TRIGGER, MIDI_GATE, MIDI_ENVELOPE, MIDI_NOTE };

struct CHANNEL_CONFIG {
  CHANNEL_TYPES type;
  byte note;
  byte velocity;
  byte midi_channel;
  byte old_value;
  long timestamp;
  int reference;
};

CHANNEL_CONFIG channel_config[MIDI_CHANNELS] = {
    CHANNEL_CONFIG{MIDI_CV, 0, 0, 1, 0, 0, 0},
    CHANNEL_CONFIG{MIDI_GATE, 0, 0, 1, 0, 0, 0},
    CHANNEL_CONFIG{MIDI_NOTE, 0, 0, 2, 0, 0, 0},
    CHANNEL_CONFIG{MIDI_TRIGGER, 0, 0, 2, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0},
    CHANNEL_CONFIG{MUTE, 0, 0, 0, 0, 0, 0}
  };

#define NB_OF_SAMPLES 2048
#define OFFSET        3276
#define AMPLITUDE     32767
int wavetable[NB_OF_SAMPLES];
 
//create the bleMidi interface
BLEMIDI_CREATE_INSTANCE(bm);

// the setup function runs once when you press reset or power the board
void setup() {
  
  // initialize serial communication at 115200 bits per second:
  Serial.begin(115200);

  //fill sine the wavetable
  double angle = 0.0;
  for( int i=0; i<NB_OF_SAMPLES; i++ ) {
    wavetable[i] = int(AMPLITUDE * sin(angle) + OFFSET);
    angle += (2 * M_PI) / NB_OF_SAMPLES;
  }
  
  //reset the config array
  for( int i=0; i<MIDI_CHANNELS; i++ ) {
    id[i] = i+1;
//    channel_config[i] = CHANNEL_CONFIG{MUTE, 0, 0};
  }
  
  // Now set up two tasks to run independently.
  xTaskCreatePinnedToCore(
    TaskReadMidi
    ,  "MidiRead"   // A name just for humans
    ,  1024  // This stack size can be checked & adjusted by reading the Stack Highwater
    ,  channel_config
    ,  2  // Priority, with 3 (configMAX_PRIORITIES - 1) being the highest, and 0 being the lowest.
    ,  NULL 
    ,  ARDUINO_RUNNING_CORE);

  for(int i=0; i<MIDI_CHANNELS; i++ ) {
  
    //timer code
    tmr[i] = xTimerCreate("MyTimer", interval, pdTRUE, ( void * )id[i], vTimerCallback);
  //  if( xTimerStart( timers[id].tmr, 10 ) != pdPASS ) {
  //   printf("Timer start error");
  //  }
  
    xTimerStart( tmr[i], interval );    
  }
  
  //configure bleMidi
  bm.begin("hehe");

  bm.onConnected(OnBleMidiConnected);
  bm.onDisconnected(OnBleMidiDisconnected);

  bm.onConnected(OnBleMidiConnected);
  
  bm.setHandleClock(OnClock);
  bm.setHandleNoteOn(OnBleMidiNoteOn);
  bm.setHandleNoteOff(OnBleMidiNoteOff);

  Serial.println(F("Midi interface configured"));
}

void loop() {
  // Empty. Things are done in Tasks.
}

/*--------------------------------------------------*/
/*---------------------- Timers --------------------*/
/*--------------------------------------------------*/
void vTimerCallback( TimerHandle_t xTimer ) {

  long timer_id = (long)pvTimerGetTimerID(xTimer);
    switch(channel_config[timer_id-1].type) {
      case MUTE: break;
      case MIDI_CV: 
        if(channel_config[timer_id-1].old_value != channel_config[timer_id-1].note ) {
        Serial.print( "Set CV for channel: ");
        Serial.print( timer_id );
        Serial.print(":");
        Serial.print( ", value: ");
        Serial.print(channel_config[timer_id-1].note);
        Serial.println(); 
        channel_config[timer_id-1].old_value = channel_config[timer_id-1].note;
        unsigned int mV = (unsigned int) ((float) channel_config[timer_id-1].note * NOTE_SF + 0.5); 
        setVoltage(timer_id-1, 1, mV);  // DAC1, channel 0, gain = 2X
        }
        break;
      case MIDI_GATE: 
        if(channel_config[timer_id-1].old_value != channel_config[timer_id-1].velocity ) {
        Serial.print( "Set Gate for channel: ");
        Serial.print( timer_id );
        Serial.print(":");
        Serial.print( ", value: ");
        Serial.print(channel_config[timer_id-1].velocity);
        Serial.println(); 
        channel_config[timer_id-1].old_value = channel_config[timer_id-1].velocity;
        setVoltage(timer_id-1, 1, channel_config[timer_id-1].velocity<<5);  // DAC1, channel 1, gain = 2X
        }
        break;
      case MIDI_TRIGGER: 
        if(channel_config[timer_id-1].timestamp > 0 ) {
          if(channel_config[timer_id-1].timestamp == 1 ) {
            Serial.print( "Trigger on for channel: ");
            Serial.print( timer_id );
            channel_config[timer_id-1].timestamp = millis()+MIDI_TRIGGER_TIME;
            setVoltage(timer_id-1, 0, 255);  // DAC1, channel 0, gain = 2X
          } else if(channel_config[timer_id-1].timestamp < millis() ) {
            Serial.print( "Trigger off for channel: ");
            Serial.print( timer_id );
            channel_config[timer_id-1].timestamp = 0;
            setVoltage(timer_id-1, 0, 0);  // DAC1, channel 0, gain = 2X
          }
        }
        break;
      case MIDI_NOTE:
        setVoltage(timer_id-1, 0, wavetable[channel_config[timer_id-1].reference]);  // DAC1, channel 0, gain = 2X
        channel_config[timer_id-1].reference += 1;
        if(channel_config[timer_id-1].reference >= NB_OF_SAMPLES ) 
        {channel_config[timer_id-1].reference=0;}
        break;
       
    }
}
  
/*--------------------------------------------------*/
/*---------------------- Tasks ---------------------*/
/*--------------------------------------------------*/

void TaskReadMidi(void *pvParameters) { // This is a task.
  CHANNEL_CONFIG * channel_config = static_cast<CHANNEL_CONFIG*>(pvParameters);
  for (;;) {    
    bm.read();  
    vTaskDelay(100);  // one tick delay (15ms) in between reads for stability
  }
}

// ====================================================================================
// Event handlers for incoming MIDI messages
// ====================================================================================

// -----------------------------------------------------------------------------
// rtpMIDI session. Device connected
// -----------------------------------------------------------------------------
void OnBleMidiConnected() {
  Serial.println(F("Connected"));
}

// -----------------------------------------------------------------------------
// rtpMIDI session. Device disconnected
// -----------------------------------------------------------------------------
void OnBleMidiDisconnected() {
  Serial.println(F("Disconnected"));
}

// -----------------------------------------------------------------------------
// received heartbeat
// -----------------------------------------------------------------------------
void OnClock() {
//  Serial.print(F("."));
}

// -----------------------------------------------------------------------------
// received note on
// -----------------------------------------------------------------------------
void OnBleMidiNoteOn(byte channel, byte note, byte velocity) {
  for( int i=0; i<MIDI_CHANNELS; i++ ) {    
    if( channel_config[i].midi_channel == channel ) {
        Serial.println();
        Serial.print(F("Incoming NoteOn from channel:"));
        Serial.print(channel);
        Serial.print(F(" note:"));
        Serial.print(note);
        Serial.print(F(" velocity:"));
        Serial.print(velocity);
        Serial.println();
        channel_config[i].note = note;
        channel_config[i].velocity = velocity;
        channel_config[i].timestamp = 1;
    }
  }
}

// -----------------------------------------------------------------------------
// received note off
// -----------------------------------------------------------------------------
void OnBleMidiNoteOff(byte channel, byte note, byte velocity) {
  for( int i=0; i<MIDI_CHANNELS; i++ ) {    
    if( channel_config[i].midi_channel == channel ) {
        Serial.println();
        Serial.print(F("Incoming NoteOff from channel:"));
        Serial.print(channel);
        Serial.print(F(" note:"));
        Serial.print(note);
        Serial.print(F(" velocity:"));
        Serial.print(velocity);
        Serial.println();
        channel_config[i].note = note;
        channel_config[i].velocity = velocity;
    }
  }
}

// -----------------------------------------------------------------------------
// control the DAC
// -----------------------------------------------------------------------------
void setVoltage(byte channel, bool gain, unsigned int mV) {
  unsigned int command = (channel%2) ? 0x9000 : 0x1000;
  command |= gain ? 0x0000 : 0x2000;
  command |= (mV & 0x0FFF);
  
//  digitalWrite(dacpin,LOW);
  channel_select(channel/2, false);
  SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));
  SPI.transfer(command>>8);
  SPI.transfer(command&0xFF);
  SPI.endTransaction();
//  digitalWrite(dacpin,HIGH);
  channel_select(channel/2, true);
}

unsigned int shift_bits = 0;

void channel_select( byte channel, bool state ) {
  digitalWrite(LATCH_PIN, LOW);      
  shift_bits |= state << channel;
  SPI.transfer( shift_bits ); 
  digitalWrite(LATCH_PIN, HIGH);
}

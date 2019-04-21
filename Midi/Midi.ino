/*
  Arduino Midi Module

  Create CV signals from usb midi.

*/

#include <SPI.h>
#include <MIDI.h>

#define MIDI_CHANNELS 8
#define MIDI_TRIGGER_TIME 50
#define MIDI_TRIGGER_TIME 50
#define MIDI_NOTES 88

#define LED_PIN 9

#define DAC1 8

unsigned int shift_bits = 0;


// include and prepare midi library
#define MIDI_LOW 0
#if defined(USBCON)
#include <midi_UsbTransport.h>


static const unsigned sUsbTransportBufferSize = 16;
typedef midi::UsbTransport<sUsbTransportBufferSize> UsbTransport;

UsbTransport sUsbTransport;

MIDI_CREATE_INSTANCE(UsbTransport, sUsbTransport, MIDI);

#else // No USB available, fallback to Serial
MIDI_CREATE_DEFAULT_INSTANCE();
#endif


//Pin connected to ST_CP of 74HC595
int latchPin = 10;
//Pin connected to SH_CP of 74HC595
int clockPin = 12;
////Pin connected to DS of 74HC595
int dataPin = 11;


unsigned long trigTimers[MIDI_CHANNELS] = {0};
unsigned int act_note[MIDI_CHANNELS] = {0};


// Rescale 88 notes to 4096 mV:
//    noteMsg = 0 -> 0 mV 
//    noteMsg = 87 -> 4096 mV
// DAC output will be (4095/87) = 47.069 mV per note, and 564.9655 mV per octive
// Note that DAC output will need to be amplified by 1.77X for the standard 1V/octave 
#define NOTE_SF 47.069f // This value can be tuned if CV output isn't exactly 1V/octave


/* midi note on */
void handleNoteOn(byte inChannel, byte inNumber, byte inVelocity) {


  if(inChannel>MIDI_CHANNELS) return; //check if number of channels is supported
  if(inNumber<0 || inNumber>MIDI_NOTES) return; //check if number of notes is supported
  
  digitalWrite(LED_PIN, HIGH); //visualize signal

  //set the trigger 
  digitalWrite(latchPin, LOW);      
  shift_bits |= 1 << inChannel;
  SPI.transfer( shift_bits ); 
  digitalWrite(latchPin, HIGH);
  trigTimers[inChannel-1] = millis()+MIDI_TRIGGER_TIME;


  if(inChannel==1) {
    //set the velocity
    setVoltage(DAC1, 1, 1, inVelocity<<5);  // DAC1, channel 1, gain = 2X
  
    //set the note
    unsigned int mV = (unsigned int) ((float) inNumber * NOTE_SF + 0.5); 
    setVoltage(DAC1, 0, 1, mV);  // DAC1, channel 0, gain = 2X
    act_note[inChannel-1] = inNumber;
  }
  digitalWrite(LED_PIN, LOW);
}


void handleNoteOff(byte inChannel, byte inNumber, byte inVelocity) {
  if(inChannel>MIDI_CHANNELS) return; //check if number of channels is supported
  if(inNumber<0 || inNumber>MIDI_NOTES) return; //check if number of notes is supported


  if(inChannel==1 && act_note[inChannel-1] == inNumber ) {
    //set the velocity
    setVoltage(DAC1, 1, 1, inVelocity<<5);  // DAC1, channel 1, gain = 2X
  }
//  digitalWrite(inChannel+1,LOW); //set trigger
}

void setVoltage(int dacpin, bool channel, bool gain, unsigned int mV) {
  unsigned int command = channel ? 0x9000 : 0x1000;


  command |= gain ? 0x0000 : 0x2000;
  command |= (mV & 0x0FFF);
  
  SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));
  digitalWrite(dacpin,LOW);
  SPI.transfer(command>>8);
  SPI.transfer(command&0xFF);
  digitalWrite(dacpin,HIGH);
  SPI.endTransaction();
}

// the setup function runs once when you press reset or power the board
void setup() {
  pinMode(LED_PIN, OUTPUT);
  pinMode(DAC1, OUTPUT);
  digitalWrite(LED_PIN, HIGH);
  digitalWrite(DAC1,HIGH);
  
  SPI.begin();
  MIDI.begin(MIDI_CHANNEL_OMNI);
  MIDI.setHandleNoteOn(handleNoteOn);
  MIDI.setHandleNoteOff(handleNoteOff);
  
  delay(1000);
  digitalWrite(LED_PIN, LOW);
}

// the loop function runs over and over again forever
void loop() {

  //turn of the triggers
  for(int i=0; i<MIDI_CHANNELS; i++ ) {
    if( trigTimers[i] > 0 && trigTimers[i] < millis() ) {
      digitalWrite(latchPin, LOW);      
      shift_bits &= 0 << i;
      SPI.transfer( 0 /*shift_bits*/ ); //TODO only disable the right PIN
      digitalWrite(latchPin, HIGH);
      trigTimers[i] = 0;
    }
  }
  MIDI.read();
}

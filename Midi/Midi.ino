#include <MIDI.h>
#include <SPI.h>

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

// Rescale 88 notes to 4096 mV:
//    noteMsg = 0 -> 0 mV 
//    noteMsg = 87 -> 4096 mV
// DAC output will be (4095/87) = 47.069 mV per note, and 564.9655 mV per octive
// Note that DAC output will need to be amplified by 1.77X for the standard 1V/octave 
#define NOTE_SF 47.069f // This value can be tuned if CV output isn't exactly 1V/octave

#define CHANNELS 8
#define NOTES 88

#define CLOCK 4
#define DAC1 8
#define DAC2 9

unsigned long trigTimers[CHANNELS] = {0};
unsigned long clock_timer=0;
bool notes[8][NOTES] = {{0,0,0}};

void handleNoteOn(byte inChannel, byte inNumber, byte inVelocity) {

  if(inChannel>CHANNELS) return; //check if number of channels is supported
  if(inNumber<0 || inNumber>NOTES) return; //check if number of notes is supported

  if( inChannel==1 ) {
    //set the velocity
    setVoltage(DAC1, 1, 1, inVelocity<<5);  // DAC1, channel 1, gain = 2X
  
    //set the note
    unsigned int mV = (unsigned int) ((float) inNumber * NOTE_SF + 0.5); 
    setVoltage(DAC1, 0, 1, mV);  // DAC1, channel 0, gain = 2X
  }

  digitalWrite(inChannel+1,HIGH); //set trigger
  trigTimers[inChannel] = millis();
  commandNote(inNumber);
}

void handleNoteOff(byte inChannel, byte inNumber, byte inVelocity) {
  if(inChannel>CHANNELS) return; //check if number of channels is supported
  if(inNumber<0 || inNumber>NOTES) return; //check if number of notes is supported

  //set the velocity
  setVoltage(DAC1, 1, 1, inVelocity<<5);  // DAC1, channel 1, gain = 2X

  digitalWrite(inChannel+1,LOW); //set trigger
}

void setup() {
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
//  pinMode(GATE, OUTPUT);
//  pinMode(TRIG, OUTPUT);
  pinMode(CLOCK, OUTPUT);
  pinMode(DAC1, OUTPUT);
  pinMode(DAC2, OUTPUT);
  digitalWrite(2,LOW);
  digitalWrite(3,LOW);
  digitalWrite(CLOCK,LOW);
  digitalWrite(DAC1,HIGH);
  digitalWrite(DAC2,HIGH);
  
  SPI.begin();
  
  MIDI.begin(MIDI_CHANNEL_OMNI);
  MIDI.setHandleNoteOn(handleNoteOn);
  MIDI.setHandleNoteOff(handleNoteOff);
    
  // Set initial pitch bend voltage to 0.5V (mid point).  With Gain = 1X, this is 1023
  // Other DAC outputs will come up as 0V, so don't need to be initialized
  setVoltage(DAC1, 0, 0, 1023);  
}

void loop() {
  for(int i=0; i<CHANNELS; i++ ) {
    if ((trigTimers[i] > 0) && (millis() - trigTimers[i] > 20)) { 
        digitalWrite(i+2,LOW); // Set trigger low after 20 msec 
        trigTimers[i] = 0;  
    }
  }

    if ((clock_timer > 0) && (millis() - clock_timer > 20)) { 
        digitalWrite(CLOCK,LOW); // Set clock pulse low after 20 msec 
        clock_timer = 0;  
    }
    MIDI.read();
}


void commandNote(int noteMsg) {
  unsigned int mV = (unsigned int) ((float) noteMsg * NOTE_SF + 0.5); 
  setVoltage(DAC1, 0, 1, mV);  // DAC1, channel 0, gain = 2X
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

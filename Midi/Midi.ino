#include <MIDI.h>

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

#define CHANNELS 8
#define NOTES 88

void change_note(byte inChannel, byte inNumber, byte inVelocity ) {
    for(int i=0; i<CHANNELS; i++) {

    }
}
// --

int cvPin1 = 8;      // LED connected to digital pin 9
int cvPin2 = 9;      // LED connected to digital pin 9
int cvPin3 = 10;      // LED connected to digital pin 9
int cvPin4 = 11;      // LED connected to digital pin 9

unsigned long trigTimer = 0;
bool notes[8][NOTES] = {0};

void handleNoteOn(byte inChannel, byte inNumber, byte inVelocity) {

    if(inChannel>CHANNELS) return; //check if number of channels is supported
    if(inNumber<0 || inNumber>NOTES) return //check if number of notes is supported
    if(inVelocity>0) {
        notes[inChannel][inNumber] = false; 
    } else {
        notes[inChannel][inNumber] = true; 
        setVoltage(DAC1, 1, 1, inVelocity<<5);  // DAC1, channel 1, gain = 2X
        commandNote(inNumber);
    }
}

void handleNoteOff(byte inChannel, byte inNumber, byte inVelocity) {
    if(inChannel>CHANNELS) return; //check if number of channels is supported
    if(inNumber<0 || inNumber>NOTES) return //check if number of notes is supported
    if(inVelocity>0) {
        notes[inChannel][inNumber] = false; 
        digitalWrite(GATE,LOW); 
    } else {
        notes[inChannel][inNumber] = true; 
        setVoltage(DAC1, 1, 1, inVelocity<<5);  // DAC1, channel 1, gain = 2X
        commandNote(inNumber);
    }
}

void setup() {

  pinMode(cvPin1, OUTPUT);   // sets the pin as output
  pinMode(cvPin2, OUTPUT);   // sets the pin as output
  pinMode(cvPin3, OUTPUT);   // sets the pin as output
  pinMode(cvPin4, OUTPUT);   // sets the pin as output


        // Set Frequency to 61.5 kHz.
//TCCR2A = _BV(COM2A1) | _BV(COM2B1) | _BV(WGM21) | _BV(WGM20);
//TCCR2B = _BV(CS20); 

//duty cycle defined at the top of code
//OCR2A = pwm;


#if defined(USBCON)
       analogWrite( cvPin4, 255 );
        delay(200);
#endif
       analogWrite( cvPin4, 255 );
        delay(200);
        analogWrite( cvPin4, 0 );
        delay(200);

    while (!Serial);

    MIDI.begin(MIDI_CHANNEL_OMNI);
    MIDI.setHandleNoteOn(handleNoteOn);
    MIDI.setHandleNoteOff(handleNoteOff);
    Serial.begin(115200);
}

void loop() {
    //  OCR2A = pwm;
    if ((trigTimer > 0) && (millis() - trigTimer > 20)) { 
        digitalWrite(TRIG,LOW); // Set trigger low after 20 msec 
        trigTimer = 0;  
    }

    if ((clock_timer > 0) && (millis() - clock_timer > 20)) { 
        digitalWrite(CLOCK,LOW); // Set clock pulse low after 20 msec 
        clock_timer = 0;  
    }
    MIDI.read();
}

// Rescale 88 notes to 4096 mV:
//    noteMsg = 0 -> 0 mV 
//    noteMsg = 87 -> 4096 mV
// DAC output will be (4095/87) = 47.069 mV per note, and 564.9655 mV per octive
// Note that DAC output will need to be amplified by 1.77X for the standard 1V/octave 
#define NOTE_SF 47.069f // This value can be tuned if CV output isn't exactly 1V/octave

void commandNote(int noteMsg) {
  digitalWrite(GATE,HIGH);
  digitalWrite(TRIG,HIGH);
  trigTimer = millis();
  
  unsigned int mV = (unsigned int) ((float) noteMsg * NOTE_SF + 0.5); 
  setVoltage(DAC1, 0, 1, mV);  // DAC1, channel 0, gain = 2X
}

void setVoltage(int dacpin, bool channel, bool gain, unsigned int mV)
{
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


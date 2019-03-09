#include <MIDI.h>
#include <SPI.h>

#define MIDI_LOW 0

#define NP_SEL1 A0  // Note priority is set by pins A0 and A2
#define NP_SEL2 A2 

#define GATE  2
#define TRIG  3
#define GATE_2  5
#define TRIG_2  6
#define CLOCK 4
#define DAC1  8 
#define DAC2  9


#if defined(USBCON)
#include <midi_UsbTransport.h>

static const unsigned sUsbTransportBufferSize = 16;
typedef midi::UsbTransport<sUsbTransportBufferSize> UsbTransport;

UsbTransport sUsbTransport;

MIDI_CREATE_INSTANCE(UsbTransport, sUsbTransport, MIDI);

#else // No USB available, fallback to Serial
MIDI_CREATE_DEFAULT_INSTANCE();
#endif

// --

int cvPin1 = 8;      // LED connected to digital pin 9
int cvPin2 = 9;      // LED connected to digital pin 9
int cvPin3 = 10;      // LED connected to digital pin 9
int cvPin4 = 11;      // LED connected to digital pin 9

int pwm=250;




void handleNoteOn(byte inChannel, byte inNumber, byte inVelocity)
{
  unsigned long trigTimer = 0;
//
//  int voltage = ( inNumber - MIDI_LOW ) * 5;
//  float value = ( voltage * 250 ) / 504;
//  
//  if( inChannel ==  1) {
//OCR2A=pwm;
//analogWrite( cvPin4, value );
///*  } else if( inChannel == 2) {
//    analogWrite( cvPin2, value );
//  } else if( inChannel == 3) {
//    analogWrite( cvPin3, value );
//  } else if( inChannel == 4) {
//    analogWrite( cvPin4, value ); */
//  }
#define NOTE_SF 47.069f // This value can be tuned if CV output isn't exactly 1V/octave

  if( inChannel == 1) {
    digitalWrite(GATE,HIGH);
    digitalWrite(TRIG,HIGH);
    trigTimer = millis();
  
      setVoltage(DAC1, 1, 1, inVelocity<<5);

    unsigned int mV = (unsigned int) ((float) inNumber * NOTE_SF + 0.5); 
    setVoltage(DAC1, 0, 1, mV);  // DAC1, channel 0, gain = 2X


  } else  if( inChannel == 2) {
    digitalWrite(GATE_2,HIGH);
    digitalWrite(TRIG_2,HIGH);
    trigTimer = millis();

  //TODO change DAC
//      setVoltage(DAC1, 1, 1, inVelocity<<5);

  //  unsigned int mV = (unsigned int) ((float) inNumber * NOTE_SF + 0.5); 
    //setVoltage(DAC1, 0, 1, mV);  // DAC1, channel 0, gain = 2X
  }

}
void handleNoteOff(byte inChannel, byte inNumber, byte inVelocity)
{
//  float voltage = ( inNumber - MIDI_LOW ) * 5;
//  float value = ( voltage * 250 ) / 504;
// 
  if( inChannel == 1) {
       digitalWrite(GATE,LOW);
    digitalWrite(TRIG,LOW);
//    trigTimer = millis();
  

    unsigned int mV = (unsigned int) ((float) inNumber * NOTE_SF + 0.5); 
    setVoltage(DAC1, 0, 1, mV);  // DAC1, channel 0, gain = 2X
    
        setVoltage(DAC1, 1, 1, 0 ); //inVelocity<<10);
  } else if( inChannel == 2) {
    
       digitalWrite(GATE_2,LOW);
    digitalWrite(TRIG_2,LOW);
//    trigTimer = millis();
  

//TODO change dac
//    unsigned int mV = (unsigned int) ((float) inNumber * NOTE_SF + 0.5); 
//    setVoltage(DAC1, 0, 1, mV);  // DAC1, channel 0, gain = 2X
    
//        setVoltage(DAC1, 1, 1, 0 ); //inVelocity<<10);
  }


//  }
//OCR2A=pwm;
//    analogWrite( cvPin4, value );
///*  } else if( inChannel == 2) {
//    analogWrite( cvPin2, value );
//  } else if( inChannel == 3) {
//    analogWrite( cvPin3, value );
//  } else if( inChannel == 4) {
//    analogWrite( cvPin4, value ); */
//  }
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

void setup() {

 pinMode(NP_SEL1, INPUT_PULLUP);
 pinMode(NP_SEL2, INPUT_PULLUP);
 
 pinMode(GATE, OUTPUT);
 pinMode(TRIG, OUTPUT);
 pinMode(CLOCK, OUTPUT);
 pinMode(DAC1, OUTPUT);
 pinMode(DAC2, OUTPUT);
 digitalWrite(GATE,LOW);
 digitalWrite(TRIG,LOW);
 digitalWrite(CLOCK,LOW);
 digitalWrite(DAC1,HIGH);
 digitalWrite(DAC2,HIGH);
 
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

    SPI.begin();
 
    MIDI.begin(MIDI_CHANNEL_OMNI);
    MIDI.setHandleNoteOn(handleNoteOn);
    MIDI.setHandleNoteOff(handleNoteOff);
    Serial.begin(115200);
}

void loop() {
//  OCR2A = pwm;
    MIDI.read();
}

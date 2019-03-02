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

// --

int cvPin1 = 8;      // LED connected to digital pin 9
int cvPin2 = 9;      // LED connected to digital pin 9
int cvPin3 = 10;      // LED connected to digital pin 9
int cvPin4 = 11;      // LED connected to digital pin 9

int pwm=250;

void handleNoteOn(byte inChannel, byte inNumber, byte inVelocity)
{

  int voltage = ( inNumber - MIDI_LOW ) * 5;
  float value = ( voltage * 250 ) / 504;
  
  if( inChannel ==  1) {
OCR2A=pwm;
analogWrite( cvPin4, value );
/*  } else if( inChannel == 2) {
    analogWrite( cvPin2, value );
  } else if( inChannel == 3) {
    analogWrite( cvPin3, value );
  } else if( inChannel == 4) {
    analogWrite( cvPin4, value ); */
  }
}
void handleNoteOff(byte inChannel, byte inNumber, byte inVelocity)
{
  float voltage = ( inNumber - MIDI_LOW ) * 5;
  float value = ( voltage * 250 ) / 504;
 
  if( inChannel == 1) {
OCR2A=pwm;
    analogWrite( cvPin4, value );
/*  } else if( inChannel == 2) {
    analogWrite( cvPin2, value );
  } else if( inChannel == 3) {
    analogWrite( cvPin3, value );
  } else if( inChannel == 4) {
    analogWrite( cvPin4, value ); */
  }
}

void setup() {

  pinMode(cvPin1, OUTPUT);   // sets the pin as output
  pinMode(cvPin2, OUTPUT);   // sets the pin as output
  pinMode(cvPin3, OUTPUT);   // sets the pin as output
  pinMode(cvPin4, OUTPUT);   // sets the pin as output


        // Set Frequency to 61.5 kHz.
TCCR2A = _BV(COM2A1) | _BV(COM2B1) | _BV(WGM21) | _BV(WGM20);
TCCR2B = _BV(CS20); 

//duty cycle defined at the top of code
OCR2A = pwm;


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
    MIDI.read();
}

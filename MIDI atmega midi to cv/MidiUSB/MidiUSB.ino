#include <MIDI.h>

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

int cvPin = 9;      // LED connected to digital pin 9

void handleNoteOn(byte inChannel, byte inNumber, byte inVelocity)
{
  if( inChannel == 2) {
    analogWrite( cvPin, inNumber<<5 );
  }
}
void handleNoteOff(byte inChannel, byte inNumber, byte inVelocity)
{
  if( inChannel == 2 ) {
    analogWrite( cvPin, LOW );
  }
}

void setup() {
    
#if defined(USBCON)
       analogWrite( cvPin, 255 );
        delay(200);
#endif
       analogWrite( cvPin, 255 );
        delay(200);
        analogWrite( cvPin, 0 );
        delay(200);

    while (!Serial);
    pinMode(cvPin, OUTPUT);   // sets the pin as output
    MIDI.begin();
    MIDI.setHandleNoteOn(handleNoteOn);
    MIDI.setHandleNoteOff(handleNoteOff);
    Serial.begin(115200);
}

void loop() {
    MIDI.read();
}

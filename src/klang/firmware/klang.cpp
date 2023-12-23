#include "daisy_seed.h"
#include "daisysp.h"
#include <string>

using namespace daisy;
using namespace daisysp;

static DaisySeed      hw;
static Oscillator     osc;
static MidiUsbHandler midi;
static Svf            filt;

void AudioCallback(AudioHandle::InputBuffer  in,
                   AudioHandle::OutputBuffer out,
                   size_t                    size)
{
    float sig;
    for(size_t i = 0; i < size; i++)
    {
        sig = osc.Process();
        filt.Process(sig);
        for(size_t chn = 0; chn < 4; chn++)
        {
            out[chn][i] = filt.Low();
        }
    }
}

// Typical Switch case for Message Type.
void HandleMidiMessage(MidiEvent m)
{
    switch(m.type)
    {
        case NoteOn:
        {
            NoteOnEvent p = m.AsNoteOn();
            // This is to avoid Max/MSP Note outs for now..
            if(m.data[1] != 0)
            {
                p = m.AsNoteOn();
                osc.SetFreq(mtof(p.note));
                osc.SetAmp((p.velocity / 127.0f));
            }
        }
        break;
        case ControlChange:
        {
            ControlChangeEvent p = m.AsControlChange();
            switch(p.control_number)
            {
                case 1:
                    // CC 1 for cutoff.
                    filt.SetFreq(mtof((float)p.value));
                    break;
                case 2:
                    // CC 2 for res.
                    filt.SetRes(((float)p.value / 127.0f));
                    break;
                default: break;
            }
            break;
        }
        default: break;
    }
}


// Main -- Init, and Midi Handling
int main(void)
{
    // Init
    float samplerate;
    hw.Init();
    samplerate = hw.AudioSampleRate();

    /** Initialize USB Midi 
		 *  by default this is set to use the built in (USB FS) peripheral.
		 * 
		 *  by setting midi_cfg.transport_config.periph = MidiUsbTransport::Config::EXTERNAL
		 *  the USB HS pins can be used (as FS) for MIDI 
		 */
    MidiUsbHandler::Config midi_cfg;
    midi_cfg.transport_config.periph = MidiUsbTransport::Config::INTERNAL;
    midi.Init(midi_cfg);

    // Synthesis
    osc.Init(samplerate);
    osc.SetWaveform(Oscillator::WAVE_POLYBLEP_SAW);
    filt.Init(samplerate);

    //display
    /* std::string str  = "Midi";
    char*       cstr = &str[0];
    hw.display.WriteString(cstr, Font_7x10, true);
    hw.display.Update(); */

    // Start stuff.
    // hw.StartAdc();
    hw.StartAudio(AudioCallback);

    for(;;)
    {
        /** Listen to MIDI for new changes */
        midi.Listen();

        // Handle MIDI Events
        while(midi.HasEvents())
        {
            HandleMidiMessage(midi.PopEvent());
        }
    }
}

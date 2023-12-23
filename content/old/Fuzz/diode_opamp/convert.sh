#!/bin/sh

mkdir -p fuzz-out
python3 ../spice-audio-tools/wavtospice.py ../2278__jovica__90-bpm-attack-loop-3-square-triangle-melody-mastered-16-bit.wav input.spice
ngspice -ab Sim.cir
python3 ../spice-audio-tools/spicetowav.py output fuzz-out/2278__jovica__90-bpm-attack-loop-3-square-triangle-melody-mastered-16-bit.wav
rm input.spice output

python3 ../spice-audio-tools/wavtospice.py ../135402__mystified13__trianglegran1.wav input.spice
ngspice -ab Sim.cir
python3 ../spice-audio-tools/spicetowav.py output fuzz-out/135402__mystified13__trianglegran1.wav
rm input.spice output

python3 ../spice-audio-tools/wavtospice.py ../151009__khoon__rhythm-1-clean-95-bpm.wav input.spice
ngspice -ab Sim.cir
python3 ../spice-audio-tools/spicetowav.py output fuzz-out/151009__khoon__rhythm-1-clean-95-bpm.wav
rm input.spice output

python3 ../spice-audio-tools/wavtospice.py ../427847__newagesoup__150bpm-saw-chords-future-bass.wav input.spice
ngspice -ab Sim.cir
python3 ../spice-audio-tools/spicetowav.py output fuzz-out/427847__newagesoup__150bpm-saw-chords-future-bass.wav
rm input.spice output




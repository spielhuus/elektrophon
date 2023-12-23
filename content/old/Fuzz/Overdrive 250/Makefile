OUTPUT =  '../../../tmp/fuzz_files'
SPICETOWAV=../../../lib/python/Spice2Wav/spicetowav.py
WAVTOSPICE=../../../lib/python/Spice2Wav/wavtospice.py

FILE1='151009__khoon__rhythm-1-clean-95-bpm.wav'
FILE2='2278__jovica__90-bpm-attack-loop-3-square-triangle-melody-mastered-16-bit.wav'
FILE3='135402__mystified13__trianglegran1.wav'
FILE4='427847__newagesoup__150bpm-saw-chords-future-bass.wav'

SRC = Overdrive250
OBJ = $(SRC:.cc=.o)
EXEC = Overdrive250

all: $(EXEC)

$(EXEC): $(SRC)
	mkdir -p $(OUTPUT)/$(SRC)/
	for f in $(FILE1) ; do \
		echo $$f "\n" ; \
		python3 $(WAVTOSPICE) ../$$f input.spice ; \
		ngspice -ab Sim.cir ; \
		python3 $(SPICETOWAV) output ../build/verzerrung_files/$(SRC)_$$f  ; \
		rm input.spice output ; \
	done

clean:
	rm -rf $(OUTPUT)/*$(SRC)*
	for f in $(FILE1) ; do \
		rm $$f ; \
		rm ../build/verzerrung_files/$(SRC)_$$f ; \
	done

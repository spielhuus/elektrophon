JUPYTER = jupyter
PANDOC = pandoc
JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600  pegel.ipynb --execute --to markdown --debug --no-input 
OUTPUT =  '../../../tmp/fuzz_files'
SPICETOWAV=../../../lib/python/Spice2Wav/spicetowav.py
WAVTOSPICE=../../../lib/python/Spice2Wav/wavtospice.py

FILE1='2278__jovica__90-bpm-attack-loop-3-square-triangle-melody-mastered-16-bit.wav'
FILE2='135402__mystified13__trianglegran1.wav'
FILE3='151009__khoon__rhythm-1-clean-95-bpm.wav'
FILE4='427847__newagesoup__150bpm-saw-chords-future-bass.wav'

SRC = UBEScreamer
OBJ = $(SRC:.cc=.o)
EXEC = UBEScreamer

all: $(EXEC)

$(EXEC): $(SRC)
	mkdir -p $(OUTPUT)/$(SRC)/
	for f in $(FILE1) $(FILE2) $(FILE3) $(FILE4) ; do \
		echo $$f "\n" ; \
		python3 $(WAVTOSPICE) ../$$f input.spice ; \
		ngspice -ab Sim.cir ; \
		python3 $(SPICETOWAV) output $(OUTPUT)/$(SRC)/$$f  ; \
		rm input.spice output ; \
	done

clean:
	rm -rf $(OUTPUT)/*$(SRC)*

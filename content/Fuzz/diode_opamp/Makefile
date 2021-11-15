JUPYTER = jupyter
PANDOC = pandoc
JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600  pegel.ipynb --execute --to markdown --debug --no-input 
OUTPUT =  '../../../tmp/fuzz_files'
SPICETOWAV=../../../lib/python/Spice2Wav/spicetowav.py
WAVTOSPICE=../../../lib/python/Spice2Wav/wavtospice.py

SRC = diode_opamp
OBJ = $(SRC:.cc=.o)
EXEC = diode_opamp

all: $(EXEC)

$(EXEC): $(SRC)
	mkdir -p $(OUTPUT)/$(SRC)/
	python3 $(WAVTOSPICE) ../2278__jovica__90-bpm-attack-loop-3-square-triangle-melody-mastered-16-bit.wav input.spice
	ngspice -ab Sim.cir
	python3 $(SPICETOWAV) output $(OUTPUT)/$(SRC)/2278__jovica__90-bpm-attack-loop-3-square-triangle-melody-mastered-16-bit.wav
	rm input.spice output

clean:
	rm -rf $(OUTPUT)/*$(SRC)*
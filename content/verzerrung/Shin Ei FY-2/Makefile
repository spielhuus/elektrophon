NAME = ShinEiFY-2

SPICETOWAV=../../../lib/python/Spice2Wav/spicetowav.py
WAVTOSPICE=../../../lib/python/Spice2Wav/wavtospice.py

SOURCE_FILE1=151009__khoon__rhythm-1-clean-95-bpm.wav
SOURCE_FILE2=2278__jovica__90-bpm-attack-loop-3-square-triangle-melody-mastered-16-bit.wav
SOURCE_FILE3=135402__mystified13__trianglegran1.wav
SOURCE_FILE4=427847__newagesoup__150bpm-saw-chords-future-bass.wav

DEST_FILE1=build/$(NAME)_151009__khoon__rhythm-1-clean-95-bpm.wav
DEST_FILE2=build/$(NAME)_2278__jovica__90-bpm-attack-loop-3-square-triangle-melody-mastered-16-bit.wav
DEST_FILE3=build/$(NAME)_135402__mystified13__trianglegran1.wav
DEST_FILE4=build/$(NAME)_427847__newagesoup__150bpm-saw-chords-future-bass.wav

SOURCEFILES = $(SOURCE_FILE1)
DESTFILES = $(DEST_FILE1)

CIRCUITS = $(shell find . -iname '*.cir' | sed 's/ /\\ /g')

DOCS = docs

all: $(DOCS)

$(DOCS): $(DESTFILES)

$(DESTFILES): $(addprefix ../,$(SOURCEFILES)) $(CIRCUITS)
	mkdir -p build
	for f in $(SOURCEFILES) ; do \
		echo $$f "\n" ; \
		python3 $(WAVTOSPICE) ../$$f build/input.spice ; \
		ngspice -ab Sim.cir ; \
		python3 $(SPICETOWAV) build/output build/$(NAME)_$$f  ; \
	done

clean:
	rm -rf build

PROJECT = midi_notes
DATE = 2020-12-04
JUPYTER = jupyter
OUTPUT =  ../../www
SRC = $(PROJECT).ipynb
DEST = $(PROJECT).md
DOCS = docs

JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600 --execute --to markdown \
               --no-input --log-level=WARN --ExecutePreprocessor.kernel_name=python3 \
			   --FilesWriter.build_directory=build

all: $(DOCS)

$(DOCS): $(OUTPUT)/$(DEST)

$(OUTPUT)/$(DEST): $(SRC)
	$(JUPYTER) $(JUPITERFLAGS) $(SRC)
	sed -i 's/$(PROJECT)_files\//\/images\/$(PROJECT)_files\//g' build/$(PROJECT).md
	cp build/$(PROJECT).md $(OUTPUT)/_posts/$(DATE)-$(PROJECT).md
	mkdir -p $(OUTPUT)/images/
#	cp -r build/$(PROJECT)_files $(OUTPUT)/images/
#	cp $(PROJECT)_*.jpg $(OUTPUT)/images/

clean:
	rm -rf build
	rm $(OUTPUT)/_posts/$(DATE)-$(PROJECT).md
#	rm -rf $(OUTPUT)/images/$(PROJECT)_files
#	rm -rf $(OUTPUT)/images/$(PROJECT)_*.jpg

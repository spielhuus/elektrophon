PROJECT = verzerrung
DATE = 2020-12-01
JUPYTER = jupyter
OUTPUT =  ../../www
SRC = $(PROJECT).ipynb
DEST = $(PROJECT).md
DOCS = docs

UBEScreamer='UBE Screamer'
Overdrive250='Overdrive 250'
WayHugeRedLLama='Way Huge Red LLama'
ShinEy='Shin Ei FY-2'

JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600 --execute --to markdown \
               --no-input --log-level=WARN --ExecutePreprocessor.kernel_name=python3 \
			   --FilesWriter.build_directory=build

all: $(DOCS)

$(DOCS): $(OUTPUT)/$(DEST)
	$(MAKE) -C $(Overdrive250)
	$(MAKE) -C $(ShinEy)
	$(MAKE) -C $(WayHugeRedLLama)
	$(MAKE) -C $(UBEScreamer)

$(OUTPUT)/$(DEST): $(SRC)

	$(JUPYTER) $(JUPITERFLAGS) $(SRC)
	sed -r -i 's/\!\[(.*)\]\((.*)\)/\!\[\1\]\(\/assets\/\2\)/g' build/$(PROJECT).md
	cp build/$(PROJECT).md $(OUTPUT)/_posts/$(DATE)-$(PROJECT).md
	mkdir -p $(OUTPUT)/assets/
	cp -r build/$(PROJECT)_files $(OUTPUT)/assets/
	mkdir -p $(OUTPUT)/assets/$(PROJECT)_files
	cp *_schema.svg $(OUTPUT)/assets/$(PROJECT)_files
	cp *.jpg $(OUTPUT)/assets/$(PROJECT)_files

clean:
	rm -rf build
	rm -f $(OUTPUT)/_posts/$(DATE)-$(PROJECT).md
	rm -rf $(OUTPUT)/assets/$(PROJECT)_files

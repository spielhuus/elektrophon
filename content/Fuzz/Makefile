PROJECT = fuzz
DATE = 2020-12-20
JUPYTER = jupyter
OUTPUT =  ../../site
SRC = $(PROJECT).ipynb
DEST = $(PROJECT).md
DOCS = docs

UBEScreamer='UBE Screamer'
Overdrive250='Overdrive 250'
WayHugeRedLLama='Way Huge Red LLama'
ShinEy='Shin Ei FY-2'
diode_opamp='diode_opamp'

JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600 --execute --to markdown \
               --no-input --log-level=WARN --ExecutePreprocessor.kernel_name=python3 \
			   --FilesWriter.build_directory=build
all: $(DOCS)

$(DOCS): $(OUTPUT)/$(DEST)

$(OUTPUT)/$(DEST): $(SRC)
	$(MAKE) -C $(Overdrive250)
	$(MAKE) -C $(UBEScreamer)
	$(MAKE) -C $(WayHugeRedLLama)
	$(MAKE) -C $(ShinEy)
#	$(MAKE) -C $(diode_opamp)

	$(JUPYTER) $(JUPITERFLAGS) $(SRC)
	sed -i 's/$(PROJECT)_files\//\/images\/$(PROJECT)_files\//g' build/$(PROJECT).md
	cp build/$(PROJECT).md $(OUTPUT)/_posts/$(DATE)-$(PROJECT).md
	mkdir -p $(OUTPUT)/images/
	cp -r build/$(PROJECT)_files $(OUTPUT)/images/
	cp -r shin-ei-fy-2-red.jpg $(OUTPUT)/images/
#	cp $(PROJECT)_*.jpg $(OUTPUT)/images/

clean:
	rm -rf build
	rm $(OUTPUT)/_posts/$(DATE)-$(PROJECT).md
	rm -rf $(OUTPUT)/images/$(PROJECT)_files
	rm $(OUTPUT)/images/shin-ei-fy-2-red.jpg

#	rm -rf $(OUTPUT)/images/$(PROJECT)_*.jpg

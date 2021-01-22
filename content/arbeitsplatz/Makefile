PROJECT = arbeitsplatz
DATE = 2020-12-01

JUPYTER = jupyter
OUTPUT =  ../../www
SRC = $(PROJECT).ipynb
FRONT_MATTER = $(PROJECT).yaml
DOCS = docs

JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600 --execute --to markdown \
               --no-input --log-level=CRITICAL --ExecutePreprocessor.kernel_name=python3 \
			   --FilesWriter.build_directory=build

ARTICLE_TARGETS = $(OUTPUT)/_posts/$(DATE)-$(PROJECT).md
DEST = build/$(PROJECT).md
IMAGES = $(wildcard *.svg) $(wildcard *.jpg) $(wildcard *.png)
IMAGE_TARGETS = $(addprefix $(OUTPUT)/assets/$(PROJECT)_files/,$(IMAGES))

all: $(DOCS) deploy

deploy: $(DOCS) 
	mkdir -p $(OUTPUT)/assets/$(PROJECT)_files
	path=build/$(PROJECT)_files
 	files=$(wildcard $(path)/.*)

 	echo "FILES: " $(files)
 	ifeq ($(strip $(files)),)
 		cp build/$(PROJECT)_files/* $(OUTPUT)/assets/$(PROJECT)_files/
 	endif

 	ifeq ($(strip $(IMAGES)),)
 	cp $(IMAGES) $(OUTPUT)/assets/$(PROJECT)_files/
 	endif

	cp $(FRONT_MATTER) $(ARTICLE_TARGETS)
	echo "\n\n" >> $(ARTICLE_TARGETS)
	cat $(DEST) >> $(ARTICLE_TARGETS)

clean: 
	rm -rf build
	rm -rf $(OUTPUT)/assets/$(PROJECT)_files/
	rm -f $(ARTICLE_TARGETS)

$(DOCS): $(DEST)

$(DEST): $(CIRCUITS) $(SRC)
	mkdir -p build/$(PROJECT)_files/
	$(JUPYTER) $(JUPITERFLAGS) $(SRC)
	sed -r -i 's/\!\[(.*)\]\((.*)\)/\!\[\1\]\(\/assets\/\2\)/g' $(DEST)

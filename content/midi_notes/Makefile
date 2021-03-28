PROJECT = midi_notes
DATE = 2021-02-22

JUPYTER = jupyter
OUTPUT =  ../../www
SRC = $(PROJECT).ipynb
FRONT_MATTER = $(PROJECT).yaml
DOCS = docs

JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600 --execute --to markdown \
               --no-input --log-level=CRITICAL --ExecutePreprocessor.kernel_name=python3 \
			   --FilesWriter.build_directory=build \
			   --TemplateExporter.extra_template_basedirs=../../lib/templates \
			   --template=elektrophon

ARTICLE_TARGETS = $(OUTPUT)/_posts/$(DATE)-$(PROJECT).md
DEST = build/$(PROJECT).md
IMAGES = $(wildcard *.svg) $(wildcard *.jpg) $(wildcard *.png)
IMAGE_TARGETS = $(addprefix $(OUTPUT)/assets/$(PROJECT)_files/,$(IMAGES))

all: $(DOCS) deploy

deploy: $(DOCS) 
	mkdir -p $(OUTPUT)/assets/$(PROJECT)_files/

	#copy the jupyter project files
	if [ -d "build/$(PROJECT)_files" ]; then \
	cp build/$(PROJECT)_files/* $(OUTPUT)/assets/$(PROJECT)_files/; \
	fi

	#copy images
	$(foreach img, $(IMAGES), \
	convert $(img) -resize 800 $(addprefix $(OUTPUT)/assets/$(PROJECT)_files/,$(img)) &&\
	convert $(img) -resize 200 $(addprefix $(OUTPUT)/assets/$(PROJECT)_files/tmb_,$(img)) ;)

	cp $(FRONT_MATTER) $(ARTICLE_TARGETS)
	echo "\n\n" >> $(ARTICLE_TARGETS)
	cat $(DEST) >> $(ARTICLE_TARGETS)
	
clean: 
	rm -rf build
	rm -rf $(OUTPUT)/assets/$(PROJECT)_files/
	rm -f $(ARTICLE_TARGETS)

$(DOCS): $(DEST)

$(DEST): $(CIRCUITS) $(SRC)
	$(JUPYTER) $(JUPITERFLAGS) $(SRC)
	#sed -r -i 's/\!\[(.*)\]\((.*)\)/\!\[\1\]\(\/assets\/\2\)/g' $(DEST)

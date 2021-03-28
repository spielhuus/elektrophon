PROJECT = vermarkung
DATE = 2020-12-01

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
IMAGES = $(wildcard *.svg) $(wildcard *.jpg) $(wildcard *.png) $(wildcard *.pdf) $(wildcard *.scad)
IMAGE_TARGETS = $(addprefix $(OUTPUT)/assets/$(PROJECT)_files/,$(IMAGES))

all: $(DOCS) deploy

deploy: $(DOCS) 
	mkdir -p $(OUTPUT)/assets/$(PROJECT)_files
	cp build/$(PROJECT)_files/* $(OUTPUT)/assets/$(PROJECT)_files/
	cp $(IMAGES) $(OUTPUT)/assets/$(PROJECT)_files/
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

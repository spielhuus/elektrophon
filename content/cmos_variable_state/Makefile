PROJECT = cmos_variable_state
DATE = 2020-12-14
TARGET = _drafts

JUPYTER = jupyter
OUTPUT =  ../../www
SRC = $(PROJECT).ipynb
FRONT_MATTER = $(PROJECT).yaml

JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600 --execute --to markdown \
               --no-input --log-level=CRITICAL --ExecutePreprocessor.kernel_name=python3 \
			   --FilesWriter.build_directory=build \
			   --TemplateExporter.extra_template_basedirs=../../lib/templates \
			   --template=elektrophon

ARTICLE_TARGETS = $(OUTPUT)/$(TARGET)/$(DATE)-$(PROJECT).md
DEST = build/$(PROJECT).md
DEST_IMAGES = $(notdir $(wildcard build/$(PROJECT)_files/*.svg))
IMAGES = $(wildcard *.svg) $(wildcard *.jpg) $(wildcard *.png)
IMAGE_TARGETS = $(addprefix $(OUTPUT)/assets/$(PROJECT)_files/,$(IMAGES))

all: $(DEST)

deploy: $(IMAGE_TARGETS) $(ARTICLE_TARGETS) $(addprefix $(OUTPUT)/assets/$(PROJECT)_files/,$(DEST_IMAGES))

$(IMAGE_TARGETS) : $(IMAGES)
	mkdir -p $(OUTPUT)/assets/$(PROJECT)_files/
	$(foreach img, $(IMAGES), \
	cp $(img) $(addprefix $(OUTPUT)/assets/$(PROJECT)_files/,$(img)) ;)

$(ARTICLE_TARGETS) : $(FRONT_MATTER) $(DEST) 
	mkdir -p $(OUTPUT)/assets/$(PROJECT)_files/
	cp $(FRONT_MATTER) $(ARTICLE_TARGETS)
	echo "\n\n" >> $(ARTICLE_TARGETS)
	cat $(DEST) >> $(ARTICLE_TARGETS)

$(addprefix $(OUTPUT)/assets/$(PROJECT)_files/,$(DEST_IMAGES)) :
	if [ -d "build/$(PROJECT)_files" ]; then \
		cp build/$(PROJECT)_files/* $(OUTPUT)/assets/$(PROJECT)_files/; \
	fi

clean: 
	rm -rf build
	rm -rf $(OUTPUT)/assets/$(PROJECT)_files/
	rm -f $(ARTICLE_TARGETS)
	rm -f $(IMAGE_TARGETS)

$(DEST): $(CIRCUITS) $(SRC)
	$(JUPYTER) $(JUPITERFLAGS) $(SRC)

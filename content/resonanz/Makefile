PROJECT = resonanz
DATE = 2021-01-22
PCB_PROJECTS = main mount panel

JUPYTER = jupyter
OUTPUT =  ../../www
SRC = $(PROJECT).ipynb
FRONT_MATTER = $(PROJECT).yaml
DOCS = docs

PCB_FILES = $(foreach prj, $(PCB_PROJECTS), $(prj)/$(prj).kicad_pcb $(prj)/$(prj).sch )
KIBOT_FILES = $(foreach prj, $(PCB_PROJECTS), build/kibot/$(prj)/$(prj)-bom.csv build/kibot/$(prj)/$(prj)-schematic.pdf build/kibot/$(prj)/$(prj)-pcb.pdf )
KIBOT_REPORT = build/kibot_dat.json
KIBOT_REPORT_TARGET = $(OUTPUT)/_data/$(PROJECT)_kibot_data.json
PCB_TARGETS = $(foreach prj, $(PCB_PROJECTS), $(OUTPUT)/assets/$(PROJECT)_files/$(prj)-bom.csv $(OUTPUT)/assets/$(PROJECT)_files/$(prj)-schematic.pdf $(OUTPUT)/assets/$(PROJECT)_files/$(prj)/$(prj)-pcb.pdf )
PCB_BOM_TARGETS = $(foreach prj, $(PCB_PROJECTS), $(OUTPUT)/_data/$(PROJECT)-$(prj)-bom.csv )

JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600 --execute --to markdown \
               --no-input --log-level=CRITICAL --ExecutePreprocessor.kernel_name=python3 \
			   --FilesWriter.build_directory=build \
			   --TemplateExporter.extra_template_basedirs=../../lib/templates \
			   --template=elektrophon

ARTICLE_TARGETS = $(OUTPUT)/_posts/$(DATE)-$(PROJECT).md
DEST = build/$(PROJECT).md
CIRCUITS = $(shell find . -iname '*.cir' | sed 's/ /\\ /g')
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

	$(foreach prj, $(PCB_PROJECTS), \
		cp build/kibot/$(prj)/$(prj)-schematic.pdf $(OUTPUT)/assets/$(PROJECT)_files/$(prj)-schematic.pdf &&\
		cp build/kibot/$(prj)/$(prj)-pcb.pdf $(OUTPUT)/assets/$(PROJECT)_files/$(prj)-pcb.pdf ;)
	mkdir -p $(OUTPUT)/_data
	$(foreach prj, $(PCB_PROJECTS), \
		cp build/kibot/$(prj)/$(prj)-bom.csv $(OUTPUT)/_data/$(PROJECT)-$(prj)-bom.csv;)
	cp $(KIBOT_REPORT) $(KIBOT_REPORT_TARGET)
	cp $(FRONT_MATTER) $(ARTICLE_TARGETS)
	echo "\n\n" >> $(ARTICLE_TARGETS)
	cat $(DEST) >> $(ARTICLE_TARGETS)

clean: 
	rm -rf build
	rm -rf $(OUTPUT)/assets/$(PROJECT)_files/
	rm -f $(PCB_BOM_TARGETS)
	rm -f $(KIBOT_REPORT_TARGET)
	rm -f $(ARTICLE_TARGETS)
	$(foreach prj, $(PCB_PROJECTS), \
		rm -f $(prj)/$(prj).xml;)

$(DOCS): $(KIBOT_REPORT) $(DEST)

$(DEST): $(CIRCUITS) $(SRC)
	$(JUPYTER) $(JUPITERFLAGS) $(SRC)
	sed -r -i 's/\!\[(.*)\]\((.*)\)/\!\[\1\]\(\/assets\/\2\)/g' $(DEST)

#run kibot and create data
$(KIBOT_FILES): $(PCB_FILES)
	$(foreach prj, $(PCB_PROJECTS), \
		kibot -c ../../kibot.yaml -b $(prj)/$(prj).kicad_pcb \
			-e $(prj)/$(prj).sch -d build/kibot/$(prj) && \
		sed -r -i '1 s/ /_/g' build/kibot/$(prj)/$(prj)-bom.csv;)

$(KIBOT_REPORT): $(KIBOT_FILES)
	python3 ../../lib/python/kibot_parser/kibot_parser.py \
		--kibot build/kibot/ --out $(KIBOT_REPORT) $(PCB_PROJECTS)

PROJECT = polivoks
DATE = 2020-12-12
PCB_PROJECTS = main mount panel
TARGET = _posts

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

PCB_FILES = $(foreach prj, $(PCB_PROJECTS), $(prj)/$(prj).kicad_pcb $(prj)/$(prj).sch)
KIBOT_BOM = $(foreach prj, $(PCB_PROJECTS), build/kibot/$(prj)/$(prj).csv)
KIBOT_SCHEMATIC = $(foreach prj, $(PCB_PROJECTS), build/kibot/$(prj)/$(prj)-schematic.pdf)
KIBOT_REPORTS = $(foreach prj, $(PCB_PROJECTS), build/kibot/$(prj)/$(prj)-erc.txt build/kibot/$(prj)/$(prj)-drc.txt)
KIBOT_GERBERS = $(foreach prj, $(PCB_PROJECTS), build/kibot/$(prj)/JLCPCB/$(prj)-JLCPCB.zip)
KIBOT_PCBS = $(foreach prj, $(PCB_PROJECTS), build/kibot/$(prj)/$(prj)-pcb.pdf)
KIBOT_DRAWING = $(foreach prj, $(PCB_PROJECTS), build/kibot/$(prj)/$(prj)-top.png)
KIBOT_REPORT = build/kibot_dat.json
CIRCUITS = $(shell find . -iname '*.cir' | sed 's/ /\\ /g')

DEST_REPORT = $(OUTPUT)/_data/$(PROJECT)_kibot_data.json
DEST_BOM = $(foreach prj, $(PCB_PROJECTS), $(OUTPUT)/_data/$(PROJECT)-$(prj)-bom.csv)
DEST_GERBERS = $(foreach prj, $(PCB_PROJECTS), $(OUTPUT)/assets/$(PROJECT)_files/$(prj)-JLCPCB.zip)
DEST_PCBS = $(foreach prj, $(PCB_PROJECTS), $(OUTPUT)/assets/$(PROJECT)_files/$(prj)-pcb.pdf)
DEST_SCHEMATIC = $(foreach prj, $(PCB_PROJECTS), $(OUTPUT)/assets/$(PROJECT)_files/$(prj)-main-schematic.pdf)
DEST_DRAWING = $(foreach prj, $(PCB_PROJECTS), $(OUTPUT)/assets/$(PROJECT)_files/$(prj)-top.png)

all: $(KIBOT_REPORT) $(KIBOT_PCBS) $(KIBOT_GERBERS) $(KIBOT_BOM) $(KIBOT_SCHEMATIC) $(KIBOT_DRAWING) $(DEST)
deploy: $(IMAGE_TARGETS) $(ARTICLE_TARGETS) $(addprefix $(OUTPUT)/assets/$(PROJECT)_files/,$(DEST_IMAGES)) $(DEST_REPORT) $(DEST_GERBERS) $(DEST_PCBS) $(DEST_SCHEMATIC) $(DEST_BOM) $(DEST_DRAWING)

$(DEST_REPORT):
	cp $(KIBOT_REPORT) $(DEST_REPORT)

$(DEST_GERBERS):
	cp $(KIBOT_GERBERS) $(OUTPUT)/assets/$(PROJECT)_files/

$(DEST_PCBS):
	cp $(KIBOT_PCBS) $(OUTPUT)/assets/$(PROJECT)_files/

$(DEST_SCHEMATIC):
	cp $(KIBOT_SCHEMATIC) $(OUTPUT)/assets/$(PROJECT)_files/

$(DEST_BOM):
	$(foreach prj, $(PCB_PROJECTS), \
		cp build/kibot/$(prj)/$(prj)-bom.csv $(OUTPUT)/_data/$(PROJECT)-$(prj)-bom.csv; )

$(DEST_DRAWING):
	cp $(KIBOT_DRAWING) $(OUTPUT)/assets/$(PROJECT)_files/

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

$(DEST): $(CIRCUITS) $(SRC)
	$(JUPYTER) $(JUPITERFLAGS) $(SRC)

#run kibot and create data
$(KIBOT_PCBS) $(KIBOT_GERBERS) $(KIBOT_BOM) $(KIBOT_REPORTS) $(KIBOT_SCHEMATIC) $(KIBOT_DRAWING) : $(PCB_FILES) 
	$(foreach prj, $(PCB_PROJECTS), \
		kibot -c ../../kibot.yaml -b $(prj)/$(prj).kicad_pcb \
			-e $(prj)/$(prj).sch -d build/kibot/$(prj) && \
		sed -r -i '1 s/ /_/g' build/kibot/$(prj)/$(prj)-bom.csv && \
		convert build/kibot/$(prj)/$(prj)-top.png -rotate 90 build/kibot/$(prj)/$(prj)-top-rotate.png && \
		mv build/kibot/$(prj)/$(prj)-top-rotate.png build/kibot/$(prj)/$(prj)-top.png;)

$(KIBOT_REPORT): $(KIBOT_REPORTS)
	python3 ../../lib/python/kibot_parser/kibot_parser.py \
		--kibot build/kibot/ --out $(KIBOT_REPORT) $(PCB_PROJECTS)

clean: 
	rm -rf build
	rm -rf $(OUTPUT)/assets/$(PROJECT)_files/
	rm -f $(ARTICLE_TARGETS)
	rm -f $(IMAGE_TARGETS)
	rm -f $(DEST_REPORT)
	rm -f $(DEST_GERBERS)
	rm -f $(DEST_SCHEMATIC)
	echo $(DEST_BOM)
	rm -f $(DEST_BOM)

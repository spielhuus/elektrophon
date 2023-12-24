VENV_ACTIVATE=. ../../.venv/bin/activate

MARKDOWN_FILE = index.rmd
MARKDOWN_TARGET = ../../content/post/$(NAME)/index.md
MARKDOWN_TARGET_PATH = ../../content/post/$(NAME)
PYTHON_SRC = __init__.py
PYTHON_TARGET = $(foreach dir,$(SUBMODULES),$(dir)/$(dir).kicad_sch)

debug ?=
ifdef debug
  DEBUG=ELEKTRON_DEBUG=true
endif

BUILD_DEPS ?=
ifdef debug
 	BUILD_DEPS=true
else
 	BUILD_DEPS=false
endif

.PHONY: all help test doc clean
all: $(MARKDOWN_TARGET)

$(MARKDOWN_TARGET): $(MARKDOWN_FILE) $(PYTHON_TARGET)
ifeq ($(BUILD_DEPS),true)
	$(VENV_ACTIVATE) &&	$(DEBUG) MPLBACKEND=module://elektron ELEKTRON_SPICE=lib/spice ELEKTRON_SYMBOLS=/usr/share/kicad/symbols:../../lib/symbols elektron convert --input $< --output $@
	echo $(IMAGES)
else
	$(DEBUG) MPLBACKEND=module://elektron RUST_LOG=info elektron convert --input $< --output $@
endif

$(PYTHON_TARGET): $(PYTHON_SRC)
ifeq ($(BUILD_DEPS),true)
	$(VENV_ACTIVATE) &&	python $< build
else
	python $< build
endif
	
clean:
	rm -rf $(MARKDOWN_TARGET_PATH)

distclean: clean
	rm -rf __pycache__
	$(foreach var,$(SUBMODULES), rm -rf $(var)/$(var)-backups;)
	$(foreach var,$(SUBMODULES), rm -rf $(var)/$(var).kicad_prl;)
	$(foreach var,$(SUBMODULES), rm -rf $(var)/fp-info-cache;)

$(V).SILENT:

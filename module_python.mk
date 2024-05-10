VENV_ACTIVATE=. ../../.venv/bin/activate

MARKDOWN_FILE = index.rmd
MARKDOWN_TARGET = ../../content/post/$(NAME)/index.md
MARKDOWN_TARGET_PATH = ../../content/post/$(NAME)
PYTHON_SRC = __init__.py
PYTHON_TARGET = $(foreach dir,$(SUBMODULES),$(dir)/$(dir).kicad_sch)

ifdef RUST_LOG
RUST_LEVEL := $(RUST_LOG)
else
RUST_LEVEL := info
endif

ifdef ELEKTRON_DEBUG
ELEKTRON_DEBUG := $(ELEKTRON_DEBUG)
else
ELEKTRON_DEBUG := false
endif

.PHONY: all help test doc clean

all: $(MARKDOWN_TARGET)

$(MARKDOWN_TARGET): $(MARKDOWN_FILE) $(PYTHON_TARGET)
	ELEKTRON_DEBUG=$(ELEKTRON_DEBUG) RUST_LOG=$(RUST_LEVEL) MPLBACKEND=module://elektron elektron convert --input $< --output $@

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

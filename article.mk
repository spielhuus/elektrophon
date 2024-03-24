VENV_ACTIVATE=. ../../.venv/bin/activate

MARKDOWN_FILE = index.rmd
MARKDOWN_TARGET = ../../content/post/$(NAME)/index.md
MARKDOWN_TARGET_PATH = ../../content/post/$(NAME)

debug ?=
ifdef debug
  DEBUG=ELEKTRON_DEBUG=true
endif

BUILD_DEPS ?=
ifdef debug
 	BUILD_DEPS=true
	RUST_LEVEL=debug
else
 	BUILD_DEPS=false
	RUST_LEVEL=info
endif

.PHONY: all help test doc clean
all: $(MARKDOWN_TARGET)

$(MARKDOWN_TARGET): $(MARKDOWN_FILE)
ifeq ($(BUILD_DEPS),true)
	$(VENV_ACTIVATE) && $(DEBUG) RUST_LOG=$(RUST_LEVEL) MPLBACKEND=module://elektron elektron convert --input $< --output $@
else
	$(DEBUG) MPLBACKEND=module://elektron ELEKTRON_SPICE=lib/spice ELEKTRON_SYMBOLS=/usr/share/kicad/symbols:lib/symbols elektron convert --input $< --output $@
endif

clean:
	rm -rf $(MARKDOWN_TARGET_PATH)

.PHONY distclean: clean

$(V).SILENT:

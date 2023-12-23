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
else
 	BUILD_DEPS=false
endif

.PHONY: all help test doc clean
all: $(MARKDOWN_TARGET)

$(MARKDOWN_TARGET): $(MARKDOWN_FILE)
ifeq ($(BUILD_DEPS),true)
	$(VENV_ACTIVATE) &&	$(DEBUG) MPLBACKEND=module://elektron ELEKTRON_SPICE=lib/spice ELEKTRON_SYMBOLS=/usr/share/kicad/symbols:../../lib/symbols elektron convert --input $< --output $@
else
	$(DEBUG) MPLBACKEND=module://elektron RUST_LOG=info elektron convert --input $< --output $@
endif

clean:
	rm -rf $(MARKDOWN_TARGET_PATH)

distclean: clean
	$(foreach var,$(SUBMODULES), rm -rf $(var)/$(var)-backups;)
	$(foreach var,$(SUBMODULES), rm -rf $(var)/$(var).kicad_prl;)
	$(foreach var,$(SUBMODULES), rm -rf $(var)/fp-info-cache;)
	$(foreach var,$(SUBMODULES), rm -rf $(var)/sym-lib-table;)

$(V).SILENT:

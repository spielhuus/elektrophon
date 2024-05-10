MARKDOWN_FILE = index.rmd
MARKDOWN_TARGET = ../../content/post/$(NAME)/index.md
MARKDOWN_TARGET_PATH = ../../content/post/$(NAME)

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

$(MARKDOWN_TARGET): $(MARKDOWN_FILE)
	ELEKTRON_DEBUG=$(ELEKTRON_DEBUG) RUST_LOG=$(RUST_LEVEL) MPLBACKEND=module://elektron elektron convert --input $< --output $@

clean:
	rm -rf $(MARKDOWN_TARGET_PATH)

distclean: clean
	$(foreach var,$(SUBMODULES), rm -rf $(var)/$(var)-backups;)
	$(foreach var,$(SUBMODULES), rm -rf $(var)/$(var).kicad_prl;)
	$(foreach var,$(SUBMODULES), rm -rf $(var)/fp-info-cache;)
	$(foreach var,$(SUBMODULES), rm -rf $(var)/sym-lib-table;)

$(V).SILENT:

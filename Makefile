VENV = .venv

GNUMAKEFLAGS=--no-print-directory

ifeq ($(BUILD_DEPS),true)
PYTHON = $(VENV)/bin/python3
PIP = $(VENV)/bin/pip
else
PYTHON = python3
PIP = pip
endif

RUST_DEBUG=info
debug ?=
ifdef debug
  DEBUG=ELEKTRON_DEBUG=true
  RUST_DEBUG=debug
endif

MAKEFILES=$(shell find src -type f -name "Makefile" -exec dirname "{}" \; | sed 's/ /\\ /g')
MARKDOWN_FILES=$(shell find src -type f -name "*.md" | sed 's/ /\\ /g')
PDF_FILES=$(shell find src -type f -name "*.pdf" | sed 's/ /\\ /g')

LIB_DAISY=lib/libDaisy
LIB_DAISY_SP=lib/DaisySP

.PHONY: all build clean distclean

all: build

build:
ifeq ($(BUILD_DEPS),true)
build: $(VENV)/bin/activate LibDaisy DaisySP $(MAKEFILES) static_files content/elektrophon.html
else
build: LibDaisy DaisySP $(MAKEFILES) static_files content/elektrophon.html
endif

static_files: 
	$(foreach F, $(MARKDOWN_FILES),             \
		install $F -D content/post/$(F:src/%=%); \
	)        
	$(foreach F, $(PDF_FILES),             \
		install $F -D content/post/$(F:src/%=%); \
	)        

$(VENV)/bin/activate: requirements.txt
	python3 -m venv $(VENV)
	$(PYTHON) -m pip install --upgrade pip
	$(PIP) install -r requirements.txt
	ln -s /usr/lib/python3.11/site-packages/pcbnew.py .venv/lib/python3.11/site-packages/pcbnew.py
	ln -s /usr/lib/python3.11/site-packages/_pcbnew.so .venv/lib/python3.11/site-packages/_pcbnew.so

DaisySP:
	make -C $(LIB_DAISY);

LibDaisy:
	make -C $(LIB_DAISY_SP);

.PHONY: $(MAKEFILES)
$(MAKEFILES):
	make BUILD_DEPS=$(BUILD_DEPS) -C $@

site: build
	hugo

serve: build
	hugo serve -D

clean:
	$(foreach var,$(MAKEFILES), make -C $(var) clean;)
	rm -rf static/pdoc
	rm -rf public
	rm -rf resources
	make -C $(LIB_DAISY_SP) clean;
	make -C $(LIB_DAISY) clean;
	rm -rf content/post
	rm -f content/elektrophon.html

distclean: clean
	$(foreach var,$(MAKEFILES), make -C $(var) distclean;)
	rm -rf $(VENV)

content/elektrophon.html: lib/python/elektrophon/__init__.py lib/python/makedoc/__main__.py
	mkdir -p static/pdoc
	python lib/python/makedoc
	PYTHONPATH=:./lib/python python -m pdoc --no-search -t lib/pdoc -o content elektrophon 
	rm content/index.html

$(V).SILENT:

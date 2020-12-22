PROJECT = karplus_strong
JUPYTER = jupyter
PANDOC = pandoc
OUTPUT =  ../../tmp
SRC = $(PROJECT).ipynb
DEST = $(PROJECT).html
MD = $(PROJECT).md
DOCS = docs

JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600 --execute --to markdown --no-input --log-level=WARN --ExecutePreprocessor.kernel_name=python3 --output-dir=$(OUTPUT) $(SRC)
PANDOCFLAGS = --mathml -fmarkdown-implicit_figures --extract-media=files

all: $(DOCS)

$(DOCS): $(OUTPUT)/$(DEST)

$(OUTPUT)/$(DEST): $(SRC)
	$(JUPYTER) $(JUPITERFLAGS) $(SRC)
	cd $(OUTPUT) ; $(PANDOC) $(PANDOCFLAGS) -s $(MD) -o $(DEST)
	rm -rf $(OUTPUT)/$(MD) $(OUTPUT)/$(PROJECT)_files

clean:
	rm -rf $(OUTPUT)/$(DEST)

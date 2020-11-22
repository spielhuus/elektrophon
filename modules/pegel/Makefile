JUPYTER = jupyter
PANDOC = pandoc
JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600  pegel.ipynb --execute --to markdown --debug --no-input 
OUTPUT =  '../../tmp'

SRC = pegel
OBJ = $(SRC:.cc=.o)
EXEC = pegel

all: $(EXEC)

$(EXEC): $(SRC)
	$(JUPYTER) $(JUPITERFLAGS) --output-dir=$(OUTPUT) $(SRC).ipynb
	$(PANDOC) --mathml --extract-media=$(OUTPUT)/files -s $(OUTPUT)/$(SRC).md -o $(OUTPUT)/$(SRC).html

clean:
	rm -rf $(OUTPUT)/*$(SRC)*

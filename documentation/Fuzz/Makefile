JUPYTER = jupyter
PANDOC = pandoc
JUPITERFLAGS = nbconvert --ExecutePreprocessor.timeout=600  pegel.ipynb --execute --to markdown --debug --no-input 
OUTPUT =  ../../tmp
UBEScreamer='UBE Screamer'
Overdrive250='Overdrive 250'
WayHugeRedLLama='Way Huge Red LLama'

SRC = fuzz
OBJ = $(SRC:.cc=.o)
EXEC = fuzz

all: $(EXEC)

$(EXEC): $(SRC)
#	$(MAKE) -C $(Overdrive250)
#	$(MAKE) -C $(UBEScreamer)
#	$(MAKE) -C $(WayHugeRedLLama)
	$(JUPYTER) $(JUPITERFLAGS) --output-dir=$(OUTPUT) $(SRC).ipynb
	$(PANDOC) --mathml -s $(OUTPUT)/$(SRC).md -o $(OUTPUT)/$(SRC).html --extract-media=$(OUTPUT)/files --metadata pagetitle="fuzz comparison"

clean:
	rm -rf $(OUTPUT)/*$(SRC)*

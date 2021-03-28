# Register all subdirectories in the project's root directory.
SUBDIRS := $(wildcard */.)

all: $(SUBDIRS) FORCE
	convert elektrophon.jpg -resize 1024 ../www/assets/elektrophon.jpg
	convert elektrophon-logo.jpg -resize 1024 ../www/assets/elektrophon-logo.jpg
	convert articles.jpg -resize 1024 ../www/assets/articles.jpg
	convert modules.jpg -resize 1024 ../www/assets/modules.jpg
	convert modules2.jpg -resize 1024 ../www/assets/modules2.jpg
	convert main.jpg -resize 1024 ../www/assets/main.jpg
	convert cmos.jpg -resize 1024 ../www/assets/cmos.jpg
	convert filter.jpg -resize 1024 ../www/assets/filter.jpg
	convert oscillator.jpg -resize 1024 ../www/assets/oscillator.jpg
	convert mixer.jpg -resize 1024 ../www/assets/mixer.jpg
	convert amplifier.jpg -resize 1024 ../www/assets/amplifier.jpg
	convert klangsynthese.jpg -resize 1024 ../www/assets/klangsynthese.jpg
	convert workbench.jpg -resize 1024 ../www/assets/workbench.jpg
	convert lunetta_hero.jpg -resize 1024 ../www/assets/lunetta_hero.jpg

clean: $(SUBDIRS) FORCE
	rm -f ../www/assets/elektrophon.jpg
	rm -f ../www/assets/elektrophon-logo.jpg
	rm -f ../www/assets/articles.jpg
	rm -f ../www/assets/modules.jpg
	rm -f ../www/assets/modules2.jpg
	rm -f ../www/assets/main.jpg
	rm -f ../www/assets/cmos.jpg
	rm -f ../www/assets/filter.jpg
	rm -f ../www/assets/oscillator.jpg
	rm -f ../www/assets/mixer.jpg
	rm -f ../www/assets/amplifier.jpg
	rm -f ../www/assets/klangsynthese.jpg
	rm -f ../www/assets/workbench.jpg
	rm -f ../www/assets/lunetta_hero.jpg

$(SUBDIRS): FORCE
	$(MAKE) -C $@ $(MAKECMDGOALS)

# Force targets.
FORCE:


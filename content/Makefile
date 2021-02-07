#SUBDIRS = arbeitsplat pegel

# Register all subdirectories in the project's root directory.
SUBDIRS := $(wildcard */.)

all: $(SUBDIRS) FORCE
	convert elektrophon-logo.jpg -resize 1024 ../www/assets/elektrophon-logo.jpg
	convert elektrophon.jpg -resize 1024 ../www/assets/elektrophon.jpg
	convert construction.jpg -resize 1024 ../www/assets/construction.jpg
	convert notebook.jpg -resize 1024 ../www/assets/notebook.jpg
	convert modules.jpg -resize 1024 ../www/assets/modules.jpg
	convert radio_hat.jpg -resize 1024 ../www/assets/radio_hat.jpg

clean: $(SUBDIRS) FORCE
	rm -f ../www/assets/elektrophon-logo.jpg
	rm -f ../www/assets/elektrophon.jpg
	rm -f ../www/assets/construction.jpg
	rm -f ../www/assets/notebook.jpg
	rm -f ../www/assets/modules.jpg
	rm -f ../www/assets/radio_hat.jpg

$(SUBDIRS): FORCE
	$(MAKE) -C $@ $(MAKECMDGOALS)

# Force targets.
FORCE:


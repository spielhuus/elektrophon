# Register all subdirectories in the project's root directory.
SUBDIRS := $(wildcard */.)

OUTPUT =  ../www
IMAGES = $(wildcard *.svg) $(wildcard *.jpg) $(wildcard *.png)
IMAGE_TARGETS = $(addprefix $(OUTPUT)/assets/,$(IMAGES))

all: $(SUBDIRS) FORCE

deploy: $(SUBDIRS) $(IMAGE_TARGETS) FORCE

clean: $(SUBDIRS) FORCE
	rm -f $(IMAGE_TARGETS)

$(IMAGE_TARGETS) :
	cp $(IMAGES) $(OUTPUT)/assets/

$(SUBDIRS): FORCE
	$(MAKE) -C $@ $(MAKECMDGOALS)

# Force targets.
FORCE:

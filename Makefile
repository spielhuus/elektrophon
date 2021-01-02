SUBDIRS = content documentation modules

# Register all subdirectories in the project's root directory.
#SUBDIRS := $(wildcard */.)

all clean: $(SUBDIRS) FORCE

$(SUBDIRS): FORCE
	$(MAKE) -C $@ $(MAKECMDGOALS)

# Force targets.
FORCE:


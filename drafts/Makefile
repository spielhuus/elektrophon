# Register all subdirectories in the project's root directory.
#SUBDIRS := $(wildcard */.)
SUBDIRS = arp
all clean: $(SUBDIRS) FORCE

$(SUBDIRS): FORCE
	$(MAKE) -C $@ $(MAKECMDGOALS)

# Force targets.
FORCE:


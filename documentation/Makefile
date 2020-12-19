SUBDIRS = midi_notes karplus_strong

# Register all subdirectories in the project's root directory.
#SUBDIRS := $(wildcard */.)

all clean: $(SUBDIRS) FORCE

$(SUBDIRS): FORCE
	$(MAKE) -C $@ $(MAKECMDGOALS)

# Force targets.
FORCE:


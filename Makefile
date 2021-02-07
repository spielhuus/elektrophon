SUBDIRS = content drafts

all clean: $(SUBDIRS) FORCE

$(SUBDIRS): FORCE
	mkdir -p www/_site
	mkdir -p www/_posts		
	mkdir -p www/_drafts
	$(MAKE) -C $@ $(MAKECMDGOALS)

# Force targets.
FORCE:


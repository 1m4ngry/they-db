# Master Makefile for the man_db package.
#
# Copyright (C) 1994, 1995, Graeme Wilford.
#
# You may distribute under the terms of the GNU General Public
# License as specified in the COPYING file that comes with the man_db 
# distribution.  
#
# Sat Aug  6 15:46:44 BST 1994 Wilf. (G.Wilford@ee.surrey.ac.uk):

#------------------------------------------------------------------------#
# You should not need to edit this file at all. All user options can now #
# be passed via --enable-?, --disable-? or --with-? options to		 #
# ./configure.							         #
#									 #
# `./configure --help' shows current options available			 #
#									 #
# All system specific definitions are now in include/Defines.		 # 
#									 #
# path definitions are in include/manconfig.h				 #
# compression related definitions are in include/comp_src.h		 #
#------------------------------------------------------------------------#

srcdir = .
libdir = ${exec_prefix}/lib
top_srcdir = .

PACKAGE = man-db
VERSION = 

# GNUmakefile and include/Defines are automatic targets, don't add below.
INCLUDES := $(addprefix include/, config.h manconfig.h comp_src.h)
EVERYTHING = lib libdb src zsoelim man intl po
ALL = lib libdb src zsoelim man intl po
INSTALL = src zsoelim man intl po

include include/Defines

.PHONY: $(DEFAULT_TARGETS) $(EVERYTHING) dist nls_defines ID \
	$(addsuffix _root, $(DEFAULT_TARGETS)) update default RCS check
        
ifeq ($(nls),on)
languages = $(notdir $(wildcard $(top_srcdir)/nls/*_*))

default: $(INCLUDES)
	@echo " "
	@echo "./configure has determined that your system understands native language"
	@echo "support (nls) message catalogues.  This package is able to exploit this"
	@echo "feature by displaying it's text messages in different languages on a per"
	@echo "user basis.  British English is the default (built in) language."
	@echo " "
	@echo "Please issue make command with NLS language options (as shown below) or"
	@echo "'make nls=off' to disable all native language support.  Currently the"
	@echo "supported languages in POSIX 1003.1 locale format are:"
	@echo " "
	@for i in $(languages); do echo "	$$i"; done 
	@echo "	"
	@echo "To enable support for all of these locales issue 'make nls=all'"
	@echo "To support only a subset of these locales, issue" 
	@echo "'make nls=\"locale1 locale2 ...\"' (locales must be separated by spaces"
	@echo "and the entire string quoted)"
	@echo " "
	@exit 0

all:
	$(MAKE) nls=off

else # nls != on

  ifeq ($(nls),off)
    ALL = lib libdb src zsoelim man
    INSTALL = src zsoelim man
  else # nls != off
  endif # nls = off

all: $(ALL)
	
endif # nls = on

$(EVERYTHING): $(INCLUDES) nls_defines
	$(MAKE) -C $@ $(targets)

# Automatic regeneration targets
$(srcdir)/configure: configure.in aclocal.m4
	-cd $(srcdir) && autoconf

$(srcdir)/include/config.h.in: stamp-h.in
$(srcdir)/stamp-h.in: configure.in acconfig.h aclocal.m4
	-cd $(srcdir) && autoheader && date > stamp-h.in

# Use CONFIG_FILES= CONFIG_HEADERS= to force config.status to only
# re-create the relevant config file.

include/config.h: stamp-h
stamp-h: $(srcdir)/include/config.h.in config.status
	CONFIG_FILES= ./config.status
	date > stamp-h

config.status: $(srcdir)/configure
	./config.status --recheck

# Allow sub-Makefiles to request update
%: %.in config.status
	CONFIG_HEADERS= CONFIG_FILES=$@ ./config.status

# The following 3 rules must be explicit as using a pattern match rule would
# pick up include/config.h as a target which would be wrong.

include/manconfig.h: include/manconfig.h.in config.status
	CONFIG_HEADERS= CONFIG_FILES=$@ ./config.status

include/comp_src.h: include/comp_src.h.in config.status
	CONFIG_HEADERS= CONFIG_FILES=$@ ./config.status

include/Defines: include/Defines.in config.status
	CONFIG_HEADERS= CONFIG_FILES=$@ ./config.status

# Special targets
ID:
	mkid $(foreach dir, . $(EVERYTHING), \
		$(srcdir)/$(dir)/*.[chl] $(srcdir)/$(dir)/Makefile.in)

nls_defines:
	cp include/Defines include/Defines.old
	sed -e 's/^nls = .*/nls = $(nls)/' include/Defines.old > include/Defines

# Just make sure that all configure created files are up to date
update: nls_defines $(INCLUDES) $(addsuffix /Makefile, $(ALL))

# testsuite doesn't exist
testsuite:
	@echo " "
	@echo "The man_db testsuite was not found.  To perform a check of the installed"
	@echo "programs, you must have the man_db testsuite package and DejaGNU, both"
	@echo "available separately."
	@echo " "
	@exit 1

# Special loop-back root directory targets
mostlyclean_root clean_root:
	rm -f core *~ docs/*~ include/*~

distclean_root: clean_root
	rm -f $(INCLUDES) include/Defines GNUmakefile makefile
	rm -f include/Defines.old config.status config.cache config.log stamp-h
	rm -f src/lexgrog.c configure zsoelim/zsoelim.c

realclean_root: distclean_root
	rm -f tags ID

TAGS_root:
	$(MKTAGS) $(srcdir)/*.h include/*.h

# Normal targets and dependencies.
# If the make variable clean is set to yes, no dependencies are re-created

install: $(INCLUDES) nls_defines

install uninstall:
	for i in $(INSTALL); do $(MAKE) prefix=../$(prefix) -C $$i $@; done

TAGS realclean distclean mostlyclean clean:
	for i in $(EVERYTHING); do $(MAKE) prefix=../$(prefix) -C $$i $@ clean=yes; done
	$(MAKE) $@_root
	
check: testsuite testsuite/Makefile
	$(MAKE) -C testsuite

ifeq ($(srcdir),.)
# Sorry folks, can only make a dist from the $(srcdir)

# The files in the distribution
_subdirs = $(EVERYTHING) tools docs include

_all = */README */Makefile.in
_root = README configure *.h *.m4 *.in 
_docs = INSTALL.* COPYING ChangeLog NEWS ToDo
_gencat = *.[ch1] Copyright
_include = *.in 
_lib = *.[ch]
_libdb = *.[ch] stamp-h COPYING.LIB
_man = man?/*.man? */man?/*.man? THANKS
_nls = nls.h *_*/*.m THANKS
_src = README.lexgrog *.[chl] *.l-* man_db.config stamp-h
_tools = checkman install-sh mandb_\[nt\]fmt-script mkcatdirs \
	 mkinstalldirs nroff-script
_xcat = Register xcat.[cl]
_zsoelim = *.[cl]

FILES = $(_root) $(_all) \
	$(foreach _subdir, $(_subdirs), \
	  $(addprefix $(_subdir)/, $(_$(_subdir))))

message = release $(version), date $(date)
nls_man = de_DE.88591 de_DE.ascii
nls_cat = en_GB de_DE.88591
man_db := man_db-$(version)

RCS:
	ci -l -f$(rev) -m'$(message)' $(FILES)

# Ensure the flex C files and man_db-nls.h's are current
dist: update
	$(MAKE) -C src man_db-nls.h lexgrog.c nls=en_GB
	$(MAKE) -C libdb man_db-nls.h nls=en_GB
	$(MAKE) -C zsoelim zsoelim.c
	$(MAKE) -C xcat xcat.c
	rm -fr $(man_db)
	rm -f $(man_db).tgz
	mkdir $(man_db) 
	mkdir $(addprefix $(man_db)/, $(_subdirs))
	mkdir $(addprefix $(man_db)/nls/, $(nls_cat))
	mkdir $(addprefix $(man_db)/man/, $(nls_man))
	mkdir $(addprefix $(man_db)/man/, \
	        $(foreach dir, . $(nls_man), \
	          $(dir)/man1 $(dir)/man5 $(dir)/man8))
	for file in $(FILES); do \
	  ln $(srcdir)/$$file $(man_db)/$$file; \
	done
	chmod -R a+rX $(man_db)
	tar cvf - $(man_db) | gzip -9 > $(man_db).tgz
	rm -fr $(man_db)
endif

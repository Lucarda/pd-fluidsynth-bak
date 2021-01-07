lib.name = fluid~

class.sources = fluid~.c

ldlibs = -lfluidsynth

define forWindows

ifeq ($(firstword $(subst -, ,$(shell $(CC) -dumpmachine))), i686)
	datafiles += localdeps.win.sh dep32.sh 
	else
	datafiles += localdeps.win.sh dep64.sh 
endif

endef

define forLinux

ifeq ($(firstword $(subst -, ,$(shell $(CC) -dumpmachine))), i686)
	datafiles += linuxdep32.sh 
	else
	datafiles += linuxdep64.sh 
endif

endef

define forDarwin

	datafiles += localdeps.macos.sh 

endef




datafiles = fluid~-help.pd LICENSE.txt README.md 
datadirs = sf2

include pd-lib-builder/Makefile.pdlibbuilder

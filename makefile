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

datafiles = fluid~-help.pd LICENSE.txt README.md localdeps.macos.sh
datadirs = sf2

include pd-lib-builder/Makefile.pdlibbuilder

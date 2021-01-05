lib.name = fluid~

class.sources = fluid~.c

ldlibs = -lfluidsynth

datafiles = fluid~-help.pd LICENSE.txt README.md TimGM6mb.sf2 libfluidsynth.2.3.5.dylib

include pd-lib-builder/Makefile.pdlibbuilder

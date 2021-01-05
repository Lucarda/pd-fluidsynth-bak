lib.name = fluid~

class.sources = fluid~.c

ldlibs = -l:libfluidsynth.2.3.5.dylib -Wl,-R. \

datafiles = fluid~-help.pd LICENSE.txt README.md TimGM6mb.sf2 libfluidsynth.2.3.5.dylib

export LD_RUN_PATH="."

include pd-lib-builder/Makefile.pdlibbuilder

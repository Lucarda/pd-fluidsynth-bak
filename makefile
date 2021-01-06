lib.name = fluid~

class.sources = fluid~.c



ldlibs = -lfluidsynth

datafiles = fluid~-help.pd LICENSE.txt README.md
datadirs = sf2



include pd-lib-builder/Makefile.pdlibbuilder


define forWindows

# to use this script install "ntldd" msys2 package.
# it runs on the second time you do "make install".

post:
$(shell ./localdeps.win-adapted.sh $(installpath)/fluid~.dll)

endif

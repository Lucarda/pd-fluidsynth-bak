lib.name = fluid~

class.sources = fluid~.c

define forWindows

ifeq ($(firstword $(subst -, ,$(shell $(CC) -dumpmachine))), i686)

cflags += -Iwin32/include
ldlibs += -Lwin32/lib

datafiles += \
win32/bin/libgobject-2.0-0.dll \
win32/bin/libgthread-2.0-0.dll \
win32/bin/libinstpatch-2.dll \
win32/bin/libsndfile-1.dll \
win32/bin/libfluidsynth-2.dll \
win32/bin/libglib-2.0-0.dll \
win32/bin/libinstpatch-2.pdb \
win32/bin/intl.dll \
\

else

cflags += -Iwin64/include
ldlibs += -Lwin64/lib

datafiles += \
win64/bin/libgobject-2.0-0.dll \
win64/bin/libgthread-2.0-0.dll \
win64/bin/libinstpatch-2.dll \
win64/bin/libsndfile-1.dll \
win64/bin/libfluidsynth-2.dll \
win64/bin/libglib-2.0-0.dll \
win64/bin/libinstpatch-2.pdb \
win64/bin/libintl-8.dll \
\

endif

endef

ldlibs = -lfluidsynth

datafiles = fluid~-help.pd LICENSE.txt README.md TimGM6mb.sf2 libfluidsynth.2.3.5.dylib

export LD_RUN_PATH="."

include pd-lib-builder/Makefile.pdlibbuilder

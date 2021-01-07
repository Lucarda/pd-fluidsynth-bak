* * *

[fluid~] - soundfont player for Pure Data that uses fluidsynth.

* * *

### About:

[fluid~] is an external for Pure Data that loads fluidsynth for a fullblown orchestra.

**FluidSynth** is a Real-Time SoundFont Software Synthesizer (see https://www.fluidsynth.org and https://github.com/FluidSynth/fluidsynth).

This distribution is using fluidsynth 2.1.6

--------------------------------------------------------------------------

### Licence:

Distributed under the GPLv2+, please check the LICENSE file for details.

--------------------------------------------------------------------------

#### Building [fluid~] for Pd Vanilla:

First you need to install  **FluidSynth** (https://www.fluidsynth.org/) in your system. You can run the makefile after that.

This project relies on the build system called "pd-lib-builder" by Katja Vetter (see: <https://github.com/pure-data/pd-lib-builder>). PdLibBuilder tries to find the Pd source directory at several common locations, but when this fails, you have to specify the path yourself using the pdincludepath variable. Example:

<pre>make pdincludepath=~/pd-0.51-4/src/  (for Windows/MinGW add 'pdbinpath=~/pd-0.51-4/bin/)</pre>

* Installing with pdlibbuilder

Go to the pd-else folder and use "objectsdir" to set a relative path for your build, something like:

<pre>make install objectsdir=../fluid-build</pre>

Then move it to your preferred install folder for Pd and add it to the path.

Cross compiling is also possible with something like this

<pre>make CC=arm-linux-gnueabihf-gcc target.arch=arm7l install objectsdir=../</pre>



#### Further instructions:

#### - macOS

Download and install **FluidSynth** via homebrew (https://brew.sh/).

- "brew install fluidsynth"

After running the makefile, run the "localdeps.macos.sh" script with "fluid~.extension" as the argument. This magical script that copies the dynamic libraries into the external folder and links them correctly.



#### - Windows

Download the 32bit and 64bit **msys2** packages of **FluidSynth**:

`pacman -S mingw32/mingw-w64-i686-fluidsynth`

`pacman -S mingw64/mingw-w64-x86_64-fluidsynth`

and install the **ntldd** package:

`pacman -S mingw32/mingw-w64-i686-ntldd-git`

`pacman -S mingw64/mingw-w64-x86_64-ntldd-git` 

Then you can do with MinGW: 

`make install`

or you can also specify more options with:

`make PDDIR=<path/to/pd directory> PDLIBDIR=<path/to/output> install`

then on the MinGW shell `cd` to your lib installation dir and run the dependencies script:

for 32bit

`````
cd <to/your/lib/installation/dir>
./windep32.sh

`````

for 64bit

`````
cd <to/your/lib/installation/dir>
./windep64.sh

`````
### History:

The original code and version  of fluid~ is available in https://sourceforge.net/p/pure-data/svn/HEAD/tree/trunk/externals/footils/fluid/

The Purr Data port to Pd's API is found at: https://git.purrdata.net/jwilkes/purr-data/-/tree/master/externals/fluid~

This project's code resides at: https://github.com/porres/pd-fluid~

--------------------------------------------------------------------------


### Credits :

Thanks to the authors of fluidsynth (https://github.com/FluidSynth/fluidsynth/blob/master/AUTHORS) and to Larry Troxler, author of the older [iiwu~] external in which fluid~ was based on. thanks to IOhannes for the magical script that copies the dynamic libraries into the external folder and links them correctly. Thanks t Lucas Cordiviola for helping on how to build for windows.

- Original version by Frank Barknecht [2003]
- Ported from Flext/C++ to plain C/pdlibbuilder by Jonathan Wilkes for Purr Data [2016]
- SMMF mode and various other little improvements by Albert Gräf [2020]
- Revised by Alexandre Torres Porres and ported to distribute for Pd Vanilla [2021]

--------------------------------------------------------------------------





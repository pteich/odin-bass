# Odin Bindings for Un4seen BASS Audio Library

BASS is an amazing closed source audiolibrary for playing, recording, mixing and streaming audio.
Get the latest version from https://www.un4seen.com/
The C headers provided with the lib are the base for the bindings in this repo. 

The bindings for Odin (https://odin-lang.org) are tested on Linux but should work on Windows and macOS as well.
Place the latest version of the lib in the same folder as your Odin code for the linker to be able to find it.

Bindings include:

- [x] BASS library
- [ ] BASS mix
- [ ] BASS enc
- [ ] BASS HLS

## Naming convention

 For all C functions, the `BASS_` prefix is stripped for dedicated Odin procs but constants and structs still use the prefix. 
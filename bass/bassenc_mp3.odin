package bass

foreign import "system:bass"

when ODIN_OS == .Windows do foreign import bassenc "libbassenc_mp3.dll"
when ODIN_OS == .Linux   do foreign import bassenc "libbassenc_mp3.so"
when ODIN_OS == .Darwin  do foreign import bassenc "libbassenc_mp3.dylib"

import _c "core:c"


@(link_prefix="BASS_", default_calling_convention="c")
foreign bass {

    Encode_MP3_GetVersion :: proc() -> DWORD ---;

    Encode_MP3_Start :: proc(handle : DWORD, options : cstring, flags : DWORD, _proc : ^ENCODEPROCEX, user : rawptr) -> HENCODE ---;

    Encode_MP3_StartFile :: proc(handle : DWORD, options : cstring, flags : DWORD, filename : cstring) -> HENCODE ---;

}

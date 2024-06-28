package bass

foreign import "system:bass"

when ODIN_OS == .Windows do foreign import bassenc "libbassenc.dll"
when ODIN_OS == .Linux   do foreign import bassenc "libbassenc.so"
when ODIN_OS == .Darwin  do foreign import bassenc "libbassenc.dylib"

import _c "core:c"

BASSENC_H :: 1;
BASS_ERROR_ACM_CANCEL :: 2000;
BASS_ERROR_CAST_DENIED :: 2100;
BASS_ERROR_SERVER_CERT :: 2101;
BASS_CONFIG_ENCODE_PRIORITY :: 66304;
BASS_CONFIG_ENCODE_QUEUE :: 66305;
BASS_CONFIG_ENCODE_CAST_TIMEOUT :: 66320;
BASS_CONFIG_ENCODE_ACM_LOAD :: 66306;
BASS_CONFIG_ENCODE_CAST_PROXY :: 66321;
BASS_CONFIG_ENCODE_CAST_BIND :: 66322;
BASS_CONFIG_ENCODE_SERVER_CERT :: 66336;
BASS_CONFIG_ENCODE_SERVER_KEY :: 66337;
BASS_ENCODE_NOHEAD :: 1;
BASS_ENCODE_FP_8BIT :: 2;
BASS_ENCODE_FP_16BIT :: 4;
BASS_ENCODE_FP_24BIT :: 6;
BASS_ENCODE_FP_32BIT :: 8;
BASS_ENCODE_FP_AUTO :: 14;
BASS_ENCODE_BIGEND :: 16;
BASS_ENCODE_PAUSE :: 32;
BASS_ENCODE_PCM :: 64;
BASS_ENCODE_RF64 :: 128;
BASS_ENCODE_MONO :: 256;
BASS_ENCODE_QUEUE :: 512;
BASS_ENCODE_WFEXT :: 1024;
BASS_ENCODE_CAST_NOLIMIT :: 4096;
BASS_ENCODE_LIMIT :: 8192;
BASS_ENCODE_AIFF :: 16384;
BASS_ENCODE_DITHER :: 32768;
BASS_ENCODE_AUTOFREE :: 262144;
BASS_ACM_DEFAULT :: 1;
BASS_ACM_RATE :: 2;
BASS_ACM_CHANS :: 4;
BASS_ACM_SUGGEST :: 8;
BASS_ENCODE_COUNT_IN :: 0;
BASS_ENCODE_COUNT_OUT :: 1;
BASS_ENCODE_COUNT_CAST :: 2;
BASS_ENCODE_COUNT_QUEUE :: 3;
BASS_ENCODE_COUNT_QUEUE_LIMIT :: 4;
BASS_ENCODE_COUNT_QUEUE_FAIL :: 5;
BASS_ENCODE_COUNT_IN_FP :: 6;
BASS_ENCODE_TYPE_MP3 :: "audio/mpeg";
BASS_ENCODE_TYPE_OGG :: "audio/ogg";
BASS_ENCODE_TYPE_AAC :: "audio/aacp";
BASS_ENCODE_CAST_PUBLIC :: 1;
BASS_ENCODE_CAST_PUT :: 2;
BASS_ENCODE_CAST_SSL :: 4;
BASS_ENCODE_STATS_SHOUT :: 0;
BASS_ENCODE_STATS_ICE :: 1;
BASS_ENCODE_STATS_ICESERV :: 2;
BASS_ENCODE_SERVER_NOHTTP :: 1;
BASS_ENCODE_SERVER_META :: 2;
BASS_ENCODE_SERVER_SSL :: 4;
BASS_ENCODE_SERVER_SSLONLY :: 8;
BASS_ENCODE_NOTIFY_ENCODER :: 1;
BASS_ENCODE_NOTIFY_CAST :: 2;
BASS_ENCODE_NOTIFY_SERVER :: 3;
BASS_ENCODE_NOTIFY_CAST_TIMEOUT :: 65536;
BASS_ENCODE_NOTIFY_QUEUE_FULL :: 65537;
BASS_ENCODE_NOTIFY_FREE :: 65538;

HENCODE :: DWORD;
ENCODEPROC :: #type proc(handle : HENCODE, channel : DWORD, buffer : rawptr, length : DWORD, user : rawptr);
ENCODEPROCEX :: #type proc(handle : HENCODE, channel : DWORD, buffer : rawptr, length : DWORD, offset : QWORD, user : rawptr);
ENCODERPROC :: #type proc(handle : HENCODE, channel : DWORD, buffer : rawptr, length : DWORD, maxout : DWORD, user : rawptr) -> DWORD;
ENCODECLIENTPROC :: #type proc(handle : HENCODE, connect : BOOL, client : cstring, headers : cstring, user : rawptr) -> BOOL;
ENCODENOTIFYPROC :: #type proc(handle : HENCODE, status : DWORD, user : rawptr);

@(link_prefix="BASS_", default_calling_convention="c")
foreign bassenc {

        Encode_GetVersion :: proc() -> DWORD ---;

        Encode_Start :: proc(handle : DWORD, cmdline : cstring, flags : DWORD, _proc : ^ENCODEPROC, user : rawptr) -> HENCODE ---;

        Encode_StartLimit :: proc(handle : DWORD, cmdline : cstring, flags : DWORD, _proc : ^ENCODEPROC, user : rawptr, limit : DWORD) -> HENCODE ---;

        Encode_StartUser :: proc(handle : DWORD, filename : cstring, flags : DWORD, _proc : ^ENCODERPROC, user : rawptr) -> HENCODE ---;

        Encode_AddChunk :: proc(handle : HENCODE, id : cstring, buffer : rawptr, length : DWORD) -> BOOL ---;

        Encode_Write :: proc(handle : DWORD, buffer : rawptr, length : DWORD) -> BOOL ---;

        Encode_Stop :: proc(handle : DWORD) -> BOOL ---;

        Encode_StopEx :: proc(handle : DWORD, queue : BOOL) -> BOOL ---;

        Encode_SetPaused :: proc(handle : DWORD, paused : BOOL) -> BOOL ---;

        Encode_IsActive :: proc(handle : DWORD) -> DWORD ---;

        Encode_SetNotify :: proc(handle : DWORD, _proc : ^ENCODENOTIFYPROC, user : rawptr) -> BOOL ---;

        Encode_GetCount :: proc(handle : HENCODE, count : DWORD) -> QWORD ---;

        Encode_SetChannel :: proc(handle : DWORD, channel : DWORD) -> BOOL ---;

        Encode_GetChannel :: proc(handle : HENCODE) -> DWORD ---;

        Encode_UserOutput :: proc(handle : HENCODE, offset : QWORD, buffer : rawptr, length : DWORD) -> BOOL ---;

        Encode_GetACMFormat :: proc(handle : DWORD, form : rawptr, formlen : DWORD, title : cstring, flags : DWORD) -> DWORD ---;

        Encode_StartACM :: proc(handle : DWORD, form : rawptr, flags : DWORD, _proc : ^ENCODEPROC, user : rawptr) -> HENCODE ---;

        Encode_StartACMFile :: proc(handle : DWORD, form : rawptr, flags : DWORD, filename : cstring) -> HENCODE ---;

        Encode_StartCA :: proc(handle : DWORD, ftype : DWORD, atype : DWORD, flags : DWORD, bitrate : DWORD, _proc : ^ENCODEPROCEX, user : rawptr) -> HENCODE ---;

        Encode_StartCAFile :: proc(handle : DWORD, ftype : DWORD, atype : DWORD, flags : DWORD, bitrate : DWORD, filename : cstring) -> HENCODE ---;

        Encode_GetCARef :: proc(handle : DWORD) -> rawptr ---;

        Encode_CastInit :: proc(handle : HENCODE, server : cstring, pass : cstring, content : cstring, name : cstring, url : cstring, genre : cstring, desc : cstring, headers : cstring, bitrate : DWORD, flags : DWORD) -> BOOL ---;

        Encode_CastSetTitle :: proc(handle : HENCODE, title : cstring, url : cstring) -> BOOL ---;

        Encode_CastSendMeta :: proc(handle : HENCODE, type : DWORD, data : rawptr, length : DWORD) -> BOOL ---;

        Encode_CastGetStats :: proc(handle : HENCODE, type : DWORD, pass : cstring) -> cstring ---;

        Encode_ServerInit :: proc(handle : HENCODE, port : cstring, buffer : DWORD, burst : DWORD, flags : DWORD, _proc : ^ENCODECLIENTPROC, user : rawptr) -> DWORD ---;

        Encode_ServerKick :: proc(handle : HENCODE, client : cstring) -> BOOL ---;

}

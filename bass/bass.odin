package bass

when ODIN_OS == .Windows do foreign import bass "libbass.dll"
when ODIN_OS == .Linux   do foreign import bass "libbass.so"
when ODIN_OS == .Darwin  do foreign import bass "libbass.dylib"

import _c "core:c"

BASS_H :: 1;
WINAPI :: 1;
CALLBACK :: 1;
TRUE :: 1;
FALSE :: 0;
BASSVERSION :: 516;
BASSVERSIONTEXT :: "2.4";
NOBASSOVERLOADS :: 1;
BASS_OK :: 0;
BASS_ERROR_MEM :: 1;
BASS_ERROR_FILEOPEN :: 2;
BASS_ERROR_DRIVER :: 3;
BASS_ERROR_BUFLOST :: 4;
BASS_ERROR_HANDLE :: 5;
BASS_ERROR_FORMAT :: 6;
BASS_ERROR_POSITION :: 7;
BASS_ERROR_INIT :: 8;
BASS_ERROR_START :: 9;
BASS_ERROR_SSL :: 10;
BASS_ERROR_REINIT :: 11;
BASS_ERROR_ALREADY :: 14;
BASS_ERROR_NOTAUDIO :: 17;
BASS_ERROR_NOCHAN :: 18;
BASS_ERROR_ILLTYPE :: 19;
BASS_ERROR_ILLPARAM :: 20;
BASS_ERROR_NO3D :: 21;
BASS_ERROR_NOEAX :: 22;
BASS_ERROR_DEVICE :: 23;
BASS_ERROR_NOPLAY :: 24;
BASS_ERROR_FREQ :: 25;
BASS_ERROR_NOTFILE :: 27;
BASS_ERROR_NOHW :: 29;
BASS_ERROR_EMPTY :: 31;
BASS_ERROR_NONET :: 32;
BASS_ERROR_CREATE :: 33;
BASS_ERROR_NOFX :: 34;
BASS_ERROR_NOTAVAIL :: 37;
BASS_ERROR_DECODE :: 38;
BASS_ERROR_DX :: 39;
BASS_ERROR_TIMEOUT :: 40;
BASS_ERROR_FILEFORM :: 41;
BASS_ERROR_SPEAKER :: 42;
BASS_ERROR_VERSION :: 43;
BASS_ERROR_CODEC :: 44;
BASS_ERROR_ENDED :: 45;
BASS_ERROR_BUSY :: 46;
BASS_ERROR_UNSTREAMABLE :: 47;
BASS_ERROR_PROTOCOL :: 48;
BASS_ERROR_DENIED :: 49;
BASS_ERROR_UNKNOWN :: -1;
BASS_CONFIG_BUFFER :: 0;
BASS_CONFIG_UPDATEPERIOD :: 1;
BASS_CONFIG_GVOL_SAMPLE :: 4;
BASS_CONFIG_GVOL_STREAM :: 5;
BASS_CONFIG_GVOL_MUSIC :: 6;
BASS_CONFIG_CURVE_VOL :: 7;
BASS_CONFIG_CURVE_PAN :: 8;
BASS_CONFIG_FLOATDSP :: 9;
BASS_CONFIG_3DALGORITHM :: 10;
BASS_CONFIG_NET_TIMEOUT :: 11;
BASS_CONFIG_NET_BUFFER :: 12;
BASS_CONFIG_PAUSE_NOPLAY :: 13;
BASS_CONFIG_NET_PREBUF :: 15;
BASS_CONFIG_NET_PASSIVE :: 18;
BASS_CONFIG_REC_BUFFER :: 19;
BASS_CONFIG_NET_PLAYLIST :: 21;
BASS_CONFIG_MUSIC_VIRTUAL :: 22;
BASS_CONFIG_VERIFY :: 23;
BASS_CONFIG_UPDATETHREADS :: 24;
BASS_CONFIG_DEV_BUFFER :: 27;
BASS_CONFIG_REC_LOOPBACK :: 28;
BASS_CONFIG_VISTA_TRUEPOS :: 30;
BASS_CONFIG_IOS_SESSION :: 34;
BASS_CONFIG_IOS_MIXAUDIO :: 34;
BASS_CONFIG_DEV_DEFAULT :: 36;
BASS_CONFIG_NET_READTIMEOUT :: 37;
BASS_CONFIG_VISTA_SPEAKERS :: 38;
BASS_CONFIG_IOS_SPEAKER :: 39;
BASS_CONFIG_MF_DISABLE :: 40;
BASS_CONFIG_HANDLES :: 41;
BASS_CONFIG_UNICODE :: 42;
BASS_CONFIG_SRC :: 43;
BASS_CONFIG_SRC_SAMPLE :: 44;
BASS_CONFIG_ASYNCFILE_BUFFER :: 45;
BASS_CONFIG_OGG_PRESCAN :: 47;
BASS_CONFIG_MF_VIDEO :: 48;
BASS_CONFIG_AIRPLAY :: 49;
BASS_CONFIG_DEV_NONSTOP :: 50;
BASS_CONFIG_IOS_NOCATEGORY :: 51;
BASS_CONFIG_VERIFY_NET :: 52;
BASS_CONFIG_DEV_PERIOD :: 53;
BASS_CONFIG_FLOAT :: 54;
BASS_CONFIG_NET_SEEK :: 56;
BASS_CONFIG_AM_DISABLE :: 58;
BASS_CONFIG_NET_PLAYLIST_DEPTH :: 59;
BASS_CONFIG_NET_PREBUF_WAIT :: 60;
BASS_CONFIG_ANDROID_SESSIONID :: 62;
BASS_CONFIG_WASAPI_PERSIST :: 65;
BASS_CONFIG_REC_WASAPI :: 66;
BASS_CONFIG_ANDROID_AAUDIO :: 67;
BASS_CONFIG_SAMPLE_ONEHANDLE :: 69;
BASS_CONFIG_NET_META :: 71;
BASS_CONFIG_NET_RESTRATE :: 72;
BASS_CONFIG_REC_DEFAULT :: 73;
BASS_CONFIG_NORAMP :: 74;
BASS_CONFIG_NET_AGENT :: 16;
BASS_CONFIG_NET_PROXY :: 17;
BASS_CONFIG_IOS_NOTIFY :: 46;
BASS_CONFIG_ANDROID_JAVAVM :: 63;
BASS_CONFIG_LIBSSL :: 64;
BASS_CONFIG_FILENAME :: 75;
BASS_CONFIG_THREAD :: 1073741824;
BASS_IOS_SESSION_MIX :: 1;
BASS_IOS_SESSION_DUCK :: 2;
BASS_IOS_SESSION_AMBIENT :: 4;
BASS_IOS_SESSION_SPEAKER :: 8;
BASS_IOS_SESSION_DISABLE :: 16;
BASS_IOS_SESSION_DEACTIVATE :: 32;
BASS_IOS_SESSION_AIRPLAY :: 64;
BASS_IOS_SESSION_BTHFP :: 128;
BASS_IOS_SESSION_BTA2DP :: 256;
BASS_DEVICE_8BITS :: 1;
BASS_DEVICE_MONO :: 2;
BASS_DEVICE_3D :: 4;
BASS_DEVICE_16BITS :: 8;
BASS_DEVICE_REINIT :: 128;
BASS_DEVICE_LATENCY :: 256;
BASS_DEVICE_CPSPEAKERS :: 1024;
BASS_DEVICE_SPEAKERS :: 2048;
BASS_DEVICE_NOSPEAKER :: 4096;
BASS_DEVICE_DMIX :: 8192;
BASS_DEVICE_FREQ :: 16384;
BASS_DEVICE_STEREO :: 32768;
BASS_DEVICE_HOG :: 65536;
BASS_DEVICE_AUDIOTRACK :: 131072;
BASS_DEVICE_DSOUND :: 262144;
BASS_DEVICE_SOFTWARE :: 524288;
BASS_OBJECT_DS :: 1;
BASS_OBJECT_DS3DL :: 2;
BASS_DEVICE_ENABLED :: 1;
BASS_DEVICE_DEFAULT :: 2;
BASS_DEVICE_INIT :: 4;
BASS_DEVICE_LOOPBACK :: 8;
BASS_DEVICE_DEFAULTCOM :: 128;
BASS_DEVICE_TYPE_MASK :: 4278190080;
BASS_DEVICE_TYPE_NETWORK :: 16777216;
BASS_DEVICE_TYPE_SPEAKERS :: 33554432;
BASS_DEVICE_TYPE_LINE :: 50331648;
BASS_DEVICE_TYPE_HEADPHONES :: 67108864;
BASS_DEVICE_TYPE_MICROPHONE :: 83886080;
BASS_DEVICE_TYPE_HEADSET :: 100663296;
BASS_DEVICE_TYPE_HANDSET :: 117440512;
BASS_DEVICE_TYPE_DIGITAL :: 134217728;
BASS_DEVICE_TYPE_SPDIF :: 150994944;
BASS_DEVICE_TYPE_HDMI :: 167772160;
BASS_DEVICE_TYPE_DISPLAYPORT :: 1073741824;
BASS_DEVICES_AIRPLAY :: 16777216;
DSCAPS_EMULDRIVER :: 32;
DSCAPS_CERTIFIED :: 64;
DSCAPS_HARDWARE :: 2147483648;
DSCCAPS_EMULDRIVER :: 32;
DSCCAPS_CERTIFIED :: 64;
WAVE_FORMAT_1M08 :: 1;
WAVE_FORMAT_1S08 :: 2;
WAVE_FORMAT_1M16 :: 4;
WAVE_FORMAT_1S16 :: 8;
WAVE_FORMAT_2M08 :: 16;
WAVE_FORMAT_2S08 :: 32;
WAVE_FORMAT_2M16 :: 64;
WAVE_FORMAT_2S16 :: 128;
WAVE_FORMAT_4M08 :: 256;
WAVE_FORMAT_4S08 :: 512;
WAVE_FORMAT_4M16 :: 1024;
WAVE_FORMAT_4S16 :: 2048;
BASS_SAMPLE_8BITS :: 1;
BASS_SAMPLE_FLOAT :: 256;
BASS_SAMPLE_MONO :: 2;
BASS_SAMPLE_LOOP :: 4;
BASS_SAMPLE_3D :: 8;
BASS_SAMPLE_SOFTWARE :: 16;
BASS_SAMPLE_MUTEMAX :: 32;
BASS_SAMPLE_VAM :: 64;
BASS_SAMPLE_FX :: 128;
BASS_SAMPLE_OVER_VOL :: 65536;
BASS_SAMPLE_OVER_POS :: 131072;
BASS_SAMPLE_OVER_DIST :: 196608;
BASS_STREAM_PRESCAN :: 131072;
BASS_STREAM_AUTOFREE :: 262144;
BASS_STREAM_RESTRATE :: 524288;
BASS_STREAM_BLOCK :: 1048576;
BASS_STREAM_DECODE :: 2097152;
BASS_STREAM_STATUS :: 8388608;
BASS_MP3_IGNOREDELAY :: 512;
BASS_MP3_SETPOS :: 131072;
BASS_MUSIC_FLOAT :: 256;
BASS_MUSIC_MONO :: 2;
BASS_MUSIC_LOOP :: 4;
BASS_MUSIC_3D :: 8;
BASS_MUSIC_FX :: 128;
BASS_MUSIC_AUTOFREE :: 262144;
BASS_MUSIC_DECODE :: 2097152;
BASS_MUSIC_PRESCAN :: 131072;
BASS_MUSIC_CALCLEN :: 131072;
BASS_MUSIC_RAMP :: 512;
BASS_MUSIC_RAMPS :: 1024;
BASS_MUSIC_SURROUND :: 2048;
BASS_MUSIC_SURROUND2 :: 4096;
BASS_MUSIC_FT2PAN :: 8192;
BASS_MUSIC_FT2MOD :: 8192;
BASS_MUSIC_PT1MOD :: 16384;
BASS_MUSIC_NONINTER :: 65536;
BASS_MUSIC_SINCINTER :: 8388608;
BASS_MUSIC_POSRESET :: 32768;
BASS_MUSIC_POSRESETEX :: 4194304;
BASS_MUSIC_STOPBACK :: 524288;
BASS_MUSIC_NOSAMPLE :: 1048576;
BASS_SPEAKER_FRONT :: 16777216;
BASS_SPEAKER_REAR :: 33554432;
BASS_SPEAKER_CENLFE :: 50331648;
BASS_SPEAKER_SIDE :: 67108864;
BASS_SPEAKER_LEFT :: 268435456;
BASS_SPEAKER_RIGHT :: 536870912;
BASS_SPEAKER_FRONTLEFT :: 16777216;
BASS_SPEAKER_FRONTRIGHT :: 16777216;
BASS_SPEAKER_REARLEFT :: 33554432;
BASS_SPEAKER_REARRIGHT :: 33554432;
BASS_SPEAKER_CENTER :: 50331648;
BASS_SPEAKER_LFE :: 50331648;
BASS_SPEAKER_SIDELEFT :: 67108864;
BASS_SPEAKER_SIDERIGHT :: 67108864;
BASS_SPEAKER_REAR2 :: 67108864;
BASS_SPEAKER_REAR2LEFT :: 67108864;
BASS_SPEAKER_REAR2RIGHT :: 67108864;
BASS_ASYNCFILE :: 1073741824;
BASS_UNICODE :: 2147483648;
BASS_RECORD_ECHOCANCEL :: 8192;
BASS_RECORD_AGC :: 16384;
BASS_RECORD_PAUSE :: 32768;
BASS_VAM_HARDWARE :: 1;
BASS_VAM_SOFTWARE :: 2;
BASS_VAM_TERM_TIME :: 4;
BASS_VAM_TERM_DIST :: 8;
BASS_VAM_TERM_PRIO :: 16;
BASS_ORIGRES_FLOAT :: 65536;
BASS_CTYPE_SAMPLE :: 1;
BASS_CTYPE_RECORD :: 2;
BASS_CTYPE_STREAM :: 65536;
BASS_CTYPE_STREAM_VORBIS :: 65538;
BASS_CTYPE_STREAM_OGG :: 65538;
BASS_CTYPE_STREAM_MP1 :: 65539;
BASS_CTYPE_STREAM_MP2 :: 65540;
BASS_CTYPE_STREAM_MP3 :: 65541;
BASS_CTYPE_STREAM_AIFF :: 65542;
BASS_CTYPE_STREAM_CA :: 65543;
BASS_CTYPE_STREAM_MF :: 65544;
BASS_CTYPE_STREAM_AM :: 65545;
BASS_CTYPE_STREAM_SAMPLE :: 65546;
BASS_CTYPE_STREAM_DUMMY :: 98304;
BASS_CTYPE_STREAM_DEVICE :: 98305;
BASS_CTYPE_STREAM_WAV :: 262144;
BASS_CTYPE_STREAM_WAV_PCM :: 327681;
BASS_CTYPE_STREAM_WAV_FLOAT :: 327683;
BASS_CTYPE_MUSIC_MOD :: 131072;
BASS_CTYPE_MUSIC_MTM :: 131073;
BASS_CTYPE_MUSIC_S3M :: 131074;
BASS_CTYPE_MUSIC_XM :: 131075;
BASS_CTYPE_MUSIC_IT :: 131076;
BASS_CTYPE_MUSIC_MO3 :: 256;
BASS_PLUGIN_PROC :: 1;
BASS_3DMODE_NORMAL :: 0;
BASS_3DMODE_RELATIVE :: 1;
BASS_3DMODE_OFF :: 2;
BASS_3DALG_DEFAULT :: 0;
BASS_3DALG_OFF :: 1;
BASS_3DALG_FULL :: 2;
BASS_3DALG_LIGHT :: 3;
BASS_SAMCHAN_NEW :: 1;
BASS_SAMCHAN_STREAM :: 2;
BASS_STREAMPROC_END :: 2147483648;
STREAMFILE_NOBUFFER :: 0;
STREAMFILE_BUFFER :: 1;
STREAMFILE_BUFFERPUSH :: 2;
BASS_FILEDATA_END :: 0;
BASS_FILEPOS_CURRENT :: 0;
BASS_FILEPOS_DECODE :: 0;
BASS_FILEPOS_DOWNLOAD :: 1;
BASS_FILEPOS_END :: 2;
BASS_FILEPOS_START :: 3;
BASS_FILEPOS_CONNECTED :: 4;
BASS_FILEPOS_BUFFER :: 5;
BASS_FILEPOS_SOCKET :: 6;
BASS_FILEPOS_ASYNCBUF :: 7;
BASS_FILEPOS_SIZE :: 8;
BASS_FILEPOS_BUFFERING :: 9;
BASS_FILEPOS_AVAILABLE :: 10;
BASS_SYNC_POS :: 0;
BASS_SYNC_END :: 2;
BASS_SYNC_META :: 4;
BASS_SYNC_SLIDE :: 5;
BASS_SYNC_STALL :: 6;
BASS_SYNC_DOWNLOAD :: 7;
BASS_SYNC_FREE :: 8;
BASS_SYNC_SETPOS :: 11;
BASS_SYNC_MUSICPOS :: 10;
BASS_SYNC_MUSICINST :: 1;
BASS_SYNC_MUSICFX :: 3;
BASS_SYNC_OGG_CHANGE :: 12;
BASS_SYNC_DEV_FAIL :: 14;
BASS_SYNC_DEV_FORMAT :: 15;
BASS_SYNC_THREAD :: 536870912;
BASS_SYNC_MIXTIME :: 1073741824;
BASS_SYNC_ONETIME :: 2147483648;
BASS_ACTIVE_STOPPED :: 0;
BASS_ACTIVE_PLAYING :: 1;
BASS_ACTIVE_STALLED :: 2;
BASS_ACTIVE_PAUSED :: 3;
BASS_ACTIVE_PAUSED_DEVICE :: 4;
BASS_ATTRIB_FREQ :: 1;
BASS_ATTRIB_VOL :: 2;
BASS_ATTRIB_PAN :: 3;
BASS_ATTRIB_EAXMIX :: 4;
BASS_ATTRIB_NOBUFFER :: 5;
BASS_ATTRIB_VBR :: 6;
BASS_ATTRIB_CPU :: 7;
BASS_ATTRIB_SRC :: 8;
BASS_ATTRIB_NET_RESUME :: 9;
BASS_ATTRIB_SCANINFO :: 10;
BASS_ATTRIB_NORAMP :: 11;
BASS_ATTRIB_BITRATE :: 12;
BASS_ATTRIB_BUFFER :: 13;
BASS_ATTRIB_GRANULE :: 14;
BASS_ATTRIB_USER :: 15;
BASS_ATTRIB_TAIL :: 16;
BASS_ATTRIB_PUSH_LIMIT :: 17;
BASS_ATTRIB_DOWNLOADPROC :: 18;
BASS_ATTRIB_VOLDSP :: 19;
BASS_ATTRIB_VOLDSP_PRIORITY :: 20;
BASS_ATTRIB_MUSIC_AMPLIFY :: 256;
BASS_ATTRIB_MUSIC_PANSEP :: 257;
BASS_ATTRIB_MUSIC_PSCALER :: 258;
BASS_ATTRIB_MUSIC_BPM :: 259;
BASS_ATTRIB_MUSIC_SPEED :: 260;
BASS_ATTRIB_MUSIC_VOL_GLOBAL :: 261;
BASS_ATTRIB_MUSIC_ACTIVE :: 262;
BASS_ATTRIB_MUSIC_VOL_CHAN :: 512;
BASS_ATTRIB_MUSIC_VOL_INST :: 768;
BASS_SLIDE_LOG :: 16777216;
BASS_DATA_AVAILABLE :: 0;
BASS_DATA_NOREMOVE :: 268435456;
BASS_DATA_FIXED :: 536870912;
BASS_DATA_FLOAT :: 1073741824;
BASS_DATA_FFT256 :: 2147483648;
BASS_DATA_FFT512 :: 2147483649;
BASS_DATA_FFT1024 :: 2147483650;
BASS_DATA_FFT2048 :: 2147483651;
BASS_DATA_FFT4096 :: 2147483652;
BASS_DATA_FFT8192 :: 2147483653;
BASS_DATA_FFT16384 :: 2147483654;
BASS_DATA_FFT32768 :: 2147483655;
BASS_DATA_FFT_INDIVIDUAL :: 16;
BASS_DATA_FFT_NOWINDOW :: 32;
BASS_DATA_FFT_REMOVEDC :: 64;
BASS_DATA_FFT_COMPLEX :: 128;
BASS_DATA_FFT_NYQUIST :: 256;
BASS_LEVEL_MONO :: 1;
BASS_LEVEL_STEREO :: 2;
BASS_LEVEL_RMS :: 4;
BASS_LEVEL_VOLPAN :: 8;
BASS_LEVEL_NOREMOVE :: 16;
BASS_TAG_ID3 :: 0;
BASS_TAG_ID3V2 :: 1;
BASS_TAG_OGG :: 2;
BASS_TAG_HTTP :: 3;
BASS_TAG_ICY :: 4;
BASS_TAG_META :: 5;
BASS_TAG_APE :: 6;
BASS_TAG_MP4 :: 7;
BASS_TAG_WMA :: 8;
BASS_TAG_VENDOR :: 9;
BASS_TAG_LYRICS3 :: 10;
BASS_TAG_CA_CODEC :: 11;
BASS_TAG_MF :: 13;
BASS_TAG_WAVEFORMAT :: 14;
BASS_TAG_AM_NAME :: 16;
BASS_TAG_ID3V2_2 :: 17;
BASS_TAG_AM_MIME :: 18;
BASS_TAG_LOCATION :: 19;
BASS_TAG_RIFF_INFO :: 256;
BASS_TAG_RIFF_BEXT :: 257;
BASS_TAG_RIFF_CART :: 258;
BASS_TAG_RIFF_DISP :: 259;
BASS_TAG_RIFF_CUE :: 260;
BASS_TAG_RIFF_SMPL :: 261;
BASS_TAG_APE_BINARY :: 4096;
BASS_TAG_MUSIC_NAME :: 65536;
BASS_TAG_MUSIC_MESSAGE :: 65537;
BASS_TAG_MUSIC_ORDERS :: 65538;
BASS_TAG_MUSIC_AUTH :: 65539;
BASS_TAG_MUSIC_INST :: 65792;
BASS_TAG_MUSIC_CHAN :: 66048;
BASS_TAG_MUSIC_SAMPLE :: 66304;
_WAVEFORMATEX_ :: 1;
BASS_POS_BYTE :: 0;
BASS_POS_MUSIC_ORDER :: 1;
BASS_POS_OGG :: 3;
BASS_POS_END :: 16;
BASS_POS_LOOP :: 17;
BASS_POS_FLUSH :: 16777216;
BASS_POS_RESET :: 33554432;
BASS_POS_RELATIVE :: 67108864;
BASS_POS_INEXACT :: 134217728;
BASS_POS_DECODE :: 268435456;
BASS_POS_DECODETO :: 536870912;
BASS_POS_SCAN :: 1073741824;
BASS_NODEVICE :: 131072;
BASS_INPUT_OFF :: 65536;
BASS_INPUT_ON :: 131072;
BASS_INPUT_TYPE_MASK :: 4278190080;
BASS_INPUT_TYPE_UNDEF :: 0;
BASS_INPUT_TYPE_DIGITAL :: 16777216;
BASS_INPUT_TYPE_LINE :: 33554432;
BASS_INPUT_TYPE_MIC :: 50331648;
BASS_INPUT_TYPE_SYNTH :: 67108864;
BASS_INPUT_TYPE_CD :: 83886080;
BASS_INPUT_TYPE_PHONE :: 100663296;
BASS_INPUT_TYPE_SPEAKER :: 117440512;
BASS_INPUT_TYPE_WAVE :: 134217728;
BASS_INPUT_TYPE_AUX :: 150994944;
BASS_INPUT_TYPE_ANALOG :: 167772160;
BASS_FX_DX8_CHORUS :: 0;
BASS_FX_DX8_COMPRESSOR :: 1;
BASS_FX_DX8_DISTORTION :: 2;
BASS_FX_DX8_ECHO :: 3;
BASS_FX_DX8_FLANGER :: 4;
BASS_FX_DX8_GARGLE :: 5;
BASS_FX_DX8_I3DL2REVERB :: 6;
BASS_FX_DX8_PARAMEQ :: 7;
BASS_FX_DX8_REVERB :: 8;
BASS_FX_VOLUME :: 9;
BASS_DX8_PHASE_NEG_180 :: 0;
BASS_DX8_PHASE_NEG_90 :: 1;
BASS_DX8_PHASE_ZERO :: 2;
BASS_DX8_PHASE_90 :: 3;
BASS_DX8_PHASE_180 :: 4;
BASS_IOSNOTIFY_INTERRUPT :: 1;
BASS_IOSNOTIFY_INTERRUPT_END :: 2;

QWORD :: u64;
BYTE :: u8;
WORD :: u16;
DWORD :: u32;
BOOL32 :: _c.int;
BOOL :: _c.int;
HMUSIC :: u32;
HSAMPLE :: u32;
HCHANNEL :: u32;
HSTREAM :: u32;
HRECORD :: u32;
HSYNC :: u32;
HDSP :: u32;
HFX :: u32;
HPLUGIN :: u32;
STREAMPROC :: #type proc(handle : u32, buffer : rawptr, length : u32, user : rawptr) -> u32;
FILECLOSEPROC :: #type proc(user : rawptr);
FILELENPROC :: #type proc(user : rawptr) -> u64;
FILEREADPROC :: #type proc(buffer : rawptr, length : u32, user : rawptr) -> u32;
FILESEEKPROC :: #type proc(offset : u64, user : rawptr) -> _c.int;
DOWNLOADPROC :: #type proc(buffer : rawptr, length : u32, user : rawptr);
SYNCPROC :: #type proc(handle : u32, channel : u32, data : u32, user : rawptr);
DSPPROC :: #type proc(handle : u32, channel : u32, buffer : rawptr, length : u32, user : rawptr);
RECORDPROC :: #type proc(handle : u32, buffer : rawptr, length : u32, user : rawptr) -> _c.int;
WAVEFORMATEX :: tWAVEFORMATEX;
PWAVEFORMATEX :: ^WAVEFORMATEX;
LPWAVEFORMATEX :: ^WAVEFORMATEX;
LPCWAVEFORMATEX :: ^WAVEFORMATEX;
IOSNOTIFYPROC :: #type proc(status : u32);

BASS_DEVICEINFO :: struct {
    name : cstring,
    driver : cstring,
    flags : u32,
};

BASS_INFO :: struct {
    flags : u32,
    hwsize : u32,
    hwfree : u32,
    freesam : u32,
    free3d : u32,
    minrate : u32,
    maxrate : u32,
    eax : _c.int,
    minbuf : u32,
    dsver : u32,
    latency : u32,
    initflags : u32,
    speakers : u32,
    freq : u32,
};

BASS_RECORDINFO :: struct {
    flags : u32,
    formats : u32,
    inputs : u32,
    singlein : _c.int,
    freq : u32,
};

BASS_SAMPLE :: struct {
    freq : u32,
    volume : _c.float,
    pan : _c.float,
    flags : u32,
    length : u32,
    max : u32,
    origres : u32,
    chans : u32,
    mingap : u32,
    mode3d : u32,
    mindist : _c.float,
    maxdist : _c.float,
    iangle : u32,
    oangle : u32,
    outvol : _c.float,
    vam : u32,
    priority : u32,
};

BASS_CHANNELINFO :: struct {
    freq : u32,
    chans : u32,
    flags : u32,
    ctype : u32,
    origres : u32,
    plugin : u32,
    sample : u32,
    filename : cstring,
};

BASS_PLUGINFORM :: struct {
    ctype : u32,
    name : cstring,
    exts : cstring,
};

BASS_PLUGININFO :: struct {
    version : u32,
    formatc : u32,
    formats : ^BASS_PLUGINFORM,
};

BASS_3DVECTOR :: struct {
    x : _c.float,
    y : _c.float,
    z : _c.float,
};

BASS_FILEPROCS :: struct {
    close : ^FILECLOSEPROC,
    length : ^FILELENPROC,
    read : ^FILEREADPROC,
    seek : ^FILESEEKPROC,
};

TAG_ID3 :: struct {
    id : [3]_c.char,
    title : [30]_c.char,
    artist : [30]_c.char,
    album : [30]_c.char,
    year : [4]_c.char,
    comment : [30]_c.char,
    genre : u8,
};

TAG_APE_BINARY :: struct {
    key : cstring,
    data : rawptr,
    length : u32,
};

TAG_BEXT :: struct {
    Description : [256]_c.char,
    Originator : [32]_c.char,
    OriginatorReference : [32]_c.char,
    OriginationDate : [10]_c.char,
    OriginationTime : [8]_c.char,
    TimeReference : u64,
    Version : u16,
    UMID : [64]u8,
    Reserved : [190]u8,
    CodingHistory : cstring,
};

TAG_CART_TIMER :: struct {
    dwUsage : u32,
    dwValue : u32,
};

TAG_CART :: struct {
    Version : [4]_c.char,
    Title : [64]_c.char,
    Artist : [64]_c.char,
    CutID : [64]_c.char,
    ClientID : [64]_c.char,
    Category : [64]_c.char,
    Classification : [64]_c.char,
    OutCue : [64]_c.char,
    StartDate : [10]_c.char,
    StartTime : [8]_c.char,
    EndDate : [10]_c.char,
    EndTime : [8]_c.char,
    ProducerAppID : [64]_c.char,
    ProducerAppVersion : [64]_c.char,
    UserDef : [64]_c.char,
    dwLevelReference : u32,
    PostTimer : [8]TAG_CART_TIMER,
    Reserved : [276]_c.char,
    URL : [1024]_c.char,
    TagText : cstring,
};

TAG_CUE_POINT :: struct {
    dwName : u32,
    dwPosition : u32,
    fccChunk : u32,
    dwChunkStart : u32,
    dwBlockStart : u32,
    dwSampleOffset : u32,
};

TAG_CUE :: struct {
    dwCuePoints : u32,
    CuePoints : ^TAG_CUE_POINT,
};

TAG_SMPL_LOOP :: struct {
    dwIdentifier : u32,
    dwType : u32,
    dwStart : u32,
    dwEnd : u32,
    dwFraction : u32,
    dwPlayCount : u32,
};

TAG_SMPL :: struct {
    dwManufacturer : u32,
    dwProduct : u32,
    dwSamplePeriod : u32,
    dwMIDIUnityNote : u32,
    dwMIDIPitchFraction : u32,
    dwSMPTEFormat : u32,
    dwSMPTEOffset : u32,
    cSampleLoops : u32,
    cbSamplerData : u32,
    SampleLoops : ^TAG_SMPL_LOOP,
};

TAG_CA_CODEC :: struct {
    ftype : u32,
    atype : u32,
    name : cstring,
};

tWAVEFORMATEX :: struct {
    wFormatTag : u16,
    nChannels : u16,
    nSamplesPerSec : u32,
    nAvgBytesPerSec : u32,
    nBlockAlign : u16,
    wBitsPerSample : u16,
    cbSize : u16,
};

BASS_DX8_CHORUS :: struct {
    fWetDryMix : _c.float,
    fDepth : _c.float,
    fFeedback : _c.float,
    fFrequency : _c.float,
    lWaveform : u32,
    fDelay : _c.float,
    lPhase : u32,
};

BASS_DX8_COMPRESSOR :: struct {
    fGain : _c.float,
    fAttack : _c.float,
    fRelease : _c.float,
    fThreshold : _c.float,
    fRatio : _c.float,
    fPredelay : _c.float,
};

BASS_DX8_DISTORTION :: struct {
    fGain : _c.float,
    fEdge : _c.float,
    fPostEQCenterFrequency : _c.float,
    fPostEQBandwidth : _c.float,
    fPreLowpassCutoff : _c.float,
};

BASS_DX8_ECHO :: struct {
    fWetDryMix : _c.float,
    fFeedback : _c.float,
    fLeftDelay : _c.float,
    fRightDelay : _c.float,
    lPanDelay : _c.int,
};

BASS_DX8_FLANGER :: struct {
    fWetDryMix : _c.float,
    fDepth : _c.float,
    fFeedback : _c.float,
    fFrequency : _c.float,
    lWaveform : u32,
    fDelay : _c.float,
    lPhase : u32,
};

BASS_DX8_GARGLE :: struct {
    dwRateHz : u32,
    dwWaveShape : u32,
};

BASS_DX8_I3DL2REVERB :: struct {
    lRoom : _c.int,
    lRoomHF : _c.int,
    flRoomRolloffFactor : _c.float,
    flDecayTime : _c.float,
    flDecayHFRatio : _c.float,
    lReflections : _c.int,
    flReflectionsDelay : _c.float,
    lReverb : _c.int,
    flReverbDelay : _c.float,
    flDiffusion : _c.float,
    flDensity : _c.float,
    flHFReference : _c.float,
};

BASS_DX8_PARAMEQ :: struct {
    fCenter : _c.float,
    fBandwidth : _c.float,
    fGain : _c.float,
};

BASS_DX8_REVERB :: struct {
    fInGain : _c.float,
    fReverbMix : _c.float,
    fReverbTime : _c.float,
    fHighFreqRTRatio : _c.float,
};

BASS_FX_VOLUME_PARAM :: struct {
    fTarget : _c.float,
    fCurrent : _c.float,
    fTime : _c.float,
    lCurve : u32,
};

@(default_calling_convention="c")
foreign bass {

    @(link_name="BASS_SetConfig")
    BASS_SetConfig :: proc(option : u32, value : u32) -> _c.int ---;

    @(link_name="BASS_GetConfig")
    BASS_GetConfig :: proc(option : u32) -> u32 ---;

    @(link_name="BASS_SetConfigPtr")
    BASS_SetConfigPtr :: proc(option : u32, value : rawptr) -> _c.int ---;

    @(link_name="BASS_GetConfigPtr")
    BASS_GetConfigPtr :: proc(option : u32) -> rawptr ---;

    @(link_name="BASS_GetVersion")
    BASS_GetVersion :: proc() -> u32 ---;

    @(link_name="BASS_ErrorGetCode")
    BASS_ErrorGetCode :: proc() -> _c.int ---;

    @(link_name="BASS_GetDeviceInfo")
    BASS_GetDeviceInfo :: proc(device : u32, info : ^BASS_DEVICEINFO) -> _c.int ---;

    @(link_name="BASS_Init")
    BASS_Init :: proc(device : _c.int, freq : u32, flags : u32, win : rawptr, dsguid : rawptr) -> _c.int ---;

    @(link_name="BASS_Free")
    BASS_Free :: proc() -> _c.int ---;

    @(link_name="BASS_SetDevice")
    BASS_SetDevice :: proc(device : u32) -> _c.int ---;

    @(link_name="BASS_GetDevice")
    BASS_GetDevice :: proc() -> u32 ---;

    @(link_name="BASS_GetInfo")
    BASS_GetInfo :: proc(info : ^BASS_INFO) -> _c.int ---;

    @(link_name="BASS_Start")
    BASS_Start :: proc() -> _c.int ---;

    @(link_name="BASS_Stop")
    BASS_Stop :: proc() -> _c.int ---;

    @(link_name="BASS_Pause")
    BASS_Pause :: proc() -> _c.int ---;

    @(link_name="BASS_IsStarted")
    BASS_IsStarted :: proc() -> u32 ---;

    @(link_name="BASS_Update")
    BASS_Update :: proc(length : u32) -> _c.int ---;

    @(link_name="BASS_GetCPU")
    BASS_GetCPU :: proc() -> _c.float ---;

    @(link_name="BASS_SetVolume")
    BASS_SetVolume :: proc(volume : _c.float) -> _c.int ---;

    @(link_name="BASS_GetVolume")
    BASS_GetVolume :: proc() -> _c.float ---;

    @(link_name="BASS_Set3DFactors")
    BASS_Set3DFactors :: proc(distf : _c.float, rollf : _c.float, doppf : _c.float) -> _c.int ---;

    @(link_name="BASS_Get3DFactors")
    BASS_Get3DFactors :: proc(distf : ^_c.float, rollf : ^_c.float, doppf : ^_c.float) -> _c.int ---;

    @(link_name="BASS_Set3DPosition")
    BASS_Set3DPosition :: proc(pos : ^BASS_3DVECTOR, vel : ^BASS_3DVECTOR, front : ^BASS_3DVECTOR, top : ^BASS_3DVECTOR) -> _c.int ---;

    @(link_name="BASS_Get3DPosition")
    BASS_Get3DPosition :: proc(pos : ^BASS_3DVECTOR, vel : ^BASS_3DVECTOR, front : ^BASS_3DVECTOR, top : ^BASS_3DVECTOR) -> _c.int ---;

    @(link_name="BASS_Apply3D")
    BASS_Apply3D :: proc() ---;

    @(link_name="BASS_PluginLoad")
    BASS_PluginLoad :: proc(file : cstring, flags : u32) -> u32 ---;

    @(link_name="BASS_PluginFree")
    BASS_PluginFree :: proc(handle : u32) -> _c.int ---;

    @(link_name="BASS_PluginEnable")
    BASS_PluginEnable :: proc(handle : u32, enable : _c.int) -> _c.int ---;

    @(link_name="BASS_PluginGetInfo")
    BASS_PluginGetInfo :: proc(handle : u32) -> ^BASS_PLUGININFO ---;

    @(link_name="BASS_SampleLoad")
    BASS_SampleLoad :: proc(mem : _c.int, file : rawptr, offset : u64, length : u32, max : u32, flags : u32) -> u32 ---;

    @(link_name="BASS_SampleCreate")
    BASS_SampleCreate :: proc(length : u32, freq : u32, chans : u32, max : u32, flags : u32) -> u32 ---;

    @(link_name="BASS_SampleFree")
    BASS_SampleFree :: proc(handle : u32) -> _c.int ---;

    @(link_name="BASS_SampleSetData")
    BASS_SampleSetData :: proc(handle : u32, buffer : rawptr) -> _c.int ---;

    @(link_name="BASS_SampleGetData")
    BASS_SampleGetData :: proc(handle : u32, buffer : rawptr) -> _c.int ---;

    @(link_name="BASS_SampleGetInfo")
    BASS_SampleGetInfo :: proc(handle : u32, info : ^BASS_SAMPLE) -> _c.int ---;

    @(link_name="BASS_SampleSetInfo")
    BASS_SampleSetInfo :: proc(handle : u32, info : ^BASS_SAMPLE) -> _c.int ---;

    @(link_name="BASS_SampleGetChannel")
    BASS_SampleGetChannel :: proc(handle : u32, flags : u32) -> u32 ---;

    @(link_name="BASS_SampleGetChannels")
    BASS_SampleGetChannels :: proc(handle : u32, channels : ^u32) -> u32 ---;

    @(link_name="BASS_SampleStop")
    BASS_SampleStop :: proc(handle : u32) -> _c.int ---;

    @(link_name="BASS_StreamCreate")
    BASS_StreamCreate :: proc(freq : u32, chans : u32, flags : u32, _proc : ^STREAMPROC, user : rawptr) -> u32 ---;

    @(link_name="BASS_StreamCreateFile")
    BASS_StreamCreateFile :: proc(mem : _c.int, file : rawptr, offset : u64, length : u64, flags : u32) -> u32 ---;

    @(link_name="BASS_StreamCreateURL")
    BASS_StreamCreateURL :: proc(url : cstring, offset : u32, flags : u32, _proc : ^DOWNLOADPROC, user : rawptr) -> u32 ---;

    @(link_name="BASS_StreamCreateFileUser")
    BASS_StreamCreateFileUser :: proc(system : u32, flags : u32, _proc : ^BASS_FILEPROCS, user : rawptr) -> u32 ---;

    @(link_name="BASS_StreamFree")
    BASS_StreamFree :: proc(handle : u32) -> _c.int ---;

    @(link_name="BASS_StreamGetFilePosition")
    BASS_StreamGetFilePosition :: proc(handle : u32, mode : u32) -> u64 ---;

    @(link_name="BASS_StreamPutData")
    BASS_StreamPutData :: proc(handle : u32, buffer : rawptr, length : u32) -> u32 ---;

    @(link_name="BASS_StreamPutFileData")
    BASS_StreamPutFileData :: proc(handle : u32, buffer : rawptr, length : u32) -> u32 ---;

    @(link_name="BASS_MusicLoad")
    BASS_MusicLoad :: proc(mem : _c.int, file : rawptr, offset : u64, length : u32, flags : u32, freq : u32) -> u32 ---;

    @(link_name="BASS_MusicFree")
    BASS_MusicFree :: proc(handle : u32) -> _c.int ---;

    @(link_name="BASS_RecordGetDeviceInfo")
    BASS_RecordGetDeviceInfo :: proc(device : u32, info : ^BASS_DEVICEINFO) -> _c.int ---;

    @(link_name="BASS_RecordInit")
    BASS_RecordInit :: proc(device : _c.int) -> _c.int ---;

    @(link_name="BASS_RecordFree")
    BASS_RecordFree :: proc() -> _c.int ---;

    @(link_name="BASS_RecordSetDevice")
    BASS_RecordSetDevice :: proc(device : u32) -> _c.int ---;

    @(link_name="BASS_RecordGetDevice")
    BASS_RecordGetDevice :: proc() -> u32 ---;

    @(link_name="BASS_RecordGetInfo")
    BASS_RecordGetInfo :: proc(info : ^BASS_RECORDINFO) -> _c.int ---;

    @(link_name="BASS_RecordGetInputName")
    BASS_RecordGetInputName :: proc(input : _c.int) -> cstring ---;

    @(link_name="BASS_RecordSetInput")
    BASS_RecordSetInput :: proc(input : _c.int, flags : u32, volume : _c.float) -> _c.int ---;

    @(link_name="BASS_RecordGetInput")
    BASS_RecordGetInput :: proc(input : _c.int, volume : ^_c.float) -> u32 ---;

    @(link_name="BASS_RecordStart")
    BASS_RecordStart :: proc(freq : u32, chans : u32, flags : u32, _proc : ^RECORDPROC, user : rawptr) -> u32 ---;

    @(link_name="BASS_ChannelBytes2Seconds")
    BASS_ChannelBytes2Seconds :: proc(handle : u32, pos : u64) -> _c.double ---;

    @(link_name="BASS_ChannelSeconds2Bytes")
    BASS_ChannelSeconds2Bytes :: proc(handle : u32, pos : _c.double) -> u64 ---;

    @(link_name="BASS_ChannelGetDevice")
    BASS_ChannelGetDevice :: proc(handle : u32) -> u32 ---;

    @(link_name="BASS_ChannelSetDevice")
    BASS_ChannelSetDevice :: proc(handle : u32, device : u32) -> _c.int ---;

    @(link_name="BASS_ChannelIsActive")
    BASS_ChannelIsActive :: proc(handle : u32) -> u32 ---;

    @(link_name="BASS_ChannelGetInfo")
    BASS_ChannelGetInfo :: proc(handle : u32, info : ^BASS_CHANNELINFO) -> _c.int ---;

    @(link_name="BASS_ChannelGetTags")
    BASS_ChannelGetTags :: proc(handle : u32, tags : u32) -> cstring ---;

    @(link_name="BASS_ChannelFlags")
    BASS_ChannelFlags :: proc(handle : u32, flags : u32, mask : u32) -> u32 ---;

    @(link_name="BASS_ChannelLock")
    BASS_ChannelLock :: proc(handle : u32, lock : _c.int) -> _c.int ---;

    @(link_name="BASS_ChannelFree")
    BASS_ChannelFree :: proc(handle : u32) -> _c.int ---;

    @(link_name="BASS_ChannelPlay")
    BASS_ChannelPlay :: proc(handle : u32, restart : _c.int) -> _c.int ---;

    @(link_name="BASS_ChannelStart")
    BASS_ChannelStart :: proc(handle : u32) -> _c.int ---;

    @(link_name="BASS_ChannelStop")
    BASS_ChannelStop :: proc(handle : u32) -> _c.int ---;

    @(link_name="BASS_ChannelPause")
    BASS_ChannelPause :: proc(handle : u32) -> _c.int ---;

    @(link_name="BASS_ChannelUpdate")
    BASS_ChannelUpdate :: proc(handle : u32, length : u32) -> _c.int ---;

    @(link_name="BASS_ChannelSetAttribute")
    BASS_ChannelSetAttribute :: proc(handle : u32, attrib : u32, value : _c.float) -> _c.int ---;

    @(link_name="BASS_ChannelGetAttribute")
    BASS_ChannelGetAttribute :: proc(handle : u32, attrib : u32, value : ^_c.float) -> _c.int ---;

    @(link_name="BASS_ChannelSlideAttribute")
    BASS_ChannelSlideAttribute :: proc(handle : u32, attrib : u32, value : _c.float, time : u32) -> _c.int ---;

    @(link_name="BASS_ChannelIsSliding")
    BASS_ChannelIsSliding :: proc(handle : u32, attrib : u32) -> _c.int ---;

    @(link_name="BASS_ChannelSetAttributeEx")
    BASS_ChannelSetAttributeEx :: proc(handle : u32, attrib : u32, value : rawptr, size : u32) -> _c.int ---;

    @(link_name="BASS_ChannelGetAttributeEx")
    BASS_ChannelGetAttributeEx :: proc(handle : u32, attrib : u32, value : rawptr, size : u32) -> u32 ---;

    @(link_name="BASS_ChannelSet3DAttributes")
    BASS_ChannelSet3DAttributes :: proc(handle : u32, mode : _c.int, min : _c.float, max : _c.float, iangle : _c.int, oangle : _c.int, outvol : _c.float) -> _c.int ---;

    @(link_name="BASS_ChannelGet3DAttributes")
    BASS_ChannelGet3DAttributes :: proc(handle : u32, mode : ^u32, min : ^_c.float, max : ^_c.float, iangle : ^u32, oangle : ^u32, outvol : ^_c.float) -> _c.int ---;

    @(link_name="BASS_ChannelSet3DPosition")
    BASS_ChannelSet3DPosition :: proc(handle : u32, pos : ^BASS_3DVECTOR, orient : ^BASS_3DVECTOR, vel : ^BASS_3DVECTOR) -> _c.int ---;

    @(link_name="BASS_ChannelGet3DPosition")
    BASS_ChannelGet3DPosition :: proc(handle : u32, pos : ^BASS_3DVECTOR, orient : ^BASS_3DVECTOR, vel : ^BASS_3DVECTOR) -> _c.int ---;

    @(link_name="BASS_ChannelGetLength")
    BASS_ChannelGetLength :: proc(handle : u32, mode : u32) -> u64 ---;

    @(link_name="BASS_ChannelSetPosition")
    BASS_ChannelSetPosition :: proc(handle : u32, pos : u64, mode : u32) -> _c.int ---;

    @(link_name="BASS_ChannelGetPosition")
    BASS_ChannelGetPosition :: proc(handle : u32, mode : u32) -> u64 ---;

    @(link_name="BASS_ChannelGetLevel")
    BASS_ChannelGetLevel :: proc(handle : u32) -> u32 ---;

    @(link_name="BASS_ChannelGetLevelEx")
    BASS_ChannelGetLevelEx :: proc(handle : u32, levels : ^_c.float, length : _c.float, flags : u32) -> _c.int ---;

    @(link_name="BASS_ChannelGetData")
    BASS_ChannelGetData :: proc(handle : u32, buffer : rawptr, length : u32) -> u32 ---;

    @(link_name="BASS_ChannelSetSync")
    BASS_ChannelSetSync :: proc(handle : u32, type : u32, param : u64, _proc : ^SYNCPROC, user : rawptr) -> u32 ---;

    @(link_name="BASS_ChannelRemoveSync")
    BASS_ChannelRemoveSync :: proc(handle : u32, sync : u32) -> _c.int ---;

    @(link_name="BASS_ChannelSetLink")
    BASS_ChannelSetLink :: proc(handle : u32, chan : u32) -> _c.int ---;

    @(link_name="BASS_ChannelRemoveLink")
    BASS_ChannelRemoveLink :: proc(handle : u32, chan : u32) -> _c.int ---;

    @(link_name="BASS_ChannelSetDSP")
    BASS_ChannelSetDSP :: proc(handle : u32, _proc : ^DSPPROC, user : rawptr, priority : _c.int) -> u32 ---;

    @(link_name="BASS_ChannelRemoveDSP")
    BASS_ChannelRemoveDSP :: proc(handle : u32, dsp : u32) -> _c.int ---;

    @(link_name="BASS_ChannelSetFX")
    BASS_ChannelSetFX :: proc(handle : u32, type : u32, priority : _c.int) -> u32 ---;

    @(link_name="BASS_ChannelRemoveFX")
    BASS_ChannelRemoveFX :: proc(handle : u32, fx : u32) -> _c.int ---;

    @(link_name="BASS_FXSetParameters")
    BASS_FXSetParameters :: proc(handle : u32, params : rawptr) -> _c.int ---;

    @(link_name="BASS_FXGetParameters")
    BASS_FXGetParameters :: proc(handle : u32, params : rawptr) -> _c.int ---;

    @(link_name="BASS_FXSetPriority")
    BASS_FXSetPriority :: proc(handle : u32, priority : _c.int) -> _c.int ---;

    @(link_name="BASS_FXReset")
    BASS_FXReset :: proc(handle : u32) -> _c.int ---;

}

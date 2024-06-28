package bass

when ODIN_OS == .Windows do foreign import bassmix "libbassmix.dll"
when ODIN_OS == .Linux   do foreign import bassmix "libbassmix.so"
when ODIN_OS == .Darwin  do foreign import bassmix "libbassmix.dylib"

import _c "core:c"

BASSMIX_H :: 1;
BASS_CONFIG_MIXER_BUFFER :: 67073;
BASS_CONFIG_MIXER_POSEX :: 67074;
BASS_CONFIG_SPLIT_BUFFER :: 67088;
BASS_MIXER_RESUME :: 4096;
BASS_MIXER_POSEX :: 8192;
BASS_MIXER_NOSPEAKER :: 16384;
BASS_MIXER_QUEUE :: 32768;
BASS_MIXER_END :: 65536;
BASS_MIXER_NONSTOP :: 131072;
BASS_MIXER_CHAN_ABSOLUTE :: 4096;
BASS_MIXER_CHAN_BUFFER :: 8192;
BASS_MIXER_CHAN_LIMIT :: 16384;
BASS_MIXER_CHAN_MATRIX :: 65536;
BASS_MIXER_CHAN_PAUSE :: 131072;
BASS_MIXER_CHAN_DOWNMIX :: 4194304;
BASS_MIXER_CHAN_NORAMPIN :: 8388608;
BASS_MIXER_BUFFER :: 8192;
BASS_MIXER_LIMIT :: 16384;
BASS_MIXER_MATRIX :: 65536;
BASS_MIXER_PAUSE :: 131072;
BASS_MIXER_DOWNMIX :: 4194304;
BASS_MIXER_NORAMPIN :: 8388608;
BASS_ATTRIB_MIXER_LATENCY :: 86016;
BASS_ATTRIB_MIXER_THREADS :: 86017;
BASS_ATTRIB_MIXER_VOL :: 86018;
BASS_ACTIVE_WAITING :: 5;
BASS_ACTIVE_QUEUED :: 6;
BASS_SPLIT_SLAVE :: 4096;
BASS_SPLIT_POS :: 8192;
BASS_ATTRIB_SPLIT_ASYNCBUFFER :: 86032;
BASS_ATTRIB_SPLIT_ASYNCPERIOD :: 86033;
BASS_MIXER_ENV_FREQ :: 1;
BASS_MIXER_ENV_VOL :: 2;
BASS_MIXER_ENV_PAN :: 3;
BASS_MIXER_ENV_LOOP :: 65536;
BASS_MIXER_ENV_REMOVE :: 131072;
BASS_SYNC_MIXER_ENVELOPE :: 66048;
BASS_SYNC_MIXER_ENVELOPE_NODE :: 66049;
BASS_SYNC_MIXER_QUEUE :: 66050;
BASS_POS_MIXER_RESET :: 65536;
BASS_POS_MIXER_DELAY :: 5;
BASS_CTYPE_STREAM_MIXER :: 67584;
BASS_CTYPE_STREAM_SPLIT :: 67585;

BASS_MIXER_NODE :: struct {
    pos : QWORD,
    value : _c.float,
};

@(link_prefix="BASS_", default_calling_convention="c")
foreign bassmix {

        Mixer_GetVersion :: proc() -> DWORD ---;

        Mixer_StreamCreate :: proc(freq : DWORD, chans : DWORD, flags : DWORD) -> HSTREAM ---;

        Mixer_StreamAddChannel :: proc(handle : HSTREAM, channel : DWORD, flags : DWORD) -> BOOL ---;

        Mixer_StreamAddChannelEx :: proc(handle : HSTREAM, channel : DWORD, flags : DWORD, start : QWORD, length : QWORD) -> BOOL ---;

        Mixer_StreamGetChannels :: proc(handle : HSTREAM, channels : ^DWORD, count : DWORD) -> DWORD ---;

        Mixer_ChannelGetMixer :: proc(handle : DWORD) -> HSTREAM ---;

        Mixer_ChannelIsActive :: proc(handle : DWORD) -> DWORD ---;

        Mixer_ChannelFlags :: proc(handle : DWORD, flags : DWORD, mask : DWORD) -> DWORD ---;

        Mixer_ChannelRemove :: proc(handle : DWORD) -> BOOL ---;

        Mixer_ChannelSetPosition :: proc(handle : DWORD, pos : QWORD, mode : DWORD) -> BOOL ---;

        Mixer_ChannelGetPosition :: proc(handle : DWORD, mode : DWORD) -> QWORD ---;

        Mixer_ChannelGetPositionEx :: proc(channel : DWORD, mode : DWORD, delay : DWORD) -> QWORD ---;

        Mixer_ChannelGetLevel :: proc(handle : DWORD) -> DWORD ---;

        Mixer_ChannelGetLevelEx :: proc(handle : DWORD, levels : ^_c.float, length : _c.float, flags : DWORD) -> BOOL ---;

        Mixer_ChannelGetData :: proc(handle : DWORD, buffer : rawptr, length : DWORD) -> DWORD ---;

        Mixer_ChannelSetSync :: proc(handle : DWORD, type : DWORD, param : QWORD, _proc : ^SYNCPROC, user : rawptr) -> HSYNC ---;

        Mixer_ChannelRemoveSync :: proc(channel : DWORD, sync : HSYNC) -> BOOL ---;

        Mixer_ChannelSetMatrix :: proc(handle : DWORD, chmatrix : rawptr) -> BOOL ---;

        Mixer_ChannelSetMatrixEx :: proc(handle : DWORD, chmatrix : rawptr, time : _c.float) -> BOOL ---;

        Mixer_ChannelGetMatrix :: proc(handle : DWORD, chmatrix : rawptr) -> BOOL ---;

        Mixer_ChannelSetEnvelope :: proc(handle : DWORD, type : DWORD, nodes : ^BASS_MIXER_NODE, count : DWORD) -> BOOL ---;

        Mixer_ChannelSetEnvelopePos :: proc(handle : DWORD, type : DWORD, pos : QWORD) -> BOOL ---;

        Mixer_ChannelGetEnvelopePos :: proc(handle : DWORD, type : DWORD, value : ^_c.float) -> QWORD ---;

        Split_StreamCreate :: proc(channel : DWORD, flags : DWORD, chanmap : ^_c.int) -> HSTREAM ---;

        Split_StreamGetSource :: proc(handle : HSTREAM) -> DWORD ---;

        Split_StreamGetSplits :: proc(handle : DWORD, splits : ^HSTREAM, count : DWORD) -> DWORD ---;

        Split_StreamReset :: proc(handle : DWORD) -> BOOL ---;

        Split_StreamResetEx :: proc(handle : DWORD, offset : DWORD) -> BOOL ---;

        Split_StreamGetAvailable :: proc(handle : DWORD) -> DWORD ---;

}

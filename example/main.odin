package main

import bass "../bass"
import "core:fmt"
import "core:time"
import "core:os"
import "base:intrinsics"

main :: proc() {
    win := 0
	dsguid := 0
    
    ret := bass.Init(-1,44100,bass.BASS_DEVICE_DEFAULT,&win,&dsguid)
    if ret<=0 {
        fmt.println(ret)
    }

    defer bass.Free()
    
    hstream := bass.StreamCreateURL("http://sunsl.streamabc.net/sunsl-chillout-mp3-192-3900120", 0, bass.BASS_STREAM_AUTOFREE, nil,nil)
    if hstream<=0 {
        fmt.printfln("failed to open stream: %d", bass.ErrorGetCode())
        os.exit(1)
    }

    if bass.ChannelPlay(hstream,0)<=0 {
        fmt.printfln("failed to start channel: %d", bass.ErrorGetCode())
        os.exit(1)
    }


    for {
        intrinsics.cpu_relax()
    }        
}

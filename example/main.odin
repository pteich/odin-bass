package main

import bass "../bass"
import "base:intrinsics"
import "core:fmt"
import "core:os"
import "core:time"

main :: proc() {
	win := 0
	dsguid := 0

	// init BASS using the default device and use 44100 Hz Samplingrate
	ret := bass.Init(-1, 44100, bass.BASS_DEVICE_DEFAULT, &win, &dsguid)
	if ret <= 0 {
		fmt.println(ret)
	}

	defer bass.Free()

	// create a stream from an Icecast URL
	hstream := bass.StreamCreateURL(
		"http://sunsl.streamabc.net/sunsl-chillout-mp3-192-3900120",
		0,
		bass.BASS_STREAM_AUTOFREE,
		nil,
		nil,
	)
	if hstream <= 0 {
		fmt.printfln("failed to open stream: %d", bass.ErrorGetCode())
		os.exit(1)
	}

	// play the stream
	if bass.ChannelPlay(hstream, 0) <= 0 {
		fmt.printfln("failed to start channel: %d", bass.ErrorGetCode())
		os.exit(1)
	}


	// wait until the the user kills us, audio plays in the background
	for {
		intrinsics.cpu_relax()
	}
}
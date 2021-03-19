# rum

***ru*** by - ***m*** usic\
*by Benjamin Cook*\
<http://baryon.it>

## Abstract

A minimalist audio player.\
Pipes audio between two instances of `ffmpeg`.\
Plays a single, user-editable playlist gaplessly.\
Remembers where it was when you quit.

## usage
Create a rum playlist and play it:\
`        rum file1 file2 ...`
	
Continue playing last created playlist:\
`        rum`

## Features and Configuration

`rum` supports every input and output format that `ffmpeg` does.\
Default configuration plays to the `default` Pulseaudio device.\
Edit the file to change the configuration.\
Earliest commits have a play/pause volume ramping feature.

## Release Log
0.1 - Initial release.
0.2 - Removed play/pause volume ramping.

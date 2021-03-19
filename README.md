# rum

**ru**by **m**usic\
*by Benjamin Cook
<http://baryon.it>*

## abstract

A minimalist audio player.\
Pipes audio between two instances of `ffmpeg`.\
Plays a single, user-editable playlist gaplessly.\
Remembers where it was when you quit.

## usage
Create a rum playlist and play it:\
`        rum file1 file2 ...`
	
Continue playing last created playlist:\
`        rum`

## features and configuration

A significant portion of the code is dedicated to configuration.\
This project is probably uninteresting to people who won't edit code.\
`rum` supports every input and output format that `ffmpeg` does.\
Default configuration plays to the `default` Pulseaudio device.\
Version 0.1 was released to archive the play/pause volume ramping.\
Someone might use it, but I lost interest in it.

## releases
0.1 - contains play/pause volume ramping\
0.2 - removed play/pause volume ramping 

# rum

***ru***by ***m***usic\
*by Benjamin Cook*\
<http://baryon.it>

## Abstract

A minimalist audio player written in Ruby.\
Pipes audio between two instances of `ffmpeg`.\
Plays a single, user-editable playlist gaplessly.\
Remembers where it was when you quit.

## Usage
Create a rum playlist and play it:\
`        rum file1 file2 ...`
	
Continue playing last created playlist:\
`        rum`

## Features and Configuration

`rum` supports every input and output format that `ffmpeg` does.\
Default configuration plays to the `default` Pulseaudio device.\
Edit the file to change the configuration.\
Earliest commits have a play/pause volume ramping feature.


## Known Issues (Won't Fix)
Timestamp is inaccurate.\
Initial audio might get truncated.\
Zero error-handling.\

Command input appears to be broken on ruby versions less than 2.7. 2.6 might work but has not been tested. 2.5 is broken.

## Release Log
0.1 - Initial release.\
0.2 - Removed play/pause volume ramping. `2021-03-19`\
0.2c - Bugfixes. `2021-03-19`\
0.2d - Improved path handling. `2021-03-19`

# rumu

***ru***by ***mu***sic\
*by Benjamin Cook*\
<http://baryon.it>

## Abstract

A minimalist audio player written in Ruby.\
Pipes audio between two instances of `ffmpeg`.\
Plays a single, user-editable playlist gaplessly.\
Remembers where it was when you quit.

## Usage
Create a rumu playlist and play it:\
`        rumu file1 file2 ...`
	
Continue playing last created playlist:\
`        rumu`

Keystroke commands during playback:\
**p**: previous track\
**r**: restart current track\
**s**: seek in current track\
**n**: next track\
**q**: quit rumu\
**else**: display commands

Seek accepts whatever `ffmpeg` does.\
See <https://trac.ffmpeg.org/wiki/Seeking> for details.

## Features and Configuration

`rumu` supports every input and output format that `ffmpeg` does.\
Default configuration plays to the `default` Pulseaudio device.\
Earliest commits have a play/pause volume ramping feature.

### Configuration files

Configuration is found in `$HOME/.config/rumu`.\
`list` contains the playlist.\
`dev` contains output device config, passed to `ffmpeg`.\
`pos` contains position information.\
Line 1 of `pos` is the position in `list`.\
Line 2 of `pos` is the position in selected file in seconds.


## Known Issues (Won't Fix)
Timestamp is inaccurate.\
Initial audio might get truncated.\
Zero error-handling.

Command input appears to be broken on ruby versions less than 2.7.\
2.6 might work but has not been tested. 2.5 is broken.

## Release Log
0.1 - Initial release.\
0.2 - Removed play/pause volume ramping. `2021-03-19`\
0.2c - Bugfixes. `2021-03-19`\
0.2d - Improved path handling. `2021-03-19`\
0.3.0 - Refactored code, published Ruby gem, renamed to `rumu`. `2021-03-26`\
0.3.1 - Minor fixes. `2021-03-26`\
0.3.2 - Seek and restart, device config. `2021-03-26`\
0.3.3 - Fixed crash bug on new installs. `2021-03-29`\
0.3.4 - Fixed an output hang. `2021-03-29`

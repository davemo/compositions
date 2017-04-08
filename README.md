# Compositions

Some of my musical compositions.

## Tooling

- Notation with [LilyPond](http://lilypond.org/website/index.html)
- MIDI Playback via [FluidSynth](http://www.fluidsynth.org/)
- Workflow via [entr](http://entrproject.org/)

## Workflow

- Install [LilyPond](http://lilypond.org/website/index.html) to somewhere available to your `$PATH`, I use `~/bin/lilypond`

```shell
cat ~/bin/lilypond

#!/bin/bash
exec DIR/LilyPond.app/Contents/Resources/bin/lilypond "$@"
```

- Install [FluidSynth](http://www.fluidsynth.org/), I used `brew install fluidsynth`.

- Install [entr](http://entrproject.org/), I like to use it for auto recompiling with lilypad:

```shell
$ cd crash/
$ ls -d * | entr -s 'lilypond -o crash crash.ly'
```

This outputs a `.midi` and `.pdf` file

```shell
$ tree crash
crash
├── crash.ly
├── crash.midi
└── crash.pdf
```

- Playback with a `playmidi alias` as at this handy link for [How to Play Midi Files from Terminal](http://apple.stackexchange.com/questions/107297/how-can-i-play-a-midi-file-from-terminal)

```shell
$ playmidi crash.midi
```

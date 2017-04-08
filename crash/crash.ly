\version "2.18.2-1"
\header {
  title = "Crash"
  composer = "David A. Mosher"
}

upper = \relative c'' {
  \clef treble
  \key d \major
  \time 4/4
  \tempo 4 = 140

  r1
  r1
  r1
  r1

  a,16 r16 e' r16 g r16 a8~ a g8 e16 r16 g8~
  g e16 r16 d8 e8 r8 e8 g8 a8
  a,16 r16 e' r16 g r16 a8~ a g8 e16 r16 g8~
  g e8 d8 e8~ e8 g8 ais16\staccato r16 r8
}

lower = \relative c {
  \clef bass
  \key d \major
  \time 4/4

  d,16\mf r16 a' r16 c r16 d8~ d c8 a16 r16 c8~
  c a16 r16 g8 a8 r8 a8 c8 d8
  d,16 r16 a' r16 c r16 d8~ d c8 a16 r16 c8~
  c a8 g8 a8~ a8 c8 dis16\staccato r16 r8

  d,16 r16 a' r16 c r16 d8~ d c8 a16 r16 c8~
  c a16 r16 g8 a8 r8 a8 c8 d8
  d,16 r16 a' r16 c r16 d8~ d c8 a16 r16 c8~
  c a8 g8 a8~ a8 c8 dis16\staccato r16 r8
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

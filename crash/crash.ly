\version "2.18.2-1"
\header {
  title = "Crash"
  composer = "David A. Mosher"
}

rightTheme = {
  a,16 r16 e' r16 g r16 a8~ a g8 e16 r16 g8~
  g e16 r16 d8 e8 r8 e8 g8 a8
  a,16 r16 e' r16 g r16 a8~ a g8 e16 r16 g8~
  g e8 d8 e8~ e8 g8 ais16\staccato r16 r8
}

leftTheme = {
  d,16\mf r16 a' r16 c r16 d8~ d c8 a16 r16 c8~
  c a16 r16 g8 a8 r8 a8 c8 d8
  d,16 r16 a' r16 c r16 d8~ d c8 a16 r16 c8~
  c a8 g8 a8~ a8 c8 dis16\staccato r16 r8
}

rightBuild = {
  r8 e8 g8 a8~ a16 r16 g8 e8 g8~
  g8 e8 d8~ e8 r8 e8 g8 a8~
  a8 r8 r8 d,8 e8 a8 e8 d8
  <cis e>4~ cis16 r16 r8 <cis e>16\staccato r16 r16 r8 r4
}

leftBuild = {
  <ais, ais'>1~
  <ais ais'>
  a8 e'8 a8~ a8~ a16 r8 r16 r4
  <a e a,>4~ <a e a,>16 r16 r8 <a e a,>16\staccato r16 r16 r8 r4
}

wholeRests = {
  \repeat unfold 4 r1
}

keyTimeTempo = {
  \key d \major
  \time 4/4
  \tempo 4 = 140
}

treble = \relative c'' {
  \clef treble
  \keyTimeTempo

  \wholeRests
  \rightTheme

  \rightBuild
  \wholeRests
}

bass = \relative c {
  \clef bass
  \keyTimeTempo

  \leftTheme
  \leftTheme

  \leftBuild
  \leftTheme
}

\score {
  \new PianoStaff <<
    \new Staff = "treble" \treble
    \new Staff = "bass" \bass
  >>
  \layout { }
  \midi { }
}

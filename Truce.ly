\version "2.19.59"

\header {
  title = "Truce"
  composer = "Tyler Joseph"
  arranger = "Arr: Jacob Helbig"
  tagline = ##f
}

\paper {
ragged-last-bottom = ##f
}


upper = \relative c' {
  \clef treble
  \key g \major
  \time 4/4

	g'1~ | g | g~ | g | <d g b>2. c'4 | <dis, fis a>2. b'4 |
	<c, e g>4 fis8 e8~ e4 g8 b8~ | b1 | g8 a b2 d4 | a8 g4. e4 d8 b'~ |
	b1~ | b | <d, g b>2. c'4 | <dis, fis a>2. b'4 |
	<c, e g>4 fis8 e8~ e4 g8 b8~ | b1 | g8 a b2 d4 | a8 g4. e4 d8 b'~ |     
        b1~ | b |
	<d, fis>8 a' a2. | <c, e>8 g' g2 e4 | <d g b>1 |
	<c' e>8 <b d>4. <g b>8 <a c>4. |
	<d, fis>8 a' a2. | <c, e>8 g' g2 e4 | <g b>2 <fis a> | <e g> <d fis> |
	<c e>1 | <a c es>2 <a c es> | <d g b>1~ | <d g b>1 |

	% second verse

	| <d g b>2. c'4 | <dis, fis a>2. b'4 |                 
        <c, e g>4 fis8 e8~ e4 g8 b8~ | b1 | g8 a b2 d4 | a8 g4. e4 d8 b'~ |      
        b1~ | b | <d, g b>2. c'4 | <dis, fis a>2. b'4 |                          
        <c, e g>4 fis8 e8~ e4 g8 b8~ | b1 | g8 a b2 d4 | a8 g4. e4 d8 b'~ |      
        b1~ | b | <d, fis a>1 | <c e g> | <d g b> |
	<c' e>8 <b d>4. <g b>8 <a c>4. |
	<d, fis a>1 | <c e g> | <d b'>2 <d a'> | <e g> <d fis> |
	<g, c e>2 <g c e> | <a c es>1 |
	g''8 a b2 d4 | a8 g4. e4 d8 b'~ | b1~ | b1 |
	g8 a b2 d4 | a8 g4. e4 d4 | b1~ | b1 |
	
}

lower = \relative c {
  \clef bass
  \key g \major
  \time 4/4

	g4( d' g d) | g,( d' g d) | g, d' g d | g, d' g d |
	g, d' g d | b fis' b fis | c g' c g | g, d' g fis |
	e, b' e b | c, g' c g | g d' g d | g, d' g d |
	g, d' g d | b fis' b fis | c g' c g | g, d' g fis |                      
        e, b' e b | c, g' c g | g d' g d | g, d' g d |
	d, a' d a | c, g' c g | g d' g d | g, d' g d |
	d, a' d a | c, g' c g | <g g'>2 <fis fis'> | <e e'> <d d'> |
	c4 g' c g | c,2. c'4 | g4 d' g d | g, d' g d | \break

	% second verse

	g,( d' g d) | b( fis' b fis) | c g' c g | g, d' g fis |                      
        e, b' e b | c, g' c g | g d' g d | g, d' g d |                           
        g, d' g d | b fis' b fis | c g' c g | g, d' g fis |                      
        e, b' e b | c, g' c g | g d' g d | g, d' g d |
	d1 | c1 | g'1~ | g  \break | d | c |
	g'2 fis | e d | c2. c4 | c2. c4 | \break
	\clef treble e'2 e | c c | g' g | g g | e e |
	\override TextSpanner.bound-details.left.text = "rit." c c\startTextSpan |
	g'1~\stopTextSpan | g | \bar "|."
	
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
 
\midi { }
\layout { }
}

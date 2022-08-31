\version "2.22.2"

% =====================================
%           Valašský Pochod
% =====================================

clarinet_B_ValasskyPochod = {
    \key a \major
    
    % Partial takt je tu proto, aby se zobrazila první dvojčára
    \partial 64
    \once \hideNotes c64

    \mark #6
    \bar "||"

    \transpose c c' {

        e'4 e' |
        r16 cis'-. cis'[( d'] cis'8-.) cis'16( d') |
        r16 e( fis[ gis] a b cis' d' |
        e'8.) \breathe fis'16( e'8 d'16 cis' |
        
        % Zalomení řádku
        \break
        
        d'4) d' |
        r16 b-. b([ cis'] b8-.) b16( cis' | 
        e'8.) d'16( cis'8) cis'16( b |
        a8-.) a16( gis a4-.) |

    }

    \mark \default
    \bar "||"
}

% =====================================
%             Pod Návojným
% =====================================

clarinet_B_PodNavojnym = {
    \key g \major

    % Partial takt je tu proto, aby se zobrazila první dvojčára
    \partial 64
    \once \hideNotes c64

    \mark #3
    \bar "||"

    \transpose c c'' {

        g8 b d' d' | d' c' b d' | d' c' c' c' |
        b4 g | f4 r |

        \break

        d'8 c' c' c' | \repeat percent 2 { b a b c' | }
        b4 a | g r |

    }

    \mark \default
    \bar "||"

}

\layout {
    indent = #0
    \context {
        \Score
        \remove "Bar_number_engraver"
    }
}

\paper {
    % No tag line
    tagline = ##f

    % https://lilypond.org/doc/v2.21/Documentation/notation/custom-titles-headers-and-footers#custom-layout-for-titles
    scoreTitleMarkup = \markup {
      \fill-line {
        \null
        \fontsize #4 \bold \fromproperty #'header:piece
        \fromproperty #'header:opus
      }
    }
}

\score{
    \header {
        piece = "Valašský pochod"
        opus = "Flétna"
    }
    \new Staff {
        \clef "treble"
        \time 2/4 
        \set Score.markFormatter = #format-mark-circle-numbers
        \transpose c' bes {
            \clarinet_B_ValasskyPochod
        }
    }
}

\score{
    \header {
        piece = "Pod Návojným"
        opus = "Piccolo"
    }
    \new Staff {
        \clef "treble"
        \time 2/4 
        \set Score.markFormatter = #format-mark-box-alphabet
        \set Score.currentBarNumber = #21

        \transpose c' bes {
            \clarinet_B_PodNavojnym
        }
    }
    \layout {
        \context {
            \Score
            \consists "Bar_number_engraver"
        }
    }
}
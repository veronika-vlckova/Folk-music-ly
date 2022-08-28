\version "2.22.2"

clarinet_B = {
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
        % opus = "Flétna"
    }
    \new Staff {
        \clef "treble"
        \time 2/4 
        \set Score.markFormatter = #format-mark-circle-numbers
        \transpose c' bes {
            \clarinet_B
        }
    }
}
\version "2.22.2"

clarinetB = {
    \key a \major

    \mark "6"
    \bar "||"

    e'4 e' |
    r16 cis'-. cis'[( d'] cis'8-.) cis'16( d') |
    r16 e( fis[ gis] a b cis' d' |
    e'8.) \breathe fis'16( e'8 d'16 cis' |
    
    \break
    
    d'4) d' |
    r16 b-. b([ cis'] b8-.) b16( cis' | 
    e'8.) d'16( cis'8) cis'16( b |
    a8-.) a16( gis a4-.) |

    \mark "7"
    \bar "||"
}

{
    \clef "treble"
    \time 2/4 
    
    
    \transpose c' bes {
        \transpose c c' {
            \clarinetB
        }
    }

}
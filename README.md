# Folk-music-ly

Tady mám několik hudebních zápisů, které používám v cimálové muzice. Většinou se jedná o přepisy částí partů  Klarinet (B) a jejich transpozici do Flétna (C).

## Jak používat tohle repozitory

### Je potřeba mít nainstalovaná

- [Lilypond](https://lilypond.org/) verze 2.22.2 nebo vyšší
- Git (pokud chceš změny poslat zpět na GitHub)

Pokud používáš MacOS, tak si můžeš jednoduše nainstalovat Git i Lilypond pomocí Homebrew:

- Install Homebrew: <https://brew.sh/index>
- Install Git: <https://formulae.brew.sh/formula/git>
- Install Lilypond: <https://formulae.brew.sh/formula/lilypond>

### Jak vyrobit PDF soubor

V terminálu spusť příkaz:

```sh
$ lilypond transpozice.ly
```

Pokud je vše bez bych tak uvidíš následující výstup a soubor `transpozice.pdf` bude připraven k tisku.

```
GNU LilyPond 2.22.2 (running Guile 2.2)
Processing `transpozice.ly'
Parsing...
Interpreting music...[8]
Preprocessing graphical objects...
Interpreting music...[8]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
Converting to `transpozice.pdf'...
Success: compilation successfully completed
```
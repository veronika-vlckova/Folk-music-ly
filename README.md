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
$ lilypond Valašský\ pochod.ly
```

Pokud je vše bez bych tak uvidíš následující výstup a soubor `Valašský pochod.pdf` bude připraven k tisku.

```
GNU LilyPond 2.22.2 (running Guile 2.2)
Processing `Valašský pochod.ly'
Parsing...
Interpreting music...[8]
Preprocessing graphical objects...
Finding the ideal number of pages...
Fitting music on 1 page...
Drawing systems...
Converting to `Valašský pochod.pdf'...
Success: compilation successfully completed
```
<!--
```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
-->

(geometry:analytic)=
# Introduzione alla geometria analitica

La geometria analitica si occupa dello studio delle figure geometriche nello spazio tramite l'uso di **sistemi di coordinate**: la scelta dei sistemi di coordinate può spesso essere arbitaria, spesso guidata da criteri di "comodità"; i risultati sono indipendenti dalla scelta.

L'uso di sistemi di coordinate per la descrizione dello spazio crea un legame tra la **geometria** e l'**algebra**:
  - da un lato, le entità geometriche possono essere rappresentate con funzioni, equazioni e/o disequazioni che coinvolgono le coordinate;
  - dall'altro, ai problemi algebrici si può dare un'interpretazione geometrica.

```{admonition} René Decartes (1596-1650) 
:class: dropdown

- Razionalismo moderno
- Nel 1637 Cartesio formalizzò le basi della geometria analitica, o geometria cartesiana, nel libro *Geometria*, introdotto dal suo più famoso *Discorso sul metodo*.
- Il lavoro di Cartesio fornisce strumenti fondamentali usati nella seconda metà del XVII secolo da Newton e Leibniz per sviluppare il [calcolo infinitesimale](math-hs:calculus), e contemporanemente la [meccanica razionale](https://basics2022.github.io/bbooks-physics-hs/ch/mechanics) di Newton.

```

<!--
```{admonition} Pierre de Fermat (1601-1665)
:class: dropdown
...

```
-->

```{admonition} Requisiti
:class: warning, dropdown

- ...

```

```{admonition} Argomenti derivanti
:class: tip, dropdown

- [Calcolo infinitesimale]()
- [Meccanica classica]()

```

```{dropdown} Argomenti del capitolo
:open:

[**Spazi euclidei**](geometry:analytic:euclidean-space). Viene data una formalizzazione del concetto di spazio euclideo $E^d$, un modello dello spazio come percepito da noi nella nostra esperienza quotidiana. Negli spazi euclidei è possibile applicare senza troppe complicazioni - e non diremo altro - gli strumenti dell'[algebra vettoriale](math-hs:algebra:vector), usati qui per introdurre le coordinate cartesiane, e la misura di distanzee angoli in spazi euclidei.

[**Geometria nel piano - spazio euclideo 2D, $E^2$**](geometry:analytic:2d).
- [Sistemi di coordinate](geometry:analytic:2d:coordinates)
- [Curve nel piano](geometry:analytic:2d:curves)
  - [Rette](geometry:analytic:2d:lines)
  - [Coniche](geometry:analytic:2d:conics)

[**Geometria nello spazio euclideo 3D, $E^3$**](geometry:analytic:3d).
- [Sistemi di coordinate](geometry:analytic:3d:coordinates)
- [Piani nello spazio](geometry:analytic:3d:planes)
- [Curve nello spazio](geometry:analytic:3d:curves)
  - [Rette](geometry:analytic:3d:lines)
- [Coniche come sezione di un cono](geometry:analytic:3d:cone)

```

<!--
```{list-table}
:header-rows: 0
* - ![](../media/analytic-geometry-graphical-sln-equation.png)
  - ![](../media/analytic-geometry-graphical-sln-system-eqn.png)
  - ![](../media/analytic-geometry-graphical-sln-system-ineq.png)
* - Soluzione grafica dell'equazione $f(x) = 0$
  - Soluzione grafica del sistema di equazioni $\begin{cases} F(x,y) = 0 \\ G(x,y)=0 \end{cases}$
  - Soluzione grafica del sistema di disequazioni $\begin{cases} y > f(x) \\ y > g(x) \end{cases}$
```
-->

<!--
**Argomenti.**

**Geometria nel piano - spazio euclideo 2D, $E^2$**

- [Sistemi di coordinate](geometry:analytic:2d:coordinates) *Cartesiane e polari; trasformazione tra sistemi di coordinate: polari e cartesiane; cartesiano-cartesiano: traslazione e rotazione*

- [Punti](geometry:analytic:2d:points)

- [Rette](geometry:analytic:2d:lines)

- [Coniche](geometry:analytic:2d:conics) **todo** *parabola, ellisse, iperbole: def, caratteristiche, descrizione in coord. cartesiane e polari; riferimento a gravitazione in meccanica classica*

**Geometria nello spazio euclideo 3D, $E^3$**

  -  Sistemi di coordinate
  -  Punti
  -  Rette
  -  Piani
  -  Cono e rivisitazione delle coniche
  -  Superfici quadratiche
-->

<!--
## Geometria
La geometria si occupa della descrizione e della misura dello spazio e degli oggetti presenti in esso.

**Geometria euclidea** Formulazione assiomatica della geometria negli *Elementi* di Euclide. L'opera di Euclide contiene i risultati di geometria noti al tempo, IV-III secolo a.C., ed è la base dei principi di geometria insegnati ancora oggi.

Si occupa di elementi geometrici nel piano 2-dimensionale o nello spazio 3-dimensionale. In ordine di complessità, si occupa inizialmente della geometria piana, introducendo concetti primitivi (punto,...), **todo** *...concentrandosi su angoli, rette e triangoli, oggetti elementari nei quali è possibile scomprre altre figure piane*

**Geometria analitica** Si occupa dello studio di elementi geometrici, con l'uso di sistemi di coordinate. **todo** *E'possibile usare diversi tipi di sistemi di coordinate, come ad esempio coord. cartesiane o polari nel piano.*
Questo approccio permette di associare un elemento geometrico a un'equazione che rappresenta il legame tra le coordinate dei suoi punti: la geometria analitica rappresenta quindi un **ponte** tra la geometria e l'algebra.

**todo** *Gli oggetti geometrici sono indipendenti dai sistemi di riferimento usati per descriverli; si può quindi definire i sistemi di riferimento per rendere la descrizione la più semplice possibile*

**todo** *Si possono riconoscere i punti di uno spazio euclideo come elementi di uno* **spazio vettoriale**. Si possono quindi usare gli strumenti dell'algebra e del calcolo lineare (vettoriale).

**todo: argomenti.** *Geometria piana: coordinate; distanza; retta; coniche;... Geometria nello spazio euclideo 3-dimensionale: coordinate; distanza; retta; piano; superfici quadratiche*

**Geometria differenziale** Si occupa dello studio di oggetti geometrici differenziabili, lisci, come curve e superfici. **todo** *Grandezze locali (differenziali): normale, curvatura,...; grandezze globali (integrali): lunghezza, superficie, volume; massa, momenti di inerzia;...*
-->

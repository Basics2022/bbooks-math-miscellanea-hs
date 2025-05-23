(vector-calculus:intro)=
# Introduzione al calcolo vettoriale su spazi euclidei

Questo capitolo è un'introduzione al calcolo vettoriale in spazi euclidei, estendendo gli strumenti del calcolo alle funzioni (scalari o vettoriali) definite in uno [spazio euclideo](geometry:analytic:euclidean-space), limitandosi al caso di $E^2$ ed $E^3$.

Il capitolo è suddiviso nelle seguenti sezioni:

```{dropdown} [**Cenni di geometria differenziale e descrizione dello spazio con coordinate.**](vector-calculus:geometry)

Lo spazio e le entità geometriche in esso possono essere rappresentate tramite l'uso di un **sistema di coordinate**. Vengono presentati alcuni sistemi di coordinate comuni (cartesiane e polari in $E^2$, cartesiane, cilindriche, sferiche in $E^3$) apppoggiandosi ai sistemi di coordinate cartesiane. Vengono introdotti concetti geometrici indotti dalla scelta del sistema di coordinate: i vettori di una base locale naturale, le curve coordinate e le superfici coordinate.

Vengono dati dei fondamenti di geometria differenziale, limitandosi ai concetti che risulteranno utili in seguito nella rappresentazione di curve, superfici e volumi negli spazi euclidei: vengono fornite le espressioni degli elementi infinitesimi di curva, superficie e volume rispetto a sistemi di coordinate generiche; vengono fornite le espressioni dei versori tangenti alle curve e normali alle superfici; questi enti geometrici risultano utili nel calcolo degli integrali che coninvolgono densità o negli integrali di lavoro o di flusso, che verranno discussi nella sezione sugli [integrali su spazi euclidei](vector-calculus:integrals).

Infine, viene introdotto il concetto di **campo** - funzioni definite nello spazio - e la loro rappresentazione come funzione delle coordinate usate per dscrivere lo spazio.

<span style="color:red">Dal punto di vista concettuale, si mette in evidenza da una parte un "criterio di semplicità" per la scelta di un sistema di coordinate per rappresentare un fenomeno o risolvere un problema, e dall'altra il concetto di **invarianza rispetto alla scelta del sistema di coordinate** dello spazio e delle funzioni definite in esso.</span>

<span style="color:red"> **todo** *Tenendo bene in mente la definizione dei sistemi di coordiante utilizzati per la rappresentazione parametrica dello spazio e degli elementi geometrici in esso, il calcolo vettoriale può essere ricondotto al calcolo multi-variabile*</span>
```

```{dropdown} [**Integrali su domini in spazi euclidei.**](vector-calculus:integrals)

Viene esteso il concetto di integrale a funzioni definite su domini - luoghi geometrici - contenuti nello spazio euclideo. Vengono introdotti alcuni integrali che compaiono frequentemente nell'ambito delle scienze - integrali di linea (densità e lavoro), integrali di superficie (densità e flusso), integrali di volume (densità). Viene mostrato il procedimento pratico per calcolare tali integrali grazie all'uso di coordinate, tramite esempi. Questi integrali rappresentano lo strumento matematico necessario per alcune applicazioni che riguardano problemi continui, come ad esempio:
- calcolo di lunghezza di curve, area di superfici e volumi di solidi
- calcolo di proprietà meccaniche di un sistema, ad esempio le proprietà inerziali di un sistema legate alla sua distribuzione di massa $\rho(P)$: massa, centro di massa, momenti di inerzia
- calcolo di integrali ricorrenti in fisica: lavoro di una forza, circuitazione di un campo lungo una linea chiusa, flusso di un campo attraverso una superficie. 
```

```{dropdown} [**Operatori differenziali in spazi euclidei.**](vector-calculus:derivatives)

Viene esteso il concetto di derivata (**todo** *introdotto inizialmente per funzioni reali, e poi per funzioni di più variabili*) e applicato ai campi; vengono presentati alcuni operatori che compaiono frequentemente nell'ambito delle scienze e dal chiaro significato fisico, riconducibili alla derivata direzionale, circuitazione e flusso.
```

```{dropdown} [**Teorema di Stokes.**](vector-calculus:stokes)

Vengono presentati dei teoremi che coinvolgono l'integrale di operatori differenziali, e consentono di trasformare particolari integrali di superficie - tra cui l'integrale di **flusso** - in integrali di volume (e viceversa), e particolari integrali di linea - tra cui l'integrale di **circuitazione** - in integrali di superficie (e viceversa). I teoremi del gradiente, della divergenza e del rotore che vengono presentati nell'ultima sezione di questo capitolo  sono diverse manifestazioni di un teorema più generale, il **teorema di Stokes**, che qui non verrà presentato nella sua forma più generale[^stokes-thm].
```

[^stokes-thm]: La presentazione della forma generale del teorema di Stokes è ben al di là dello scopo di questo materiale, che si è già spinto in là a sufficienza.


<!--
Viene definito **campo scalare** una funzione $f(P)$ a valori reale definita sui punti $P$ di uno spazio euclideo $E^n$, $f: E^n \rightarrow \mathbb{R}$.
Viene definito **campo vettoriale** una funzione $\vec{f}(P)$ a valori vettoriali definita sui punti $P$ di uno spazio euclideo $E^n$, $\vec{f}: E^n \rightarrow V$.
**todo** *esistono anche i tensori...lo diciamo?*

Il calcolo vettoriale è lo strumento naturale per la descrizione di problemi di geometria e fisica, garantendo l'**invarianza** del problema affrontato dalla descrizione adottata. *esempi: proprietà geometriche, inerziali, flussi e circuitazioni,...*

Una volta introdotta una parametrizzazione dello spazio con un insieme di coordinate $P(q^1,...,q^n)$, il calcolo vettoriale può essere ricondotto al calcolo multi-variabile.


**todo** *Contenuti.*

Operatori differenziali:
- derivata direzionale
- gradiente
- divergenza
- rotore

Integrali:
- calcolo di lunghezze, aree e volumi
- calcolo di proprietà fisiche di un sistema:
  - massa, centro di massa, momenti di inerzia
- calcolo di integrali particolari:
  - integrale di volume
  - flusso attraverso una superficie
  - integrale lungo una curva e circuitazione
-->

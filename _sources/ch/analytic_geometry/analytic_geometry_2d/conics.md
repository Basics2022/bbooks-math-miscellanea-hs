(geometry:analytic:2d:conics)=
# Coniche

Le coniche sono curve che possono essere ottenute come intersezione tra un piano e un (doppio) cono circolare retto, come [dimostrabile con gli strumenti della geometria nello spazio](geometry:analytic:3d:cone:conics).

Queste curve compaiono in diversi ambiti della matematica e della fisica. Ad esempio,
- in **geometria**: 
- in **ottica**: le coniche hanno proprietà geometriche che risultano utili in **ottica**, e nella trasmissione delle informazioni (le antenne paraboliche si chiamano così, poiché hanno la forma di un paraboloide)
- in **meccanica**: le traiettorie di due corpi isolati soggetti alla mutua interazione con intensità inversamente proprozionale al quadrato della loro distanza sono coniche; sono coniche quindi le orbite
- di due corpi soggetti a mutua gravitazione in astronomia
- di due corpi soggetti a mutua interazione elettrica

<!--
```{list-table}
:header-rows: 0
* - ![](../../../media/analytic-geometry-conics-optics-ellipses.png)
  - ![](../../../media/analytic-geometry-conics-optics-parabola.png)
  - ![](../../../media/analytic-geometry-conics-optics-hyperbola.png)
```
-->
`````{only} html

````{dropdown} Proprietà ottiche
```{list-table}
:header-rows: 0
* - ![](../../../media/tikz/geometry/circumference-ray.svg)
  - ![](../../../media/tikz/geometry/ellipses-ray.svg)
```
```{list-table}
:header-rows: 0
* - ![](../../../media/tikz/geometry/parabola-ray.svg)
  - ![](../../../media/tikz/geometry/hyperbola-ray.svg)
```

````

````{dropdown} Sezioni di cono

```{list-table}
:header-rows: 0
* - ![](../../../media/geometry/cone-circumference.png)
  - ![](../../../media/geometry/cone-ellipse.png)
```

```{list-table}
:header-rows: 0
* - ![](../../../media/geometry/cone-parabola.png)
  - ![](../../../media/geometry/cone-hyperbola.png)
```
````
`````

Le coniche possono essere definite in maniera implicita, senza fare uso di sistemi di coordinate. Partendo da definizioni implicite equivalenti, e sfruttando l'arbitrarietà nel definire il sistema di coordinate più comodo, vengono ricavate 
- prima, le equazioni delle coniche in **forma canonica** con un'opportuna scelta di sistemi di coordinate 
- poi, l'equazione in forma generale di una conica nel piano, ottenuta tramite una trasformazione rigida - roto-traslazione - della curva o, viceversa, delle coordinate.

Queste curve possono essere definite a partire da un punto $F$, detto **fuoco**, e una retta $d$, detta **direttrice** come verrà fatto per ricavare le [equazioni in coordinate polari](geometry:analytic:2d:conics-polar) delle coniche.
```{dropdown} Definizione in termini di eccentricità
Una conica può essere definita come il luogo dei punti $P$ dello spazio per i quali il rapporto tra la distanza dal fuoco e dalla direttrice è costante,

$$e = \frac{\text{dist}(P,F)}{\text{dist}(P,d)} \ .$$

Questo rapporto viene definito **eccentricità** della conica e il suo valore determina la figura geometrica descritta:
- $e<1$, ellisse;
il caso particolare della circonferenza con eccentricità nulla, con $\text{dist}(P,d) \rightarrow \infty$
- $e=1$, parabola;
- $e>1$, iperbole;

Esistono due fuochi e due direttrici per ogni ellisse e ogni iperbole.
```

E' possibile definire le coniche anche grazie alla proprietà che caratterizza la distanza dei punti della conica dai fuochi, come verrà fatto per trovare le [equazioni in coordinate cartesiane](geometry:analytic:2d:conics-cartesian) delle coniche.
```{dropdown} Definizione in termini di distanza dai fuochi
- una circonferenza è il luogo dei punti del piano che hanno distanza costante da un punto $C$,

 $$|P - C| = R \ ,$$

- un'ellisse è il luogo dei punti del piano che hanno la somma delle distanze da due punti dati, i fuochi $F_1$ e $F_2$, costante,

  $$|P-F_1| + |P-F_2| = 2 \, a \ ,$$

- una parabola è il luogo dei punti del piano equidistante da un punto $F$, il fuoco della parabola, e da una retta $d$, la direttrice

 $$|P - C| = \text{dist}(P,d) \, $$

- un'iperbole è il luogo dei punti del piano che hanno la differenza delle distanze da due punti dati, i fuochi $F_1$ e $F_2$, costante,

  $$|P-F_1| - |P-F_2| = 2 \, a \ ,$$

  avendo considerato il modulo delle distanze per comprendere entrambi i rami dell'iperbole
```

<!--
Queste curve compaiono in alcuni ambiti di interesse pratico:
- ottica e acustica geometrica 
- gravitazione: secondo la meccanica di Newton, i corpi celesti descrivono traiettorie nello spazio che hanno la forma delle curve coniche:
- in altri ambiti della scienza in cui compaiono funzioni quadratiche

Per la loro relativa semplicità e frequenza con la quale appaiono in diverse applicazioni, lo studio delle coniche si presenta come utile argomento per l'applicazione delle nozioni di geometria analitica apprese finora.

Le coniche possono essere definite tramite pochi elementi geometrici caratteristici, come un punto di riferimento $F$ detto **fuoco** e una retta di riferimento $d$ detta **direttrice**.  

- equazione delle coniche usando le coordinate cartesiane
- equazione delle coniche usando le coordinate polari
- proprietà geometriche delle coniche
- coniche come sezione di un cono circolare
- coniche e gravitazione di Newton
-->

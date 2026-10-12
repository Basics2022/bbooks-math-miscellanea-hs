(geometry:analytic:2d:coordinates)=
# Sistemi di coordinate

Il piano è uno spazio euclideo a due dimensioni, poiché i suoi punti possono essere descritti da una coppia di numeri - coordinate. I sistemi di coordiante più comuni per la rappresentazione dei punti del piano sono i **sistemi di coordinate cartesiane** e i **sistemi di coordinate polari**. Si possono scegliere diversi sistemi di coordinate (tipicamente si sceglie il sistema più comodo per il problema da affrontare) per descrivere lo stesso problema: il problema rimane comunque invariante rispetto alla scelta arbitraria del sistema di coordinate. Questa invarianza è direttamente legata alla legge di trasformazione delle coordinate di diversi sistemi.

L'invarianza di un problema dalla scelta arbitraria del sistema di coordinate viene discussa nell'esempio {prf:ref}`ex-coords-cartesian-polar`.

(geometry:analytic:2d:coordinates:examples)=
## Esempi

**Sistema di coordinate cartesiane, $(x,y)$.** Per corstuire un sistema di coordinate cartesiane, servono:
- un punto del piano come origine, comunemente indicato con la lettera $O$
- due direzioni perpendicolari, tipicamente rappresentate con i due assi cartesiani, e - se non c'è altra ragione - tipicamente scelti come un asse orizzontale orientato verso destra, l'asse $x$ o delle ascisse, e un asse verticale orientato verso l'alto, l'asse $y$ o delle ordinate
- due unità di misura (tipicamente uguali) sugli assi.

Costruito questo sistema di coordinate, un punto $P$ può essere identificato con la coppia ordinata di valori $(x_P, y_P)$, le coordinate cartesiane del punto, definite come le proiezioni ortogonali del punto $P$ sui due assi.

**Sistema di coordinate polari.** $(r, \theta)$. Per costruire un sistema di coordinate polari, servono
- un punto del piano come origine, comunemente indicato con la lettera $O$. La coordinata radiale $r_P$ di un punto $P$ è la sua distanza dall'origine $O$
- una direzione di riferimento, rispetto alla quale misurare gli angoli, nella forma di semiretta uscente da $O$. Tipicamente - se non c'è altra ragione - si sceglie la semiretta orizzontale orientata verso destra. Gli angoli $\theta$ sono positivi in senso antiorario rispetto alla semiretta di riferimento. E' comune e naturale misurare gli angoli in *radianti*.


```{list-table}
:header-rows: 0
* - ![](../../../media/tikz/geometry/coordinates-cartesian.svg)
  - ![](../../../media/tikz/geometry/coordinates-cartesian-polar.svg)
  - ![](../../../media/tikz/geometry/coordinates-polar.svg)
```

```{prf:example} Coordinate cartesiane e coordinate polari
:label: ex-coords-cartesian-polar

Una volta definito il sistema di coordinate cartesiano rappresentato nella figura di sinistra, i tre punti $A$, $B$, $C$ possono essere identificati con le loro coordinate cartesiane rispetto a questo sistema di riferimento

$$\begin{aligned}
A: \ & (x_A, y_A) = (3,5) \\
B: \ & (x_B, y_B) = (-4, 3) \\
C: \ & (x_C, y_C) = (1, -4) \\
\end{aligned}$$

```





(geometry:analytic:2d:coordinates:transform)=
## Trasformazione di coordinate

Vengono discusse alcune leggi di trasformazione tra le coordinate di diversi sistemi di coordinate.

(geometry:analytic:2d:coordinates:transform:cartesian-polar)=
## Trasformazione tra coordinate cartesiane e polari

Se si usano le stesse unità di misura per la lunghezza sui due assi cartesiani, e per la coordinata polare di un sistema di riferimento polare, la legge di trasformazione delle coordinate tra un sistema di coordinate cartesiane ortonormale e un sistema di coordinate polari, con la stessa origine e l'asse $x$ come direzione di riferimento per la misura dell'angolo $\theta$ è

$$\begin{cases}
  x = r \cos \theta \\
  y = r \sin \theta \ .
\end{cases}$$

Note le coordinate $x$, $y$ si possono calcolare le coordinate polari come

$$\begin{cases}
  r = \sqrt{x^2 + y^2} \\
  \theta \quad \text{tale che} \quad \cos \theta = \frac{x}{\sqrt{x^2+y^2}} \quad \text{e} \quad \sin \theta = \frac{y}{\sqrt{x^2+y^2}}
\end{cases}$$


(geometry:analytic:2d:coordinates:transform:cartesian)=
### Trasformazione di coordinate tra sistemi cartesiani con origine e assi diversi


```{list-table}
:header-rows: 0
* - ![](../../../media/tikz/geometry/plane-coord-transf-transl.svg)
  - ![](../../../media/tikz/geometry/plane-coord-transf-rot.svg)
  - ![](../../../media/tikz/geometry/plane-coord-transf-transl-rot.svg)
```




**Traslazione dell'origine di due sistemi cartesiani con assi allineati.**

$$\begin{cases}
  x' = x - x_{O'} \\
  y' = x - y_{O'}
\end{cases}$$

$$\underline{x}' = \underline{x} - \underline{x}_{O'}$$

**Rotazione degli assi di due sistemi cartesiani con stessa origine.**

$$\begin{cases}
  x' = x \cos \theta + y \sin \theta \\
  y' =-x \sin \theta + y \cos \theta
\end{cases}$$

$$\underline{x}' = R \underline{x}$$

**Traslazione dell'origine e rotazione degli assi di due sistemi di coordinate cartesiane.**


$$ x \rightarrow T \rightarrow x' \rightarrow R \rightarrow x''$$
$$\begin{aligned}
\underline{x}' & = \underline{x} - \underline{x}_{O'} \\
\underline{x}'' & = R \underline{x}' = R \, (\underline{x} - \underline{x}_{O'}) \\
\end{aligned}$$

$$ x \rightarrow R \rightarrow x' \rightarrow T \rightarrow x''$$
$$\begin{aligned}
\underline{x}'  & = R \, \underline{x}  \\
\underline{x}'' & = \underline{x}' - \underline{x}'_{O''} = R \, \underline{x} - \underline{x}'_{O''} \\ 
\end{aligned}$$

**todo.** Descrivere immagine
**Altri esempi di coordinate e trasformazioni di coordinate.** **todo.** come esercizio?

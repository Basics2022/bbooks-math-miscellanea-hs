(geometry:analytic:2d:coordinates)=
# Punti nel piano. Sistemi di coordinate

Il piano è uno spazio euclideo a due dimensioni, poiché i suoi punti possono essere descritti da una coppia di numeri - coordinate. I sistemi di coordiante più comuni per la rappresentazione dei punti del piano sono i **sistemi di coordinate cartesiane** e i **sistemi di coordinate polari**. Si possono scegliere diversi sistemi di coordinate (tipicamente si sceglie il sistema più comodo per il problema da affrontare) per descrivere lo stesso problema: il problema rimane comunque invariante rispetto alla scelta arbitraria del sistema di coordinate. Questa invarianza è direttamente legata alla legge di trasformazione delle coordinate di diversi sistemi.

<!--
L'invarianza di un problema dalla scelta arbitraria del sistema di coordinate viene discussa nell'esempio {prf:ref}`ex-coord-invariance-interactive`.
-->

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
* - ![Rappresentazione di 3 punti con coordinate cartesiane $P equiv (x_P, y_P)$](../../../media/tikz/geometry/coordinates-cartesian.svg)
  - ![Rappresentazione di 3 punti con coordinate polari $P equiv (r_P, \theta_P)$](../../../media/tikz/geometry/coordinates-polar.svg)

```
Rappresentazione di punti nel piano. Nell'immagine di sinistra, vengono usate coordinate cartesiane $P \equiv (x_P, y_P)$. Nell'immagine di destra, vengono usate coordinate polari $P \equiv (r_P, \theta_P)$. L'unità di misura naturale degli angoli sono i **radianti**.




(geometry:analytic:2d:coordinates:transform)=
## Trasformazione di coordinate

Vengono discusse alcune leggi di trasformazione tra le coordinate di diversi sistemi di coordinate.

<!--
L'esempio {prf:ref}`ex-coord-invariance-interactive` mostra la variazione delle coordinate di un punto $P$ al variare del sistema di coordinate scelto.
-->

<!--
```{prf:example} Esempio interattivo di trasformazione di coordinate di un punto $\ P$ nel piano, e invarianza
:label: ex-coord-invariance-interactive

In questo esempio viene mostrata la trasformazione di coordinate di un punto $P$ appartenente a un piano. Senza toccare il punto $P$ rispetto al piano, ma modificando i sistemi di riferimento, le coordinate cambiano. 


<iframe src="../../../_static/coordinate-transform.html" width="100%" height="800" style="border:0"></iframe>

height="1100"


```
-->

(geometry:analytic:2d:coordinates:transform:cartesian-polar)=
### Trasformazione tra coordinate cartesiane e polari con stessa origine

In questa sezione viene discussa la trasformazione di coordinate tra un sistema cartesiano e un sistema polare
* con la stessa origine
* con le stesse unità di misura per la lunghezza sui due assi cartesiani, e per la coordinata radiale $r$ di un sistema di riferimento polare,

Sotto queste ipotesi, la legge di trasformazione delle coordinate tra un sistema di coordinate cartesiane ortonormale e un sistema di coordinate polari, con la stessa origine e l'asse $x$ come direzione di riferimento per la misura dell'angolo $\theta$ è

$$\begin{cases}
  x = r \cos \theta \\
  y = r \sin \theta \ .
\end{cases}$$

Note le coordinate $x$, $y$ si possono calcolare le coordinate polari come

$$\begin{cases}
  r = \sqrt{x^2 + y^2} \\
  \theta \quad \text{tale che} \quad \cos \theta = \frac{x}{\sqrt{x^2+y^2}} \quad \text{e} \quad \sin \theta = \frac{y}{\sqrt{x^2+y^2}}
\end{cases}$$ (eq:coords:cartesian-to-polar)

![](../../../media/tikz/geometry/coordinates-cartesian-polar.svg)


````{prf:example} Coordinate cartesiane e coordinate polari
:label: ex-coords-cartesian-polar

```{list-table}
:header-rows: 0
* - ![](../../../media/tikz/geometry/coordinates-cartesian-1.svg)
  - ![](../../../media/tikz/geometry/coordinates-polar-1.svg)
```

Una volta definito il sistema di coordinate cartesiano rappresentato nella figura di sinistra, i tre punti $A$, $B$, $C$ possono essere identificati con le loro coordinate cartesiane rispetto a questo sistema di riferimento

$$\begin{aligned}
A: \ & (x_A, y_A) = (2, 2\sqrt{3}) \\
B: \ & (x_B, y_B) = (-4, 4) \\
C: \ & (x_C, y_C) = (0, -3) \\
\end{aligned}$$

Usando le relazioni {eq}`eq:coords:cartesian-to-polar`, si possono calcolare le coordinate polari dei punti $A$, $B$, $C$, rispetto a un sistema di coordinate polari con la stessa origine e con l'asse $x$ come direzione di riferimento per la misura degli angoli. Ad esempio, per il punto $A$

* la coordinata radiale $r_A$ è

   $$r_A = \sqrt{x_A^2 + y_A^2} = \sqrt{ 4 + 12 } = 4$$

* la coordinata angolare $\theta_A$ è quell'angolo che ha 
  
   $$\begin{aligned}
      \cos \theta_A & = \frac{x_A}{r_A} = \frac{2}{4} = \frac{1}{2} \\
      \sin \theta_A & = \frac{y_A}{r_A} = \frac{2 \sqrt{3}}{4} = \frac{\sqrt{3}}{2} \ ,
   \end{aligned}$$

   e quindi è l'angolo  $\theta_A = \frac{\pi}{3}$, cioè l'angolo di $60^\circ$.


````


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

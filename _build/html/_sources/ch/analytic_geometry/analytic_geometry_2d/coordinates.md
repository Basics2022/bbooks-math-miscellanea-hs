(geometry:analytic:2d:coordinates)=
# Sistemi di coordinate

## Esempi
**Sistema di coordinate cartesiane ortonormale.** $(x, y)$

**Sistema di coordinate polari.** $(r, \theta)$. La legge di trasformazione delle coordinate tra un sistema di coordinate cartesiane ortonormale e un sistema di coordinate polari, con la stessa origine e l'asse $x$ come direzione di riferimento per la misura dell'angolo $\theta$ è

$$\begin{cases}
  x = r \cos \theta \\
  y = r \sin \theta \ .
\end{cases}$$

```{list-table}
:header-rows: 0
* - ![](../../../media/tikz/geometry/coordinates-cartesian.svg)
  - ![](../../../media/tikz/geometry/coordinates-polar.svg)
  - ![](../../../media/tikz/geometry/coordinates-cartesian-polar.svg)
```

**todo.** Descrivere immagine

## Trasformazione di coordinate

Vengono discusse alcune leggi di trasformazione tra le coordinate di diversi sistemi di coordinate.


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

```{list-table}
:header-rows: 0
* - ![](../../../media/tikz/geometry/plane-coord-transf-transl.svg)
  - ![](../../../media/tikz/geometry/plane-coord-transf-rot.svg)
  - ![](../../../media/tikz/geometry/plane-coord-transf-transl-rot.svg)
```

**todo.** Descrivere immagine
**Altri esempi di coordinate e trasformazioni di coordinate.** **todo.** come esercizio?

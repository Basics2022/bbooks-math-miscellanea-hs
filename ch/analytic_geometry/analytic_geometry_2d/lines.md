(geometry:analytic:2d:lines)=
# Rette nel piano

## Definizioni ed equazione
Per Euclide, il concetto di retta è un concetto primitivo.

<!--
```{figure} ./../../../media/line-point-vector.svg
---
scale: 50%
align: left
---
Def. 1
```
-->

Per trovare l'equazione di una retta, si possono usare delle definizione equivalenti.

**Def. 1 Passaggio per un punto e direzione: equazione parametrica.**

$$P = P_0 + \lambda \overrightarrow{v}$$

$$r: \begin{cases}
  x(p) = x_0 + p \ d_x \\
  y(p) = y_0 + p \ d_y \\
\end{cases}
\qquad \text{o} \qquad
  \mathbf{r}(p) = \mathbf{r}_0 + p \mathbf{d} 
$$

**Def. 2** Una retta è il luogo geometrico dei punti equidistanti da due punti distinti nel piano, $P_1$, $P_2$. Usando un sistema di coordinate cartesiano, $P_1 = (x_1, y_1)$, $P_2 = (x_2, y_2)$, mentre le coordinate di un punto $P$ appartenente alla retta sono $(x,y)$

$$|P - P_1| = |P-P_2|$$

$$\begin{aligned}
 (x - x_1)^2 + (y - y_1)^2 &=  (x - x_2)^2 + (y - y_2)^2 \\
 x^2 - 2 x x_1 + x_1^2 + y^2 - 2 y y_1 + y_1^2 &=  x^2 - 2 x x_2 + x_2^2 + y^2 - 2 y y_2 + y_2^2 \\
\end{aligned}$$
$$  2 ( x_2 - x_1 ) x + 2 ( y_2 - y_1 ) y - x_1^2 - y_1^2 - x_2^2 - y_2^2 = 0 $$


## Posizioni reciproche
### Posizione reciproca di punto e retta
**Punto appartenente alla retta.** Una retta $r$ passa per un punto $P$ assegnato se le coordinate del punto $P$ soddisfano le equazioni che descrivono la retta.

**Distanza punto-retta.** per calcolare la distanza punto-retta si può 




### Posizione reciproca di rette
**Rette coincidenti.** Due rette sono coincidenti se si possono scrivere le loro equazioni come

$$\begin{aligned}
  r_1: \ \mathbf{r}_1(p_1) = \mathbf{r}_{1,0} + p_1 \ \mathbf{d}_1 \\
  r_2: \ \mathbf{r}_2(p_2) = \mathbf{r}_{2,0} + p_2 \ \mathbf{d}_2
\end{aligned}$$

con 

$$\mathbf{r}_{1,0} = \mathbf{r}_{2,0} \qquad , \qquad \mathbf{d}_1 \propto \mathbf{d}_2$$

**Rette parallele nel piano.**

$$\mathbf{d}_1 \propto \mathbf{d}_2$$

**Rette incidenti.**

$$\mathbf{d}_1 \cdot \mathbf{d}_2 \ne 0$$

**Rette incidenti perpendicolari.**

$$(\mathbf{r}_1 - \mathbf{r}_{0,1}) \cdot \mathbf{r}_2 - \mathbf{r}_{0,2}) = 0 \qquad , \qquad \mathbf{d}_1 \cdot \mathbf{d}_2 = 0$$

## Distanza punto retta
Dato il punto $P_1 = (x_1, y_1)$, $r: a x + b y + c = 0$,

$$|r - P_1| = \min_{P \in r} |P - P_1|$$

$$\begin{aligned}
|r - P_1|^2 = ( x - x_1 )^2 + ( y - y_1 )^2 
\end{aligned}$$

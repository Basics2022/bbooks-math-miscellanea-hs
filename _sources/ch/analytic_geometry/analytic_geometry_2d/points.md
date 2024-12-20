(geometry:analytic:2d:points)=
# Distanze e angoli

## Distanza tra punti
Usando un sistema di coordinate cartesiane, la distanza tra due punti nel piano viene calcolata usando il teorema di Pitagora ,

$$d_{12} = |P_2 - P_1| = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2}$$

In maniera equivalente viene il modulo (o lunghezza) di un vettore $\vec{v} = v_x \hat{x} + v_y \hat{y}$,

$$|\vec{v}| = \sqrt{v_x^2 + v_y^2} \ .$$

```{list-table}
:header-rows: 0
* - ![](../../../media/tikz/geometry/distance-cartesian.svg)
  - ![](../../../media/tikz/geometry/distance-cartesian-vector.svg)
```
<!--
## Angoli tra direzioni
Nello spazio euclideo, una direzione con verso può essere identificata da un vettore $\vec{v}$. Date due direzioni con verso identificate dai vettori $\vec{u}$, $\vec{v}$, l'angolo formato tra i due vettori può essere identificato dalla proiezione di un vettore sull'altro tramite il prodotto interno

$$\vec{u} \cdot \vec{v} := |\vec{u}| |\vec{v}| \cos \theta_{uv} \ ,$$

e usando un sistema di coordinate cartesiano

$$\vec{u} \cdot \vec{v} = u_x v_x + u_y v_y \ .$$

**todo** Dimostrazione con $\vec{u} = u_x \hat{x} + u_y \hat{y}$, $\vec{v} = v_x \hat{x} + v_y \hat{y}$, $\hat{x} \cdot \hat{x} = \hat{y} \cdot \hat{y} = 1$, $\hat{x} \cdot \hat{y} = 0$.
-->

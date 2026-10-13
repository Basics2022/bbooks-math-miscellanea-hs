(geometry:analytic:2d:points)=
# Distanze e angoli

(geometry:analytic:2d:points:point-point-distance)=
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

(geometry:analytic:2d:points:angles)=
## Angoli tra due direzioni

Due direzioni possono essere rappresentate tramite vettori, $\hat{u}$, $\hat{v}$. Sfruttando le proprietà del prodotto scalare tra due vettori, l'angolo tra di essi vale

$$\cos \theta_{uv} = \frac{\vec{u} \cdot \vec{v}}{|\vec{u}| |\vec{v}| \ .}$$


(geometry:analytic:2d:points:point-line-distance)=
## Distanza punto-retta

La discussione distanza di un punto $A$ da una retta $r$ viene definita come il minimo valore della distanza tra il punto $A$ dato e i punti appartenenti alla retta $r$. La discussione viene rimandata alla sezione [distanza punto-retta](geometry:analytic:2d:lines:distance-point-line) dopo aver discusso la retta nel piano.


<!--
## Angoli tra direzioni
Nello spazio euclideo, una direzione con verso può essere identificata da un vettore $\vec{v}$. Date due direzioni con verso identificate dai vettori $\vec{u}$, $\vec{v}$, l'angolo formato tra i due vettori può essere identificato dalla proiezione di un vettore sull'altro tramite il prodotto interno

$$\vec{u} \cdot \vec{v} := |\vec{u}| |\vec{v}| \cos \theta_{uv} \ ,$$

e usando un sistema di coordinate cartesiano

$$\vec{u} \cdot \vec{v} = u_x v_x + u_y v_y \ .$$

**todo** Dimostrazione con $\vec{u} = u_x \hat{x} + u_y \hat{y}$, $\vec{v} = v_x \hat{x} + v_y \hat{y}$, $\hat{x} \cdot \hat{x} = \hat{y} \cdot \hat{y} = 1$, $\hat{x} \cdot \hat{y} = 0$.
-->

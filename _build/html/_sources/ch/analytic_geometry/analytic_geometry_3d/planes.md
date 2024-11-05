(geometry:analytic:3d:planes)=
# Piani nello spazio

Un piano $\pi$ può essere definito come il luogo dei punti $P$ dello spazio che formano un vettore $(P-Q)$ con un punto dato $Q$ ortogonali a un vettore $\overrightarrow{n}$ che indica la direzione normale al piano $\pi$. Usando le proprietà del prodotto scalare,

$$(P-Q) \cdot \overrightarrow{n} = 0 \ .$$

Usando un sistema di coordinate cartesiane, si può trovare l'equazione implicita del piano $\pi$,

$$\pi: \ (x - x_Q) n_x + (y - y_Q) n_y + (z - z_Q) n_z = 0 \ .$$

**Osservazione.** L'equazione implicita del piano è independente dal modulo del vettore $\vec{n}$, poiché rappresenterebbe un ininfluente fattore moltiplicativo (diverso da zero) nel termine di sinistra quando uguagliato a zero.

Partendo dalla prima definizione, si possono ricavare le equazioni parametriche del piano. Dato il vettore $\vec{n}$, si possono trovare due vettori $\vec{t}_1$, $\vec{t}_2$ a esso ortogonali,

$$\vec{t} \cdot \vec{n} = 0 \ .$$

Se i due vettori non sono tra di loro allineati, o meglio proporzionali, è possibile descrivere tutti i punti del piano come una loro combinazione lineare

$$\pi: \ P = Q + \lambda_1 \vec{t}_1 + \lambda_2 \vec{t}_2 \ .$$

```{list-table}
:header-rows: 0
* - ![](../../../media/analytic-geometry-3d-plane-def.png)
  - ![](../../../media/analytic-geometry-3d-planes-parallel.png)
  - ![](../../../media/analytic-geometry-3d-planes-incident.png)
```

## Posizione reciproca di piani


## Distanza punto-piano
Dato un punto $A$ e un piano $\pi$, di cui sono noti un punto $Q$ e il vettore normale $\vec{n}$, la distanza di $A$ da $\pi$ può essere calcolata come il valore assoluto della proiezione del vettore $A-Q$ lungo la direzione normale al piano, individuata da $\vec{n}$,

$$\text{dist}(A,\pi) = \left| \hat{n} \cdot (A-Q) \right| \ ,$$

avendo usato il vettore unitario $\hat{n} = \frac{\vec{n}}{|\vec{n}|}$ per la proiezione.


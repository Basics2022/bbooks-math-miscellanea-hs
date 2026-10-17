(math-hs:algebra:vector:euclidean-space:2d)=
# Spazio vettoriale euclideo 2-dimensionale: il piano


(math-hs:algebra:vector:euclidean-space:2d:inner-product)=
## Prodotto interno (o scalare) tra vettori e norma ("lunghezza") di un vettore

Uno spazio vettoriale euclideo può essere equipaggiato con un'operazione bilineare, simmetrica (su campi reali), e semi-definita positiva, definita **prodotto interno**,

$$\cdot: \ V \times V \rightarrow \mathbb{R} \ ,$$

definito come

$$\begin{aligned}
  \vec{u} \cdot \vec{v} & := |\vec{u}||\vec{v}| \cos \theta_{\vec{u} \vec{v}}  \\
\end{aligned}$$ (eq:inner-prod:def)

dove $|\vec{u}|$ rappresenta la norma (qualcosa di un po' più generale della lunghezza) del vettore $\vec{v}$. Dalla definizione {eq}`eq:inner-prod:def` si può ricavare il valore della **norma** (**indotta** dal prodotto scalare) di un generico vettore, calcolando il prodotto scalare del vettore $\vec{u}$ con se stesso, cioé $\vec{u} \cdot \vec{u}$. Poiché un generico vettore ha la stessa direzione di se stesso, l'angolo formato è nullo $\theta_{\vec{u} \vec{u}} = 0$, e quindi il coseno dell'angolo è uguale a $1$. Segue quindi che la norma di un vettore indotta da un prodotto scalare è uguale alla radice quadrata del prodotto interno tra il vettore e se stesso,

$$\begin{aligned}
  |\vec{u}| & = \sqrt{\vec{u} \cdot \vec{u}} \ .
\end{aligned}$$

<!--
E' semplice verificare che la definizione di un prodotto interno induce la definizione di una norma. Infatti, calcolando il prodotto interno tra un vettore $\vec{v}$ e se stesso, l'angolo compreso è l'angolo nullo, $\theta_{\vec{v} \vec{v}} = 0$, con $\cos \theta_{\vec{u}\vec{u}} = 0$.
-->

```{prf:example} Prodotto interno e proiezione
:label: ex:inner-product:proj

Il prodotto scalare risulta utile anche nella definizione di operazioni di **proiezione**. Ad esempio, la proiezione ortogonale di un vettore $\vec{v}$ lungo la direzione identificata dal vettore unitario $\hat{u}$ è il vettore

$$\vec{v}_{\parallel \hat{u}} = \hat{u} \left( \hat{u} \cdot \vec{v} \right) \ ,$$

che ha la stessa direzione di $\hat{u}$ e modulo uguale alla proiezione ortogonale di $\vec{v}$ su di esso, $\hat{u} \cdot \vec{v}$. La proiezione del vettore $\vec{v}$ in direzione ortogonale a quella indicata da $\hat{u}$ si può ottenere per differenza e quindi

$$\begin{aligned}
  \vec{v}_{\perp \hat{u}} 
  & = \vec{v} - \vec{v}_{\parallel \hat{u}} = \\
  & = \vec{v} - \hat{u} \left( \hat{u} \cdot \vec{v} \right) = \\
  & = \left[ \hat{I} - \hat{u} \otimes \hat{u} \right] \cdot \vec{v} \ . \\
\end{aligned}$$

dove ci si è concessi la licenza poetica di introdurre nell'ultima riga il tensore di proiezione ortogonale in direzione perpendicolare a $\hat{u}$,

$$\mathbb{P}_{\perp \hat{u}} = \mathbb{I} - \hat{u} \otimes \hat{u} \ ,$$

rappresentazione astratta (vettoriale/tensoriale, che non dipende dalla scelta di una base vettoriale) della trasformazione già mostrata in algebra lineare **todo** *aggiungere riferimento agli esercizi di algebra lineare sulle proiezioni*

**todo** Discutere rappresentazione intrinseca/astratta/vettoriale e per coordinate.

```

<!--
(math-hs:algebra:vector:euclidean-space:2d:vector-product)=
## Prodotto vettoriale

(math-hs:algebra:vector:euclidean-space:2d:mixed-product)=
## Prodotto misto
-->

(math-hs:algebra:vector:euclidean-space:2d:cartesian-basis)=
## Base cartesiana
In uno spazio vettoriale euclideo, $E^2$, è possibile definire una base carteisana, $\{ \hat{x}, \hat{y} \}$, come un'insieme di vettori di norma unitaria e reciprocamente ortogonali,

$$\begin{aligned}
  \hat{x} \cdot  \hat{x} & = \hat{y} \cdot  \hat{y} = 1 \\
  \hat{x} \cdot  \hat{y} & =                          0
\end{aligned}$$

Un vettore di uno spazio vettoriale può essere sempre scritto come combinazione lineare degli elementi di una base vettoriale,

$$\vec{v} = v_x \hat{x} + v_y \hat{y} \ .$$

```{prf:example} Componenti cartesiane

Usando una base cartesiana, è immediato ricavare le coordinate cartesiane di un vettore $\vec{v}$ come il prodotto interno del vettore $\vec{v}$ per i vettori della base,

$$\begin{aligned}
  v_x & = \hat{x} \cdot \vec{v} \\
  v_y & = \hat{y} \cdot \vec{v} \\
\end{aligned}$$

```

```{prf:example} Operazioni vettoriali

Usando una base cartesiana, si possono scrivere:
 - la **moltiplicazione per uno scalare** in componenti,

  $$\begin{aligned}
   a \vec{v}           & = a (v_x \hat{x} + v_y \hat{y} ) = \\
                       & =   ( a v_x ) \hat{x} + ( a v_y ) \hat{y} \ .
  \end{aligned}$$

 - la **somma di vettori** in componenti

  $$\begin{aligned}
     \vec{v} + \vec{w} & =   (v_x \hat{x} + v_y \hat{y} ) + (w_x \hat{x} + w_y \hat{y} ) = \\
                       & =   (v_x + w_x) \hat{x} + (v_y + w_y) \hat{y} \\
  \end{aligned}$$

  - il **prodotto interno** in termini delle componenti cartesiane dei vettori

  $$\begin{aligned}
    \vec{v} \cdot \vec{w}
    & = (v_x \hat{x} + v_y \hat{y} ) \cdot (w_x \hat{x} + w_y \hat{y}) = \\
    & = v_x w_x + v_y w_y \ .
  \end{aligned}$$

```

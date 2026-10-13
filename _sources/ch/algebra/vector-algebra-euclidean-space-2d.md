(math-hs:algebra:vector:euclidean-space:2d)=
# Spazio vettoriale euclideo 2-dimensionale: il piano


(math-hs:algebra:vector:euclidean-space:2d:inner-product)=
## Prodotto interno e distanza


(math-hs:algebra:vector:euclidean-space:2d:vector-product)=
## Prodotto vettoriale

(math-hs:algebra:vector:euclidean-space:3d:mixed-product)=
## Prodotto misto

(math-hs:algebra:vector:euclidean-space:3d:cartesian-basis)=
## Base cartesiana
In uno spazio vettoriale euclideo, $E^2$, è possibile definire una base carteisana, $\{ \hat{x}, \hat{y}, \hat{z} \}$, come un'insieme di vettori di norma unitaria e reciprocamente ortogonali,

$$\begin{aligned}
  \hat{x} \cdot  \hat{x} & = \hat{y} \cdot  \hat{y} = \hat{z} \cdot  \hat{z} = 1 \\
  \hat{x} \cdot  \hat{y} & = \hat{y} \cdot  \hat{z} = \hat{z} \cdot  \hat{x} = 0
\end{aligned}$$

e usando il prodotto vettore per definire l'orientazione dei 3 vettori,

$$\begin{aligned}
  \hat{x} \times \hat{y} & = \hat{z} \\
  \hat{y} \times \hat{z} & = \hat{x} \\
  \hat{z} \times \hat{x} & = \hat{y} \\
\end{aligned}$$

Un vettore di uno spazio vettoriale può essere sempre scritto come combinazione lineare degli elementi di una base vettoriale,

$$\vec{v} = v_x \hat{x} + v_y \hat{y} + v_z \hat{z} \ .$$

Usando una base cartesiana, è immediato ricavare le coordinate cartesiane di un vettore $\vec{v}$ come il prodotto interno del vettore $\vec{v}$ per i vettori della base,

$$\begin{aligned}
  v_x & = \hat{x} \cdot \vec{v} \\
  v_y & = \hat{y} \cdot \vec{v} \\
  v_z & = \hat{z} \cdot \vec{v} \\
\end{aligned}$$

Usando una base cartesiana, si possono scrivere:

 - la **somma di vettori** e la **moltiplicazione per uno scalare** in componenti,

  $$\begin{aligned}
     \vec{v} + \vec{w} & =   (v_x \hat{x} + v_y \hat{y} + v_z \hat{z}) + (w_x \hat{x} + w_y \hat{y} + w_z \hat{z}) = \\
                       & =   (v_x + w_x) \hat{x} + (v_y + w_y) \hat{y} + (v_z + w_z) \hat{z} \\ \\
   a \vec{v}           & = a (v_x \hat{x} + v_y \hat{y} + v_z \hat{z}) = \\
                       & =   ( a v_x ) \hat{x} + ( a v_y ) \hat{y} + ( a v_z ) \hat{z}
  \end{aligned}$$

  - il **prodotto interno** in termini delle componenti cartesiane dei vettori

  $$\begin{aligned}
    \vec{v} \cdot \vec{w}
    & = (v_x \hat{x} + v_y \hat{y} + v_z \hat{z}) \cdot (w_x \hat{x} + w_y \hat{y} + w_z \hat{z}) = \\
    & = v_x w_x + v_y w_y + v_z w_z
  \end{aligned}$$

  - il **prodotto vettoriale**, in termini del determinante formale

  $$\begin{aligned}
    \vec{v} \times \vec{w}
    & = (v_x \hat{x} + v_y \hat{y} + v_z \hat{z}) \times (w_x \hat{x} + w_y \hat{y} + w_z \hat{z}) = \\
    & = (v_y w_z - v_z w_y) \hat{x} + (v_z w_x - v_x w_z) \hat{y} + (v_x w_y - v_y w_x) \hat{z} = \\
    & = \left| \begin{matrix} \hat{x} & \hat{y} & \hat{z} \\ v_x & v_y & v_z \\ w_x & w_y & w_z  \end{matrix} \right|
  \end{aligned}$$






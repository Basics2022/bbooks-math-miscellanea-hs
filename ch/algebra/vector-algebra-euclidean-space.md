```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(math-hs:algebra:vector:euclidean-space)=
# Spazio vettoriale euclideo

**Definizione di uno spazio vettoriale euclideo.**

**todo**

## Prodotto interno e distanza
Uno spazio vettoriale euclideo può essere equipaggiato con un'operazione bilineare, simmetrica (su campi reali), e semi-definita positiva, definita **prodotto interno**,

$$\cdot: \ V \times V \rightarrow \mathbb{R} \ ,$$

che permette di definire la norma di un vettore e l'angolo tra due vettori

$$\begin{aligned}
  \vec{u} \cdot \vec{v} & := |\vec{u}||\vec{v}| \cos \theta_{\vec{u} \vec{v}}  \\
              |\vec{v}| & = \sqrt{\vec{v} \cdot \vec{v}}  \\
\end{aligned}$$

E' semplice verificare che la definizione del prodotto interno induce la definizione della norma. Infatti, calcolando il prodotto interno tra un vettore $\vec{v}$ e se stesso, l'angolo compreso è l'angolo nullo, $\theta_{\vec{v} \vec{v}} = 0$, con $\cos \theta_{\vec{u}\vec{u}} = 0$.


## Prodotto vettoriale
Per lo spazio euclideo $E^3$ è possibile definire anche un'operazione bilineare, antisimmetrica, definita **prodotto vettoriale**,

$$\times: \ V \times V \rightarrow V \ ,$$

in modo tale da avere

$$\vec{u} \times \vec{v} = \hat{k} |\vec{u}| |\vec{v}| \sin \theta_{\vec{u} \vec{v}} \ ,$$

con il vettore $\hat{k}$ ortogonale a entrambi i vettori $\vec{u}$, $\vec{v}$ nella direzione definita dalla regola della mano destra **todo**

- **todo.** E in $E^2$? A volte è comodo assumere che esista una dimensione aggiuntiva, e che quindi ci si trovi in $E^3$. In questo caso, il prodotto vettore di due vettori di $E^2$ è sempre ortogonale ad esso.
- **todo.** Il prodotto vettoriale può essere visto come un caso particolare di un'operazione "strana" chiamata prodotto esterno

## Base cartesiana
In uno spazio vettoriale euclideo, $E^3$, è possibile definire una base carteisana, $\{ \hat{x}, \hat{y}, \hat{z} \}$, come un'insieme di vettori di norma unitaria e reciprocamente ortogonali,

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






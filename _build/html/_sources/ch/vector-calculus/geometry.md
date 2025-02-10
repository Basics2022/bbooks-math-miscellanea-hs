(vector-calculus:geometry)=
# Geometria **todo** *cambiare titolo*

(vector-calculus:geometry:coordinates)=
## Parametrizzazione dello spazio

Uno spazio può essere descritto tramite l'uso di un sistema di coordinate, composto da una $n$-upla di coordinate indipendenti $\left( q^i \right)_{i = 1:n}$.

```{prf:definition} Parametrizzazione regolare

Una parametrizzazione di una regione dello spazio spazio è **regolare** se è una funzione biunivoca,

$$P\left(q^i \right)$$

tra i punti $P$ dello spazio e i valori delle coordinate $\left( q^i \right)$. In altre parole, a ogni $n$-upla $\left( q^i \right)_{i=1:n}$ corrisponde uno e un punto $P$ e viceversa.

```

**todo** 
- *Conseguenze sulle funzioni delle coordiante dei punti in funzione delle coordiante: derivata non si annulla nel dominio...*
- *Può essere necessario/utile definire più parametrizzazioni che coprono diverse zone del dominio...*

```{prf:example} Spazio $E^2$: coordinate cartesiane
:class: dropdown

Dopo aver scelto il punto $O$ come origine, è possibile utilizzare un sistema di coordinate cartesiane $(q^1, q^2) = (x,y)$ e rappresentare un generico punto $P$ dello spazio come

$$\vec{r} = P - O = x \, \hat{x} + y \, \hat{y} \ .$$


```

```{prf:example} Spazio $E^2$: coordinate polari
:class: dropdown

Utilizzando un sistema di coordinate polari con la stessa origine $O$ di un sistema di coordinate cartesiane, e l'asse di riferimento per l'angolo $\theta$ coincidente con l'asse $x$ del sistema di coordinate cartesiane, è possibile rappresentare le coordinate cartesiane in funzione delle coordinate polari $(q^1, q^2) = (r, \theta)$

$$\begin{cases}
  x = r \, \cos \theta \\
  y = r \, \sin \theta \\
\end{cases}$$

e un punto generico nello spazio - con una rappresentazione "mista" che usa le coordinate polari e i vettori $\hat{x}$, $\hat{y}$ ddella base cartesiana[^mixed-cartesian-polar] - come

$$\vec{r} = r \, \cos \theta \, \hat{x} + r \, \sin \theta \, \hat{y} \ .$$

```

[^mixed-cartesian-polar]: Questa rappresentazione può risultare utile quando è necessario svolgere derivate della posizione, poiché i vettori della base cartesiana sono costanti in tutto lo spazio e quindi la loro derivata è nulla. **todo** *Aggiungere collegamenti a sezione derivate (esempi?) e alla cinematica in meccanica classica.*


```{prf:example} Spazio $E^3$: coordinate cartesiane
:class: dropdown

Dopo aver scelto il punto $O$ come origine, è possibile utilizzare un sistema di coordinate cartesiane $(q^1, q^2, q^3) = (x,y,z)$ e rappresentare un generico punto $P$ dello spazio come

$$\vec{r} = P - O = x \, \hat{x} + y \, \hat{y} + z \, \hat{z} \ .$$

```

```{prf:example} Spazio $E^3$: coordinate cilindriche
:class: dropdown

Utilizzando un sistema di coordinate polari con la stessa origine $O$ di un sistema di coordinate cartesiane, gli assi $z$ coincidenti, e l'asse di riferimento per l'angolo $\theta$ coincidente con l'asse $x$ del sistema di coordinate cartesiane, è possibile rappresentare le coordinate cartesiane in funzione delle coordinate polari $(q^1, q^2, q^3) = (r, \theta, z)$

$$\begin{cases}
  x = r \, \cos \theta \\
  y = r \, \sin \theta \\
  z = z 
\end{cases}$$

e un punto generico nello spazio - con una rappresentazione "mista" che usa le coordinate polari e i vettori $\hat{x}$, $\hat{y}$, $\hat{z}$ della base cartesiana[^mixed-cartesian-polar] - come

$$\vec{r} = r \, \cos \theta \, \hat{x} + r \, \sin \theta \, \hat{y} + z \, \hat{z} \ .$$

```

```{prf:example} Spazio $E^3$: coordinate sferiche
:class: dropdown

Utilizzando un sistema di coordinate polari con la stessa origine $O$ di un sistema di coordinate cartesiane, gli assi $z$ coincidenti, e l'asse di riferimento per l'angolo $\theta$ coincidente con l'asse $x$ del sistema di coordinate cartesiane, è possibile rappresentare le coordinate cartesiane in funzione delle coordinate polari $(q^1, q^2, q^3) = (R, \phi, \theta)$

$$\begin{cases}
  x = R \, \sin \phi \, \sin \theta \\
  y = R \, \sin \phi \, \cos \theta \\
  z = R \, \cos \phi
\end{cases}$$

e un punto generico nello spazio - con una rappresentazione "mista" che usa le coordinate polari e i vettori $\hat{x}$, $\hat{y}$, $\hat{z}$ della base cartesiana[^mixed-cartesian-polar] - come

$$\vec{r} = R \, \sin \phi \, \cos \theta \, \hat{x} + r \, \sin \phi \, \sin \theta \, \hat{y} + R \, \cos \phi \hat{z} \ .$$

```

(vector-calculus:geometry:natural-basis)=
## Base naturale

La paramterizzazione dello spazio permette di associare a ogni punto dello spazio una $n$-upla di coordiante. Usando una rappresentazione mista - scegliendo dei vettori di una base cartesiana con origine in $O$, e coordiante generiche $q^i$ - si può quindi rappresentare i punti dello spazio come

$$\vec{r} = P - O = x^k \left(q^i\right) \hat{x}_k \ ,$$

o più esplicitamente per spazi 2-dimensionali

$$\vec{r} = P - O = x \left(q^1, q^2\right) \hat{x} + y\left(q^1, q^2\right) \hat{y} \ ,$$

e per spazi 3-dimensionali

$$\vec{r} = P - O = x \left(q^1, q^2, q^3\right) \hat{x} + y\left(q^1, q^2, q^3 \right) \hat{y} + z\left( q^1, q^2, q^3 \right) \hat{z} \ .$$

(vector-calculus:geometry:coordinate-lines)=
### Curve coordinate

(vector-calculus:geometry:coordiante-sufraces)=
### Superfici coordiante









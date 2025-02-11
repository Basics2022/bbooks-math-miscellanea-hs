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

$$\vec{r} = R \, \sin \phi \, \cos \theta \, \hat{x} + R \, \sin \phi \, \sin \theta \, \hat{y} + R \, \cos \phi \hat{z} \ .$$

```

(vector-calculus:geometry:natural-basis)=
### Base naturale

La paramterizzazione dello spazio permette di associare a ogni punto dello spazio una $n$-upla di coordiante. Usando una rappresentazione mista - scegliendo dei vettori di una base cartesiana con origine in $O$, e coordiante generiche $q^i$ - si può quindi rappresentare i punti dello spazio utilizzando le coordinate $q^i$ desiderate e i vettori della base cartesiana,

$$\vec{r} = P - O = x^k \left(q^i\right) \hat{x}_k \ ,$$

o più esplicitamente per spazi 2-dimensionali

$$\vec{r} = P - O = x \left(q^1, q^2\right) \hat{x} + y\left(q^1, q^2\right) \hat{y} \ ,$$

e per spazi 3-dimensionali

$$\vec{r} = P - O = x \left(q^1, q^2, q^3\right) \hat{x} + y\left(q^1, q^2, q^3 \right) \hat{y} + z\left( q^1, q^2, q^3 \right) \hat{z} \ .$$

```{prf:definition} Base naturale

In ogni punto dello spazio, è possibile definire i vettori della base naturale indotta da una particolare scelta del sistema di coordinate $\left( q^i \right)_{i:n}$ come le [derivata parziali](multivariable-calculus:derivatives:partial) del punto $P$ rispetto alle coordinate $q^i$. I vettori della base naturale $\left\{\vec{b}_i \right\}_{i=1:n}$ indotta dalle coordinate $\left( q^i \right)_{i=1:n}$ sono quindi i vettori

$$\vec{b}_i = \frac{\partial \vec{r}}{\partial q^i} \ .$$

```

In generale, come sarà chiaro dagli esempi, i vettori di una base naturale:
- dipendono dal punto nello spazio nel quale vengono calcolati - o in altre parole sono funzioni delle coordinate $q^i$
- non formano una base orto-normale
- non hanno lunghezza unitaria
- non sono omogenei nelle dimensioni, né adimensionali.

```{prf:definition} Base fisica

Nel caso in cui la base naturale sia ortogonale, è possibile definire una **base fisica** - orto-normale con vettori unitari e adimensionali - tramite un semplice processo di normalizzazione dei vettori della base,

$$\hat{b}_i := \frac{\vec{b}_i}{|\vec{b}_i|} \ .$$

```

La definizione di una base fisica, quando possibile, può rendere la rappresentazione di un vettore o di un campo vettoriale più "ordinata", avendo le componenti del vettore le stesse dimensioni fisiche della grandezza che viene rappresentata, poiché i vettori della base fisica sono adimensionali e di lunghezza unitaria -  e quindi contenenti unicamente l'informazione vettoriale sulla direzione.

```{prf:example} Spazio $E^2$: coordinate cartesiane
:class: dropdown

I vettori della base naturale sono

$$\begin{cases}
  \vec{b}_1 = \frac{\partial \vec{r}}{\partial x} = \frac{\partial }{\partial x} \left( x \hat{x} + y \hat{y} \right) = \hat{x} \\
  \vec{b}_2 = \frac{\partial \vec{r}}{\partial y} = \frac{\partial }{\partial y} \left( x \hat{x} + y \hat{y} \right) = \hat{y} \\
\end{cases}$$

Ricordando le proprietà dei vettori di una base cartesiana **todo** *link*, è immediato verificare che la base naturale di un sistema di coordinate cartesiane è anche la sua base fisica (adimensionale non-dimensionale).

```

```{prf:example} Spazio $E^2$: coordinate polari
:class: dropdown

I vettori della base naturale sono

$$\begin{cases}
  \vec{b}_1 = \frac{\partial \vec{r}}{\partial r     } = \frac{\partial }{\partial r     } \left( r \cos \theta \hat{x} + r \sin \theta \hat{y} \right) = \cos \theta \hat{x} + \sin \theta \hat{y} \\
  \vec{b}_2 = \frac{\partial \vec{r}}{\partial \theta} = \frac{\partial }{\partial \theta} \left( r \cos \theta \hat{x} + r \sin \theta \hat{y} \right) = -r\sin \theta \hat{x} + r \cos \theta\hat{y} \\
\end{cases}$$

E' semplice dimostrare che i due vettori sono ortogonali, ma il vettore $\vec{b}_2$ non è adimenisonale, e ha modulo $|\vec{b}_2| = r$. La base fisica - già introdotto nel capitolo sulla geometrica analitica **todo** *link* - è quindi

$$\begin{cases}
  \hat{r}      = \hat{b}_1 = \cos \theta \hat{x} + \sin \theta \hat{y} \\
  \hat{\theta} = \frac{\hat{b}_2}{|\vec{b}_2|} = - \sin \theta \hat{x} + \cos \theta \hat{y} \\
\end{cases}$$

```

```{prf:example} Spazio $E^3$: coordinate cartesiane
:class: dropdown

I vettori della base naturale sono

$$\begin{cases}
  \vec{b}_1 = \frac{\partial \vec{r}}{\partial x} = \frac{\partial }{\partial x} \left( x \hat{x} + y \hat{y} + z \hat{z} \right) = \hat{x} \\
  \vec{b}_2 = \frac{\partial \vec{r}}{\partial y} = \frac{\partial }{\partial y} \left( x \hat{x} + y \hat{y} + z \hat{z} \right) = \hat{y} \\
  \vec{b}_3 = \frac{\partial \vec{r}}{\partial z} = \frac{\partial }{\partial z} \left( x \hat{x} + y \hat{y} + z \hat{z} \right) = \hat{z} \\
\end{cases}$$

Ricordando le proprietà dei vettori di una base cartesiana **todo** *link*, è immediato verificare che la base naturale di un sistema di coordinate cartesiane è anche la sua base fisica (adimensionale non-dimensionale).


```

```{prf:example} Spazio $E^3$: coordinate cilindriche
:class: dropdown

I vettori della base naturale sono

$$\begin{cases}
  \vec{b}_1 = \frac{\partial \vec{r}}{\partial r     } = \frac{\partial }{\partial r     } \left( r \cos \theta \hat{x} + r \sin \theta \hat{y} + z \hat{z} \right) = \cos \theta \hat{x} + \sin \theta \hat{y} \\
  \vec{b}_2 = \frac{\partial \vec{r}}{\partial \theta} = \frac{\partial }{\partial \theta} \left( r \cos \theta \hat{x} + r \sin \theta \hat{y} + z \hat{z} \right) = -r\sin \theta \hat{x} + r \cos \theta\hat{y} \\
  \vec{b}_3 = \frac{\partial \vec{r}}{\partial z     } = \frac{\partial }{\partial z     } \left( r \cos \theta \hat{x} + r \sin \theta \hat{y} + z \hat{z} \right) = \hat{z} \\
\end{cases}$$

E' semplice dimostrare che i tre vettori sono ortogonali, ma il vettore $\vec{b}_2$ non è adimenisonale, e ha modulo $|\vec{b}_2| = r$. La base fisica - già introdotto nel capitolo sulla geometrica analitica **todo** *link* - è quindi

$$\begin{cases}
  \hat{r}      = \hat{b}_1 = \cos \theta \hat{x} + \sin \theta \hat{y} \\
  \hat{\theta} = \frac{\hat{b}_2}{|\vec{b}_2|} = - \sin \theta \hat{x} + \cos \theta \hat{y} \\
  \hat{z}      = \hat{b}_3 = \hat{z} \\
\end{cases}$$
```

```{prf:example} Spazio $E^3$: coordinate sferiche
:class: dropdown

I vettori della base naturale sono

$$\begin{cases}
  \vec{b}_1 = \frac{\partial \vec{r}}{\partial R     } = \frac{\partial }{\partial R     } \left( R \, \sin \phi \, \cos \theta \, \hat{x} + R \, \sin \phi \, \sin \theta \, \hat{y} + R \, \cos \phi \hat{z} \right) = \sin \phi \, \cos \theta \, \hat{x} + \sin \phi \, \sin \theta \, \hat{y} +  \cos \phi \hat{z} \\
  \vec{b}_2 = \frac{\partial \vec{r}}{\partial \phi  } = \frac{\partial }{\partial \phi  } \left( R \, \sin \phi \, \cos \theta \, \hat{x} + R \, \sin \phi \, \sin \theta \, \hat{y} + R \, \cos \phi \hat{z} \right) = R \, \cos \phi \, \cos \theta \, \hat{x} + R \, \cos \phi \, \sin \theta \, \hat{y} - R \, \sin \phi \hat{z} \\
  \vec{b}_3 = \frac{\partial \vec{r}}{\partial \theta} = \frac{\partial }{\partial \theta} \left( R \, \sin \phi \, \cos \theta \, \hat{x} + R \, \sin \phi \, \sin \theta \, \hat{y} + R \, \cos \phi \hat{z} \right) = - R \, \sin \phi \, \sin \theta \, \hat{x} + R \, \sin \phi \, \cos \theta \, \hat{y}
\end{cases}$$

E' semplice dimostrare che i tre vettori sono ortogonali, ma i vettori $\vec{b}_2$, $\vec{b}_3$ non sono adimenisonale, e hanno modulo $|\vec{b}_2| = R$ e $|\vec{b}_3| = R |\sin \phi|$. La base fisica - già introdotto nel capitolo sulla geometrica analitica **todo** *link* - è quindi

$$\begin{cases}
  \hat{r}      = \hat{b}_1                     = \sin \phi \, \cos \theta \, \hat{x} + \sin \phi \, \sin \theta \, \hat{y} + \cos \phi \hat{z} \\
  \hat{\phi  } = \frac{\hat{b}_2}{|\vec{b}_2|} = \cos \phi \, \cos \theta \, \hat{x} + \cos \phi \, \sin \theta \, \hat{y} - \sin \phi \hat{z} \\
  \hat{\theta} = \frac{\hat{b}_3}{|\vec{b}_3|} =-\sin \theta \, \hat{x} + \cos \theta \, \hat{y}
\end{cases}$$

```



(vector-calculus:geometry:coordinate-lines)=
### Curve coordinate

(vector-calculus:geometry:coordiante-sufraces)=
### Superfici coordinate

(vector-calculus:geometry:lines)=
## Curve nello spazio

Una curva $\gamma$ nello spazio può essere rappresentata con la sua equazione parametrica,

$$\gamma: \ \vec{r} = \vec{r}_{\gamma}(q^1) \quad , \quad q^1 \in Q = [q^1_a, q^1_b] \ ,$$

cioè una funzione di un parametro $q^1$, che associa a ogni valore del parametro $q^1 \in Q$ un punto appartenente alla curva, $\vec{r}_\gamma(q^1)$.

Una **parametrizzazione regolare** rappresenta una funzione biunivoca tra i valori del parametro $q^1$ e i punti nello spazio $\vec{r}_{\gamma}(q^1)$. Questa condizione si riduce alla condizione che la derivata dei punti della curva rispetto al parametro non sia mai nulla, $\vec{r}'(q_1) \ne 0$, $\forall q^{1} \in Q$.

(vector-calculus:geometry:surfaces)=
## Superfici nello spazio

(vector-calculus:geometry:volumes)=
## Volumi nello spazio








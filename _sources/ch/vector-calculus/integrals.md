(vector-calculus:integrals)=
# Integrali in spazi euclidei

In questa sezione vengono presentati alcuni integrali comuni di campi scalari e vettoriali, che compaiono frequentemente in fisica e in altri ambiti scientifici. Il calcolo degli integrali in spazi euclidei viene svolto sfruttando una parametrizzazione del dominio con un insieme di coordinate per ricondurre questi integrali a [integrali su domini multi-dimensionali](multivariable-calculus:integrals), dopo aver valutato correttamente l'espressione dei domini elementari in funzione delle variazioni elementari delle coordinate usate nella parametrizzazione.

(vector-calculus:integrals:line)=
## Integrali di linea
Il vettore elementare di una curva nello spazio, descritta in forma parametrica $\vec{r}(q^1)$ è il vettore

$$d \vec{r}(q^1) = \vec{r}'(q^1) \, dq^1 \ .$$

(vector-calculus:integrals:density)=
### Densità
Data una curva $\gamma$ nello spazio euclideo descritta dall'equazione parametrica

$$\gamma: \vec{r} = \vec{r}_{\gamma}(t) \qquad  , \qquad t \in [t_0, t_1] \ ,$$

e una funzione scalare $m(\vec{r})$ definita sui punti della curva, $\vec{r} \in \gamma$, densità lineare di una proprietà $M$ additivà, si può calcolare la proprietà $M$ associata alla linea $\gamma$ come l'integrale

$$\int_{\vec{r} \in \gamma} m(\vec{r})$$



(vector-calculus:integrals:work)=
### Lavoro


**Lunghezza di arco.** Tra le possibili parametrizzazioni regolari della curva, esiste una parametrizzazione particolare, generalmente indicata con $s$, e definita dalla condizione

$$d  s = |d \vec{r}(s)| \ ,$$

cioè la variazione del parametro $s$ è uguale alla lunghezza dell'elemento di curva. Il parametro $s$ viene definito *lunghezza d'arco* e dalla sua definizione segue immediatamente che la derivata della posizione della curva rispetto a $s$ è il versore tangente $\hat{t}$,

$$\vec{r}'(s) = \hat{t}(s) \ .$$

(vector-calculus:integrals:surface)=
## Integrali di superficie
Nello spazio 3-dimensionale, la superficie elementare con versore normale $\hat{n} \, dS$ di una superficie descritta dalle due coordinate $\{ q^i \}_{i=1:2}$, $\vec{r}(q^1, q^2)$, può essere espressa in funzione degli incrementi delle coordinate e del prodotto vettoriale delle derivate parziali,

$$\hat{n} \, d S = \partial_1 \vec{r} \times \partial_2 \vec{r} \, dq^1 \, dq^2 \ .$$

(vector-calculus:integrals:volume)=
## Integrali di volume
Nello spazio 3-dimensionale i cui punti sono descritti dalle coordinate $\{ q^i \}_{i=1:3}$, $\vec{r}(q^1, q^2, q^3)$, il volume elementare $dV$ può essere espresso in funzione delle variazioni delle coordinate $d q^1$, $d q^2$, $d q^3$ e del prodotto misto delle derivate parziali,

$$dV = \left| \partial_1 \vec{r} \cdot \partial_2 \vec{r} \times \partial_3 \vec{r} \right| \, d q^1 \, d q^2 \, d q^3 \ .$$

Ricordando le definizioni di [coordiante cartesiane](geometry:analytic:3d:coordinates:cartesian), [coordinate cilindriche](geometry:analytic:3d:coordinates:cylindrical) e [coordiante sferiche](geometry:analytic:3d:coordinates:spherical), è possibile dimostrare che l'espressione dell'elemento di volume in queste coordinate è

$$\begin{aligned}
  d V & = dx \, dy \, dz                          & \qquad \text{(coordinate cartesiane)}  \\
  d V & = R dR \, d\theta \, dz                   & \qquad \text{(coordinate cilindriche)} \\
  d V & = r^2 \sin \phi \, dr \, d\phi \, d\theta & \qquad \text{(coordinate sferiche)}
\end{aligned}$$

```{prf:example} Elemento di volume in coordinate cartesiane
:class: dropdown

$$\vec{r} = x \hat{x} + y \hat{y} + z \hat{z}$$

$$\begin{aligned}
  d V
  & = \partial_x \vec{r} \cdot \partial_y \vec{r} \times \partial_z \vec{r} \, dx \, dy \, dz = \\
  & = \vec{x} \cdot \vec{y} \times \vec{z} \, dx \, dy \, dz = \\
  & = \vec{x} \cdot \vec{x} \, dx \, dy \, dz = \\
  & = dx \, dy \, dz \ .
\end{aligned}$$

```
```{prf:example} Elemento di volume in coordinate cilindriche
:class: dropdown

$$\begin{aligned}
  \vec{r}
  & = R \, \cos \theta \, \hat{x} + R \, \sin \theta \, \hat{y} + z \, \hat{z} 
\end{aligned}$$

$$\begin{aligned}
  d V
  & = \partial_R \vec{R} \cdot \partial_{\theta} \vec{r} \times \partial_{z} \vec{r} \, dR \, d\theta \, d z = \\
  & = (\cos \theta \, \hat{x} + \sin \theta \, \hat{y}) \cdot (-R \sin \theta \, \hat{x} + R \cos \theta \, \hat{y}) \times \hat{z}  \, dR \, d\theta \, d z = \\
  & = (\cos \theta \, \hat{x} + \sin \theta \, \hat{y}) \cdot ( R \sin \theta \, \hat{y} + R \cos \theta \, \hat{x}) \, dR \, d\theta \, d z = \\
  & = R (\cos^2 \theta + \sin^2 \theta) \, dR \, d\theta \, d z = \\
  & = R \, dR \, d \theta \, dz 
\end{aligned}$$

```
```{prf:example} Elemento di volume in coordinate sferiche
:class: dropdown

$$\begin{aligned}
  \vec{r}
  & = r \sin \phi \, \cos \theta \, \hat{x} + r \sin \phi \, \sin \theta \, \hat{y} + r \cos \phi \, \hat{z} 
\end{aligned}$$

$$\begin{aligned}
  d V
  & = \partial_r \vec{r} \cdot \partial_{\phi} \vec{r} \times \partial_{\theta} \vec{r} \, dr \, d\phi \, d\theta = \\
  & = (\sin \phi \, \cos \theta \, \hat{x} + \sin \phi \, \sin \theta \, \hat{y} + \cos \phi \, \hat{z} ) \cdot ( r \cos \phi \, \cos \theta \, \hat{x} + r \cos \phi \, \sin \theta \, \hat{y} - r \sin \phi \, \hat{z} ) \times (-r \sin \phi \sin \theta \hat{x} + r \sin \phi \cos \theta \hat{y}) \, dr \, d\phi \, d\theta = \\
  & = \dots = \\
  & = r^2 \sin \phi \, dr \, d\phi \, d\theta \ .
\end{aligned}$$

```

(vector-calculus:integrals:theorems)=
## Teoremi

```{prf:theorem} Teorema del gradiente
Per campi scalari $f(\vec{r})$ sufficientemente regolari nel dominio $V \subseteq E^d$, $d=2:3$, vale

$$\int_{V} \nabla f = \oint_{\partial V} f \hat{n} \ .$$ (eq:thm-gradient)

```

```{prf:example} Teorema del gradiente
:label: thm-gradient-1
:class: dropdown

Dato il dominio quadrato descritto dai valori delle coordinate cartesiane dei punti $\vec{r} = x \hat{x} + y \hat{y} \in E^2$, $(x, y) \in [-1, 1] \times [-1,1]$, e il campo scalare

$$f(\vec{r}) = 4 x + 3 x y$$

viene chiesto di determinare se la funzione $f(\vec{r})$ è regolare nel dominio, di calcolare i due integrali coinvolti nel teorema del gradiente {eq}`eq:thm-gradient` e verificare se il teorema del gradiente è soddisfatto.

La funzione $f(\vec{r})$ è continua...Il gradiente di $f(\vec{r})$ può essere espresso usando le coordinate cartesiane come

$$\nabla f = \hat{x} \partial_x f + \hat{y} \partial_y f = (4 + 3 y) \hat{x} + 3 x \hat{y} \ ,$$

dove i versori $\hat{x}$ e $\hat{y}$ sono uniformi nello spazio, e quindi indipendenti dalle coordinate.

Gli integrali valgono

$$\begin{aligned}
  \int_V \nabla f
  & = \int_{x=-1}^{1} \int_{y=-1}^{1} \left[ (4 + 3 y) \hat{x} + 3 x \hat{y} \right] \, dx \, dy = \\
  & = \hat{x} \int_{x=-1}^{1} \int_{y=-1}^{1} (4 + 3 y) \, dx \, dy +  \int_{x=-1}^{1} \int_{y=-1}^{1} 3 x \, dx \, dy = \\
  & = \hat{x} \int_{x=-1}^{1} \left.\left[ 4 \, y + \frac{3}{2} \, y^2 \right]\right|_{y=-1}^{1} \, dx
    + \hat{y} \int_{y=-1}^{1} \left.\left[ \frac{3}{2} \, x^2 \right]\right|_{y=-1}^{1} \, dy = \\
  & = 16 \hat{x} + 0 \hat{y} \ .
\end{aligned}$$

e

$$\begin{aligned}
  \oint_{\partial V} f \hat{n}
  & = \int_{y = -1}^{ 1} f(x= 1, y   ) \hat{x} \, dy 
    + \int_{x =  1}^{-1} f(x   , y= 1) \hat{y} \, dx + \\ 
  & + \int_{y =  1}^{-1} f(x=-1, y   ) (- \hat{x} ) \, dy 
    + \int_{x = -1}^{ 1} f(x   , y=-1) (- \hat{y} ) \, dx = \\
  & = \int_{y = -1}^{ 1} ( 4     + 3     y )  \hat{x} \, dy 
    + \int_{x =  1}^{-1} ( 4  x  + 3  x    )  \hat{y} \, dx + \\ 
  & + \int_{y =  1}^{-1} (-4     - 3     y )  (- \hat{x} ) \, dy 
    + \int_{x = -1}^{ 1} ( 4  x  - 3  x   ))  (- \hat{y} ) \, dx = \\
  & = 8 \hat{x} + 0 \hat{y} + 8 \hat{x} + 0 \hat{y}
    = 16 \hat{x} \ .
\end{aligned}$$

```
```{prf:example} Teorema del gradiente
:label: thm-gradient-2
:class: dropdown

```

```{prf:theorem} Teorema della divergenza
Per campi vettoriali $\vec{f}(\vec{r})$ sufficientemente regolari nel dominio $V \subseteq E^d$, $d=2:3$, vale

$$\int_{V} \nabla \cdot \vec{f} = \oint_{\partial V} \vec{f} \cdot \hat{n} \ .$$ (eq:thm-divergence)

```

```{prf:example} Teorema della divergenza
:label: thm-divergence-1
:class: dropdown

```
```{prf:example} Teorema della divergenza
:label: thm-divergence-2
:class: dropdown

```

```{prf:theorem} Teorema del rotore
Per campi vettoriali $\vec{f}(\vec{r})$ sufficientemente regolari sulla superficie $S \subseteq E^3$, vale

$$\int_{S} \nabla \times \vec{f} \cdot \hat{n} = \oint_{\partial S} \vec{f} \cdot \hat{t} \ .$$ (eq:thm-curl)

```

```{prf:example} Teorema del rotore
:label: thm-curl-1
:class: dropdown

```
```{prf:example} Teorema della rotore
:label: thm-curl-2
:class: dropdown

```



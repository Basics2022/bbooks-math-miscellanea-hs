(vector-calculus:integrals)=
# Integrali in spazi euclidei

In questa sezione vengono presentati alcuni integrali comuni di campi scalari e vettoriali, che compaiono frequentemente in fisica e in altri ambiti scientifici. Il calcolo degli integrali in spazi euclidei viene svolto sfruttando una parametrizzazione del dominio con un insieme di coordinate per ricondurre questi integrali a [integrali su domini multi-dimensionali](multivariable-calculus:integrals), dopo aver valutato correttamente l'espressione dei domini elementari in funzione delle variazioni elementari delle coordinate usate nella parametrizzazione.

(vector-calculus:integrals:line)=
## Integrali di linea
Il vettore elementare di una curva nello spazio, descritta in forma parametrica $\vec{r}(q^1)$ è il vettore

$$d \vec{r}(q^1) = \vec{r}'(q^1) \, dq^1 \ .$$

**Lunghezza di arco.** Tra le possibili parametrizzazioni regolari della curva, esiste una parametrizzazione particolare, generalmente indicata con $s$, e definita dalla condizione

$$d  s = |d \vec{r}(s)| \ ,$$

cioè la variazione del parametro $s$ è uguale alla lunghezza dell'elemento di curva. Il parametro $s$ viene definito *lunghezza d'arco* e dalla sua definizione segue immediatamente che la derivata della posizione della curva rispetto a $s$ è il versore tangente $\hat{t}$,

$$\vec{r}'(s) = \hat{t}(s) \ .$$
(vector-calculus:integrals:density)=
### Densità
Data una curva $\gamma$ nello spazio euclideo descritta dall'equazione parametrica

$$\gamma: \vec{r} = \vec{r}_{\gamma}(t) \qquad  , \qquad t \in [t_0, t_1] \ ,$$

e una funzione scalare $m(\vec{r})$ definita sui punti della curva, $\vec{r} \in \gamma$, densità lineare di una proprietà $M$ additivà, si può calcolare la proprietà $M$ associata alla linea $\gamma$ come l'integrale

$$M = \int_{\vec{r} \in \gamma} m(\vec{r}) \ ,$$

o indicando esplicitamente le dimensioni dell'elemento di linea (e indipendenti dal suo verso), e usando il parametro $\gamma$ come variabile indipendente del problema,

$$M = \int_{\vec{r} \in \gamma} m (\vec{r}) \, |d \vec{r}| = \int_{t = t_0}^{t_1} m (\vec{r}_{\gamma}(t)) \, |\vec{r}'_{\gamma}(t)| \, dt$$

Questo tipo di integrale può essere utilizzato per calcolare la lunghezza di una curva o alcune proprietà additive della curva, di cui la funzione integranda è una densità lineare.


```{prf:example} Lunghezza di un quarto di cerchio
:class: dropdown

Un arco di circonferenza corrispondente a un quarto di essa può essere rappresentato in forma parametrica come,

$$\gamma: \, \vec{r}_{\gamma}(t) = R \cos t \hat{x}  + R \sin t \hat{y} \ , \qquad t \in \left[ 0, \frac{\pi}{2} \right]$$

L'elemento di curva è

$$d \vec{r} = \vec{r}'(t) \, dt = \left( - R \sin t \, \hat{x} + R \cos t \, \hat{y} \right) \, dt $$

e il suo modulo vale

$$|d \vec{r}| = R \, |dt| \ .$$

La lunghezza della curva si ottiene con densità di proprietà $m = 1$, **todo** e, poiché la parametrizzazione è regolare e con $t$ crescente per scrivere $|d t| = d t$ e $R > 0$,

$$L = \int{\vec{r}\in \gamma} |d \vec{r}| =\int_{t = 0}^{\frac{\pi}{2}} \left|\vec{r}'(t)\right| \, dt =  \int_{t = 0}^{\frac{\pi}{2}} R \, dt = \frac{\pi}{2} \, R \ .$$

```

```{prf:example} Massa di un quarto di cerchio di densità non uniforme
:class: dropdown
```

```{prf:example} Lunghezza di un'elica
:class: dropdown

Un'elica di raggio $R$ e passo $L$ composta da 2 avvolgimenti può essere rappresentata in forma parametrica come

$$\gamma: \, \vec{r}(t) = R \cos t \, \hat{x} + R \sin t \, \hat{y} + \frac{L}{2\pi} \, t \, \hat{z} \ , \qquad t \in \left[ 0, 4 \pi \right]$$

L'elemento di curva è

$$d \vec{r} = \vec{r}'(t) \, dt = \left( - R \sin t \, \hat{x} + R \cos t \, \hat{y} + \frac{L}{2\pi} \, \hat{z} \right) \, dt $$

e il suo modulo vale

$$|d \vec{r}| = \sqrt{ R^2 + \left(\frac{L}{2 \pi}\right)^2 } \, |dt| \ .$$

La lunghezza della curva si ottiene con densità di proprietà $m = 1$, **todo** e, poiché la parametrizzazione è regolare e con $t$ crescente per scrivere $|d t| = d t$ e $R > 0$,

$$L = \int{\vec{r}\in \gamma} |d \vec{r}| =\int_{t = 0}^{4 \pi} \left|\vec{r}'(t)\right| \, dt =  \int_{t = 0}^{4 \pi}  \sqrt{ R^2 + \left(\frac{L}{2 \pi}\right)^2 } \,  dt = 4 \pi R^2 \sqrt{1 + \left( \frac{L}{2 \pi R}\right)^2}  \ . $$ 

```

```{prf:example} Massa di un'elica con densità non uniforme
:class: dropdown

Si vuole calcolare la massa dell'elica dell'esempio precedente, conoscendo che la sua densità lineare di massa ha una dipendenza di primo grado dal parametro $t$ nota,

$$m(t) = a + b \, t \ , \qquad t \in \left[ 0, 4 \pi \right]$$

con $a > 0$, $b > -\frac{a}{4 \pi}$ noti. I vincoli sui parametri rappresentano il vincolo fisico di densità di massa non negativa, $m(t) > 0$, $\forall t \in [0, 4 \pi]$.

...

La massa dell'elica è

$$\begin{aligned}
  M & = \int_{\vec{r} \in \gamma} m(\vec{r}) = \\
    & = \int_{t = 0}^{4 \pi} m(\vec{r}_{\gamma}(t)) \, |\vec{r}'_{\gamma}(t)| \, dt = \\
    & = \int_{t = 0}^{4 \pi} \left( a + b t \right) \, \sqrt{ R^2 + \left(\frac{L}{2 \pi}\right)^2 } \,  dt =\\
    & = \left( 4 \pi a + \frac{(4 \pi)^2}{2} b \right) \sqrt{ R^2 + \left(\frac{L}{2 \pi}\right)^2 }   \ .
\end{aligned}$$

```

(vector-calculus:integrals:work)=
### Lavoro e circuitazione

L'integrale del prodotto scalare tra un campo vettoriale $\vec{f}(\vec{r})$ definito su una curva e il versore tangente $\hat{t}(\vec{r})$ (l'elemento $d \vec{r} = \hat{t} \, ds$ **todo** *link a lunghezza d'arco*) della curva stessa

$$L_{\gamma}(\vec{f}) = \int_{\vec{r} \in \gamma} \vec{f}(\vec{r}) \cdot \hat{t}(\vec{r}) \ ,$$ (eq:integral:work)

compare in molti ambiti della fisica, o delle scienze in generale, ed è spesso associato al concetto di lavoro compiuto dalla forza o dal campo di forze $\vec{f}(\vec{r})$ lungo il percorso rappresentato dalla curva $\gamma$. Esplicitando l'elemento di curva e ipotizzando una parametrizzazinoe regolare

$$\begin{aligned}
  L_{\gamma}(\vec{f})
  & = \int_{s \in s_0}^{s_1} \vec{f}(\vec{r}(s)) \cdot \vec{r}'(s) \, ds = \\
  & = \int_{t \in t_0}^{t_1} \vec{f}(\vec{r}(t)) \cdot \vec{r}'(t) \, dt 
\end{aligned}$$

**todo** *indipendente dalla parametrizzazione della curva*

```{prf:definition} Circuitazione
L'integrale del lavoro {eq}`eq:integral:work` lungo una curva chiusa $\gamma$ viene definito circuitazione del campo $\vec{f}$ lungo la linea $\gamma$.

```


```{prf:example}

```

(vector-calculus:integrals:work:conservative)=
#### Campi conservativi
In alcuni casi particolari, il valore di questo integrale non dipende dalla curva $\gamma$, ma solo dai suoi punti estremi. Campi di questo $\vec{f}(\vec{r})$ di questo tipo compaiono in fisica nella definizione di campi di forze conservative, che ammettono potenziale.

**todo** *legare bene con il resto; discutere qui? In altre parti? Ragionare sui domini?*
- campi conservativi in un dominio hanno circuitazione nulla lungo ogni percorso appartenente al dominio

```{prf:example}

```

(vector-calculus:integrals:surface)=
## Integrali di superficie
Nello spazio 3-dimensionale, una superficie può essere parametrizzata con due coordinate $(q^1, q^2)$ e i suoi punti possono essere rappresentati da una funzione di queste due coordinate,

$$S: \, \vec{r} = \vec{r}_S(q^1, q^2) \qquad , \qquad \left(q^1, q^2 \right) \in Q \ .$$

Ricordando il significato geometrico del [prodotto vettoriale tra due vettori in spazi euclidei](math-hs:algebra:vector:euclidean-space:vector-product), l'elemento infinitesimo di questa superficie con versore normale, $\hat{n} \, dS$, di una superficie descritta dalle due coordinate $\{ q^i \}_{i=1:2}$, $\vec{r}(q^1, q^2)$ e costruita con gli incrementi parziali,

$$\hat{n} \, d S = \frac{\partial \vec{r}}{\partial q^1} \times \frac{\partial \vec{r}}{\partial q^2} \, dq^1 \, dq^2 \ .$$

L'area dell'elemento infinitesimo di superficie è quindi

$$d S := \left| \hat{n} d S \right| = \left| \frac{\partial \vec{r}}{\partial q^1} \times \frac{\partial \vec{r}}{\partial q^2} \, dq^1 \, dq^2  \right| \ .$$

(vector-calculus:integrals:surface:density)=
### Densità

Data una superficie $S: \, \vec{r} = \vec{r}_S(q^1, q^2)$ e una funzione $\sigma(\vec{r})$ definita sui punti della superficie $S$, questa può essere interpretata come densità di superficie di una proprietà $M$ additiva associata alla superficie $S$ definita come l'integrale

$$M = \int_{\vec{r} \in S} \sigma(\vec{r}) \ ,$$

o indicando esplicitamente l'elemento di superficie, e ipotizzando una parametrizzazione regolare con parametri crescenti $|d q^i| = d q^i > 0$,

$$M = \int_{\vec{r} \in S} \sigma(\vec{r}) d S = \int_{(q^1,q^2) \in Q} \sigma\left( \vec{r}_S(q^1, q^2) \right) \left|\frac{\partial \vec{r}_S}{\partial q^1}(q^1,q^2) \times \frac{\partial \vec{r}_S}{\partial q^2}(q^1,q^2) \right| \, dq^1 \, dq^2$$

(vector-calculus:integrals:surface:flux)=
### Flusso

L'integrale del prodotto scalare tra un campo vettoriale $\vec{f}(\vec{r})$ definito su una superficice $S$ e il versore normale $\hat{n}$ alla superficie

$$\Phi_{S}(\vec{f}) = \int_{\vec{r} \in S} \vec{f}(\vec{r}) \cdot \hat{n}(\vec{r}) \ ,$$ (eq:integral:flux)

compare in molti ambiti della fisica, o delle scienze in generale, e viene definito **flusso** del campo vettoriale $\vec{f}(\vec{r})$ attraverso la superficie $S$. Esplicitando l'elemento di superficie e ipotizzando una parametrizzazione regolare con parametri crescenti e coerenti con la direzione desiderata del versore normale (orientazione della superficie),

$$\Phi_{S}(\vec{f}) = \int_{(q^1, q^2) \in Q} \vec{f}(\vec{r}_S(q^1, q^2)) \cdot \frac{\partial \vec{r}}{\partial q^1} \times \frac{\partial \vec{r}}{\partial q^2} \, d q^1 \, d q^2 \ ,$$ (eq:integral:flux:coords)

(vector-calculus:integrals:volume)=
## Integrali di volume
Nello spazio 3-dimensionale i cui punti sono descritti dalle coordinate $\{ q^i \}_{i=1:3}$, $\vec{r}(q^1, q^2, q^3)$, il volume elementare $dV$ costruito con i vettori degli incrementi parziali, può essere espresso in funzione delle variazioni delle coordinate $d q^1$, $d q^2$, $d q^3$ e del prodotto misto delle derivate parziali,

Ricordando il significato geometrico del [prodotto misto tra tre vettori in spazi euclidei](math-hs:algebra:vector:euclidean-space:mixed-product), l'elemento infinitesimo di un volume descritto dalle coordinate $\left( q^i \right)_{i=1:n}$ è

$$dV = \left| \frac{\partial \vec{r}}{\partial q^1} \cdot \frac{\partial \vec{r}}{\partial q^2} \times \frac{\partial \vec{r}}{\partial q^3} \right| \, d q^1 \, d q^2 \, d q^3 \ .$$

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



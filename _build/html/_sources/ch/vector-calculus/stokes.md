(vector-calculus:stokes)=
# Teorema di Stokes

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



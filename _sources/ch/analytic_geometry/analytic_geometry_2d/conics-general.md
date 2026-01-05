(geometry:analytic:2d:conics-general)=
# Equazione generale delle coniche

L'equazione di una conica disposta nel piano in maniera arbitraria rispetto a un sistema di coordinate cartesiane ha l'epsressione

$$A x^2 + B x y + C y^2 + D x + E y + F = 0 \ .$$

E\` possibile dimostrare questa affermazione tramite una trasformazione rigida generica di roto-traslazione. In particolare, si applica prima una rotazione di un angolo $\theta$ e poi una traslazione $\vec{v} = x_{1,P} \hat{x}_1 + y_{1,P} \hat{y}_1$.

$$
\begin{cases}
x_1 =   x \cos \theta + y \sin \theta \\
y_1 = - x \sin \theta + y \cos \theta \\
\end{cases}
\qquad , \qquad
\begin{cases}
x_2 = x_1 - x_{1,P}  \\
y_2 = y_1 - y_{1,P}  \\
\end{cases}
$$

Diversi tipi di coniche sono caratterizzati da diverse relazioni tra i coefficienti del polinomio di secondo grado, in particolare, dal valore del coefficiente $\Delta := B^2 - 4 A C$,
- ellisse:  $\Delta < 0$
- parabola: $\Delta = 0$
- iperbole: $\Delta > 0$

```{dropdown} Dimostrazione, ellisse e iperbole
Le equazioni in forma canonica di un'ellisse e un'iperbole possono essere scritte come

$$\frac{x_2^2}{a^2} + \gamma \frac{y_2^2}{b^2} = 1 \qquad \rightarrow \qquad 0 = b^2 x_2^2 + \gamma a^2 y_2^2 - a^2 b^2 \ ,$$

con $\gamma = 1$ per l'ellisse e $\gamma = -1$ per l'iperbole. Rispetto al sistema di coordinate $(x_2, y_2)$ il centro dell'ellisse e dell'iperbole si trovano in $(x_2, y_2) = (0, 0)$, e quindi in $(x_1, y_1) = (x_{1,P}, y_{1,P})$.
<!--  -->
Introducendo le trasformazioni di coordinate, si può manipolare l'espressione delle coniche

$$\begin{aligned}
  0 
  & = b^2 ( x_1 - x_{1,P} )^2 + \gamma a^2 ( y_1 - y_{1,P} )^2 - a^2 b^2 = \\
  & = b^2 ( x \cos \theta + y \sin \theta - x_{1,P} )^2 + \gamma a^2 ( - x \sin \theta + y \cos \theta - y_{1,P} )^2 - a^2 b^2 = \\
  & = x^2   \left( b^2 \cos^2 \theta + \gamma a^2 \sin^2 \theta \right)
    + 2 x y \left( b^2 - \gamma a^2 \right) \sin \theta \cos \theta 
    + y^2   \left( b^2 \sin^2 \theta + \gamma a^2 \cos^2 \theta \right) \\
  & + x     \left( - 2 b^2 x_{1,P} \cos \theta + 2 \gamma a^2 y_{1,P} \sin \theta \right) 
    + y     \left( - 2 b^2 x_{1,P} \sin \theta - 2 \gamma a^2 y_{1,P} \cos \theta \right) \\
  & + b^2 x_{1,P}^2 + \gamma a^2 y_{1,P}^2 - a^2 b^2 
\end{aligned}$$

per calcolare il discriminante, usando la relazione $\gamma^2 = 1$, come

$$\begin{aligned}
  \frac{\Delta}{4}
  & = \frac{B^2}{4} - AC = \\
  & = \left[ \left( b^2 - \gamma a^2 \right) \sin \theta \cos \theta \right]^2 - \left( b^2 \cos^2 \theta + \gamma a^2 \sin^2 \theta \right) \left( b^2 \sin^2 \theta + \gamma a^2 \cos^2 \theta \right) = \\
  & = b^4 \sin^2 \theta \cos^2 \theta - 2 \gamma a^2 b^2 \sin^2 \theta \cos^2 \theta + a^4 \sin^2 \theta \cos^2 \theta \\
  & - b^4 \sin^2 \theta \cos^2 \theta - \gamma a^2 b^2 \left( \sin^4 \theta + \cos^4 \theta \right) - a^4 \sin^2 \theta \cos^2 \theta = \\
  & = - \gamma a^2 b^2 \left(\underbrace{ \sin^2 \theta + \cos^2 \theta}_{=1} \right)^2 = - \gamma a^2 b^2
\end{aligned}$$

E quindi
- per un'ellisse, $\gamma = 1$ e $\Delta < 0$
- per un'iperbole, $\gamma =-1$ e $\Delta > 0$

```

```{dropdown} Dimostrazione, parabola

Introducendo le trasformazioni di coordinate, si può manipolare l'espressione dell'equazione in forma canonica delle parabole

$$\begin{aligned}
  0
  & = a x_2^2 - y_2 = \\
  & = a ( x_1 - x_{1,P} )^2 - y_1 + y_{1,P} = \\
  & = a ( x \cos \theta + y \sin \theta - x_{1,P} )^2 - ( - x \sin \theta + y \cos \theta ) + y_{1,P} = \\
  & = x^2   \left( a \cos^2 \theta \right)
    + 2 x y \left( a \cos \theta \sin \theta \right) 
    + y^2   \left( a \sin^2 \theta \right) \\
  & + x     \left( - 2 a x_{1,P} \cos \theta + 2 \sin \theta \right) 
    + y     \left( - 2 a x_{1,P} \sin \theta - 2 \cos \theta \right) \\
  & + x_{1,P}^2 + y_{1,P}
\end{aligned}$$

per poi calcolare il discrimminante,

$$\begin{aligned}
  \frac{\Delta}{4}
  & = \frac{B^2}{4} - AC = \\
  & = a^2 \cos^2 \theta \sin^2 \theta - a^2 \cos^2 \theta \sin^2 \theta = 0
\end{aligned}$$
```

**todo** *Commento*

---

**todo** *Conviene forse invertire le trasformazioni delle coordinate, ad esempio per avere un'interpretazione più immediata delle coordinate del centro e degli altri punti notevoli delle coniche e della direzione degli assi?*

$$
\begin{cases}
x_1 = x - x_{P}  \\
y_1 = y - y_{P}  \\
\end{cases}
\qquad , \qquad
\begin{cases}
x_2 = \ \ \  x_1 \cos \theta + y_1 \sin \theta \\
y_2 =      - x_1 \sin \theta + y_1 \cos \theta \\
\end{cases}
$$

```{dropdown} Dimostrazione, ellisse e iperbole
:open:

Le equazioni in forma canonica di un'ellisse e un'iperbole possono essere scritte come

$$\frac{x_2^2}{a^2} + \gamma \frac{y_2^2}{b^2} = 1 \qquad \rightarrow \qquad 0 = b^2 x_2^2 + \gamma a^2 y_2^2 - a^2 b^2 \ ,$$

con $\gamma = 1$ per l'ellisse e $\gamma = -1$ per l'iperbole. Rispetto al sistema di coordinate $(x_2, y_2)$ il centro dell'ellisse e dell'iperbole si trovano in $(x_2, y_2)_P = (0, 0)$, e quindi in $(x_1, y_1)_P = (0,0)$ e $(x, y)_P = (x_{1,P}, y_{1,P})$.
Introducendo le trasformazioni di coordinate, si può manipolare l'espressione delle coniche

$$\begin{aligned}
  0 
  & = b^2 ( x_1 \cos \theta + y_1 \sin \theta )^2 + \gamma a^2 ( - x_1 \sin \theta + y_1 \cos \theta )^2 - a^2 b^2 = \\
  & = b^2 \left[ ( x - x_P ) \cos \theta + ( y - y_P ) \sin \theta \right]^2 + \gamma a^2 \left[ - ( x - x_P ) \sin \theta + ( y - y_P ) \cos \theta \right]^2 - a^2 b^2 = \\
  & = x^2 \left( b^2 \cos^2 \theta + \gamma a^2 \sin^2 \theta \right) \\
    & + 2 x y \left( b^2 \cos\theta \sin \theta - \gamma a^2 \cos\theta \sin \theta \right) \\
    & + y^2 \left( b^2 \sin^2 \theta + \gamma a^2 \cos^2 \theta \right) \\
    & + x \left(- 2 y_P b^2 \cos \theta \sin \theta  + 2 y_P \gamma a^2 \cos \theta \sin \theta - 2 x_P b^2 \cos^2 \theta + 2 x_P \gamma a^2 \sin^2 \theta  \right) \\
    & + y \left(- 2 x_P b^2 \cos \theta \sin \theta  + 2 x_P \gamma a^2 \cos \theta \sin \theta - 2 y_P b^2 \sin^2 \theta + 2 y_P \gamma a^2 \cos^2 \theta  \right) \\
    & + \left( b^2 ( x_P^2 \cos^2 \theta + y_P^2 \sin^2 \theta + 2 x_P y_P \sin \theta \cos \theta )
      + \gamma a^2 ( x_P^2 \sin^2 \theta + y_P^2 \cos^2 \theta - 2 x_P y_P \sin \theta \cos \theta )  \right) = \\
  & =
\end{aligned}$$

<!--
$$\begin{aligned}
  0 
  & = b^2 ( x_1 - x_{1,P} )^2 + \gamma a^2 ( y_1 - y_{1,P} )^2 - a^2 b^2 = \\
  & = b^2 ( x \cos \theta + y \sin \theta - x_{1,P} )^2 + \gamma a^2 ( - x \sin \theta + y \cos \theta - y_{1,P} )^2 - a^2 b^2 = \\
  & = x^2   \left( b^2 \cos^2 \theta + \gamma a^2 \sin^2 \theta \right)
    + 2 x y \left( b^2 - \gamma a^2 \right) \sin \theta \cos \theta 
    + y^2   \left( b^2 \sin^2 \theta + \gamma a^2 \cos^2 \theta \right) \\
  & + x     \left( - 2 b^2 x_{1,P} \cos \theta + 2 \gamma a^2 y_{1,P} \sin \theta \right) 
    + y     \left( - 2 b^2 x_{1,P} \sin \theta - 2 \gamma a^2 y_{1,P} \cos \theta \right) \\
  & + b^2 x_{1,P}^2 + \gamma a^2 y_{1,P}^2 - a^2 b^2 
\end{aligned}$$

per calcolare il discriminante, usando la relazione $\gamma^2 = 1$, come

$$\begin{aligned}
  \frac{\Delta}{4}
  & = \frac{B^2}{4} - AC = \\
  & = \left[ \left( b^2 - \gamma a^2 \right) \sin \theta \cos \theta \right]^2 - \left( b^2 \cos^2 \theta + \gamma a^2 \sin^2 \theta \right) \left( b^2 \sin^2 \theta + \gamma a^2 \cos^2 \theta \right) = \\
  & = b^4 \sin^2 \theta \cos^2 \theta - 2 \gamma a^2 b^2 \sin^2 \theta \cos^2 \theta + a^4 \sin^2 \theta \cos^2 \theta \\
  & - b^4 \sin^2 \theta \cos^2 \theta - \gamma a^2 b^2 \left( \sin^4 \theta + \cos^4 \theta \right) - a^4 \sin^2 \theta \cos^2 \theta = \\
  & = - \gamma a^2 b^2 \left(\underbrace{ \sin^2 \theta + \cos^2 \theta}_{=1} \right)^2 = - \gamma a^2 b^2
\end{aligned}$$

E quindi
- per un'ellisse, $\gamma = 1$ e $\Delta < 0$
- per un'iperbole, $\gamma =-1$ e $\Delta > 0$
-->

```

```{dropdown} Dimostrazione, parabola
:open:

Introducendo le trasformazioni di coordinate, si può manipolare l'espressione dell'equazione in forma canonica delle parabole

<!--
$$\begin{aligned}
  0
  & = a x_2^2 - y_2 = \\
  & = a ( x_1 - x_{1,P} )^2 - y_1 + y_{1,P} = \\
  & = a ( x \cos \theta + y \sin \theta - x_{1,P} )^2 - ( - x \sin \theta + y \cos \theta ) + y_{1,P} = \\
  & = x^2   \left( a \cos^2 \theta \right)
    + 2 x y \left( a \cos \theta \sin \theta \right) 
    + y^2   \left( a \sin^2 \theta \right) \\
  & + x     \left( - 2 a x_{1,P} \cos \theta + 2 \sin \theta \right) 
    + y     \left( - 2 a x_{1,P} \sin \theta - 2 \cos \theta \right) \\
  & + x_{1,P}^2 + y_{1,P}
\end{aligned}$$

per poi calcolare il discrimminante,

$$\begin{aligned}
  \frac{\Delta}{4}
  & = \frac{B^2}{4} - AC = \\
  & = a^2 \cos^2 \theta \sin^2 \theta - a^2 \cos^2 \theta \sin^2 \theta = 0
\end{aligned}$$
-->

```


## Esempi

```{prf:example} Traslazione di ellisse e iperbole

$$\dfrac{x_1^2}{a^2} + \gamma \dfrac{y_1^2}{b^2} = 1$$

$$\begin{aligned}
  0
  & = b^2 x_1^2 + \gamma a^2 y_1^2 - a^2 b^2 = \\
  & = b^2 ( x - x_P )^2 + \gamma a^2 ( y - y_P )^2 - a^2 b^2 = \\
  & = b^2 x^2 + \gamma a^2 y^2 - 2 b^2 x_P x - 2 \gamma a^2 y_P y + b^2 x_P^2 + \gamma a^2 y_P^2 - a^2 b^2
\end{aligned}$$

Thus, the equation (with $\Delta \ne 0$), otherwise it's a parabola)

$$0 = A x^2 + C y^2 + D x + E y + F $$

completing the squares

$$0 = A \left( x + \dfrac{D}{2A} \right)^2 + C \left( y - \dfrac{E}{2C} \right)^2 + F - \dfrac{D^2}{4 A} - \dfrac{E^2}{4 C}$$

$$0 = \dfrac{(x-\dots)^2}{\frac{F-\dots}{A}} + \dfrac{(y-\dots)^2}{\frac{F-\dots}{C}} - 1$$

... depending on the signs of $A$, $C$, $F-\dots$, the latter expression is the equation of an ellipse or a hyperbola.


```

```{prf:example} Rotazione assi di ellisse e iperbole


$$\dfrac{x_1^2}{a^2} + \gamma \dfrac{y_1^2}{b^2} = 1$$

$$\begin{aligned}
  0
  & = b^2 \left( x \cos \theta + y \sin \theta \right)^2 + \gamma a^2 \left( - x \sin \theta + y \cos \theta  \right)^2 - a^2 b^2 = \\
  & = x^2 \left( b^2 \cos^2 \theta + \gamma a^2 \sin^2 \theta \right) 
    + y^2 \left( b^2 \sin^2 \theta + \gamma a^2 \cos^2 \theta \right) 
    + x y \left( 2 b^2 - 2 \gamma a^2 \right) \cos \theta \sin \theta
    - a^2 b^2
\end{aligned}$$


```


## Esercizi


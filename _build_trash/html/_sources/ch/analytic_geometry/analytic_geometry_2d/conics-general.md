(geometry:analytic:2d:conics-general)=
# Equazione generale delle coniche

L'equazione di una conica disposta nel piano in maniera arbitraria rispetto a un sistema di coordinate cartesiane ha l'epsressione

$$A x^2 + B x y + C y^2 + D x + E y + F = 0 \ .$$

E' possibile dimostrare questa affermazione tramite una trasformazione rigida generica di roto-traslazione. In particolare, si applicherà prima una rotazione di un angolo $theta$ e poi una traslazione $\vec{v} = x_{1,P} \hat{x}_1 + y_{1,P} \hat{y}_1$.

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

$$\frac{x_2^2}{a^2} + \gamma \frac{y^2}{b^2} = 1 \qquad \rightarrow \qquad 0 = b^2 x_2^2 + \gamma a^2 y_2^2 - a^2 b^2 \ ,$$

con $\gamma = 1$ per l'ellisse e $\gamma = -1$ per l'iperbole. Introducendo le trasformazioni di coordinate, si può manipolare l'espressione delle coniche

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


**todo** significato


##

## Esercizi


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

```

```{dropdown} Dimostrazione, parabola
:open:

Introducendo le trasformazioni di coordinate, si può manipolare l'espressione dell'equazione in forma canonica delle parabole

```


## Coniche e forme quadratiche simmetriche

La generica forma quadratica in due variabili è

$$Q(\mathbf{x}) = \mathbf{x}^T \mathbf{A} \mathbf{x} = \begin{bmatrix} x & y \end{bmatrix} \begin{bmatrix} A & \frac{B}{2} \\ \frac{B}{2} & C \end{bmatrix} \begin{bmatrix} x \\ y \end{bmatrix} \ .$$

La forma generale di un'ellisse o di un'iperbole con centro nell'origine degli assi è

$$0 = Q(\mathbf{x}) + F \ ,$$

al netto di una costante moltiplicativa arbitraria.[^mult-const]

[^mult-const]: Non cambia la relazione $0 = Q(\mathbf{x}) + F = \widetilde{Q}(\mathbf{x}) + \widetilde{F}$, con $\widetilde{F} = k F$, and $\widetilde{\mathbf{A}} = k \mathbf{A}$.

```{prf:example} Ellisse e iperbole con centro nell'origine e semi-assi coincidenti agli assi $x, \ y$

In questo caso $B = 0$, e quindi

$$0 = F + \mathbf{x}^T \begin{bmatrix} A & 0 \\ 0 & C \end{bmatrix} \mathbf{x} = F + A x^2 + C y^2 \ .$$

Questa espressione rappresenta un'ellisse se $A$, $C$ hanno lo stesso segno e $F$ ha segno opposto. Nel caso in cui $A$, $C$ hanno segno opposto,l'espressione rappresenta l'equazione di un'iperbole. Infine se $A$, $C$, $F$ hanno lo stesso segno, non esistono punti $x$, $y$ nel piano reale che possano soddisfare l'equazione.

**Ellisse.** La lunghezza dei semiassi è $a = \sqrt{ - \frac{F}{A}}$, $b = \sqrt{-\frac{F}{C}}$.

**Iperbole con $A \cdot F < 0$, $C \cdot F > 0$.** La lunghezza dei semiassi è  $a = \sqrt{-\frac{F}{A}}$, $b = \sqrt{\frac{F}{C}}$.

...

La lunghezza degli assi può essere scritta in termini degli autovalori della forma quadratica &mdash; gli autovalori della matrice $\mathbf{A}$ &mdash; come $a_i = \sqrt{\left| \frac{F}{\lambda_i(\mathbf{A})} \right|}$.

```

```{prf:example} Rotazione degli assi

Con la trasformazione di coordinate,

$$\mathbf{x}_1 = \mathbf{R}_{\theta} \mathbf{x} = \begin{bmatrix} c_{\theta} & s_{\theta} \\ - s_{\theta} & c_{\theta} \end{bmatrix} \mathbf{x} \ ,$$

e la sua inversa

$$\mathbf{x} = \mathbf{R}^T_{\theta} \mathbf{x}_1 = \mathbf{R}_{-\theta} \mathbf{x}_1 \ ,$$

l'equazione generica di un'iperbole o un'ellisse con centro nell'origine rispetto alle coordinate $x, y$, può essere trasformata nell'equazione di una conica con centro nell'origine e assi paralleli agli assi delle coordinate $x_1, y_1$.

$$\begin{aligned}
  0
  & = F + \mathbf{x}^T \mathbf{A} \mathbf{x} = \\
  & = F + \mathbf{x}_1^T \mathbf{R} \mathbf{A} \mathbf{R}^T \mathbf{x}_1 = \\
  & = F + \mathbf{x}_1^T \mathbf{A}_1 \mathbf{x}_1 \ ,
\end{aligned}$$

con 

$$\begin{aligned}
\mathbf{A}_1 
  & = \mathbf{R} \mathbf{A} \mathbf{R}^T \mathbf{x}_1 = \\
  & = \begin{bmatrix} c_{\theta} & s_{\theta} \\ -s_{\theta} & c_{\theta} \end{bmatrix} \begin{bmatrix} A & B/2 \\ B/2 & C \end{bmatrix}  \begin{bmatrix} c_{\theta} & -s_{\theta} \\ s_{\theta} & c_{\theta} \end{bmatrix} = \\
  & = \begin{bmatrix} A c_{\theta} + \frac{B}{2} s_{\theta} & \frac{B}{2} c_{\theta} + C s_{\theta} \\ - A s_{\theta} + \frac{B}{2} c_{\theta} & - \frac{B}{2} s_{\theta} + C c_{\theta} \end{bmatrix} \begin{bmatrix} c_{\theta} & -s_{\theta} \\ s_{\theta} & c_{\theta} \end{bmatrix} = \\
  & = \begin{bmatrix}
         A c_{\theta}^2 + B c_{\theta} s_{\theta} + C s_{\theta}^2 &
        (C-A) c_{\theta} s_{\theta} + \frac{B}{2} ( c^2_{\theta} - s^2_{\theta} ) \\
        (C-A) c_{\theta} s_{\theta} + \frac{B}{2} ( c^2_{\theta} - s^2_{\theta} ) &
         A s_{\theta}^2 - B c_{\theta} s_{\theta} + C c_{\theta}^2 
      \end{bmatrix} = \\
  & = \begin{bmatrix}
         A c_{\theta}^2 + B c_{\theta} s_{\theta} + C s_{\theta}^2 &
        \frac{C-A}{2} s_{2\theta} + \frac{B}{2} c_{2\theta}  \\
        \frac{C-A}{2} s_{2\theta} + \frac{B}{2} c_{2\theta}  &
         A s_{\theta}^2 - B c_{\theta} s_{\theta} + C c_{\theta}^2 
      \end{bmatrix} = \\
  & = \begin{bmatrix}
         \frac{A}{2} \left( 1 + c_{2 \theta} \right) + \frac{B}{2} s_{2 \theta} + \frac{C}{2} \left( 1 - c_{2 \theta} \right) &
        \frac{C-A}{2} s_{2\theta} + \frac{B}{2} c_{2\theta}  \\
        \frac{C-A}{2} s_{2\theta} + \frac{B}{2} c_{2\theta}  &
         \frac{A}{2} \left( 1 - c_{2 \theta} \right) - \frac{B}{2} s_{2 \theta} + \frac{C}{2} \left( 1 + c_{2 \theta} \right) 
      \end{bmatrix}  \ .
\end{aligned}$$

avendo usato le relazioni

$$\begin{aligned}
  c_{2\theta} 
  & = c^2_\theta - s^2_\theta = \\
  & = 2 c^2_\theta - 1 = \\
  & = 1 - 2 s^2_\theta  \ ,
\end{aligned}$$

e quindi 

$$\begin{aligned}
  c^2_\theta & = \frac{1}{2} \left( 1 + c_{\theta} \right) \\
  s^2_\theta & = \frac{1}{2} \left( 1 - c_{\theta} \right) \ .
\end{aligned}$$

La matrice diventa diagonale se $\frac{C-A}{2} s_{2\theta} + \frac{B}{2} c_{2\theta} = 0$.

- Se $C = A$ e $B \ne 0$, allora $\cos 2\theta = 0$, e quindi $2\theta = \frac{\pi}{2} + n \pi$, e $\theta_n = \frac{\pi}{4} + n \frac{\pi}{2}$, per $n = 0:3$. In questo caso, la matrice $\mathbf{A}_1$ diventa

   $$\mathbf{A}_1 = \begin{bmatrix} A \mp \frac{B}{2} & 0 \\ 0 & A \pm \frac{B}{2} \end{bmatrix} \ .$$

- Se $C = A$ e $B = 0$, allora l'elemento fuori dalla diagonale è identicamente nullo, ed è soddisfatta per ogni valore di $\theta$. Con questi valori, infatti, l'espressione delle coniche rappresenta una circonferenza.

- Se $C \ne A$, allora $\tan 2 \theta = \frac{B}{A - C}$, e quindi $2 \theta_n = \text{atan}\left( \frac{B}{A - C} \right) + n \pi$, e $\theta_n = \frac{1}{2} \text{atan}\left( \frac{B}{A - C} \right) + n \frac{\pi}{2}$. Usando le relazioni tra funzioni trigonometriche[^tan-sin-cos],

  [^tan-sin-cos]: Tangente $t_x := \frac{s_x}{c_x} = \frac{a}{b}$; identità fondamentale della trigonometria $c_x^2 + s_x^2 = 1$...

  $$\begin{cases}
     \cos 2 \theta & = \mp \frac{A-C}{\sqrt{(A-C)^2 + B^2}} \\
     \sin 2 \theta & = \mp \frac{B  }{\sqrt{(A-C)^2 + B^2}} \\
  \end{cases}$$

  gli elementi diagonali della matrice diventano

  $$\begin{aligned}
    \frac{A + C}{2} \mp^{(1)} \left[ \frac{A - C}{2} c_{2 \theta} + \frac{B}{2} s_{2 \theta} \right]
    & = \frac{A + C}{2} \mp^{(1)} \frac{1}{2} \left[ \mp^{(2)} \left( \frac{(A - C)^2 + B^2}{\sqrt{(A-C)^2 + B^2}} \right) \right] = \\
    & = \frac{A + C}{2} \mp \frac{\sqrt{(A-C)^2 + B^2}}{2}  \ .
  \end{aligned}$$

```

```{prf:example} Dalla forma generale a ellisse/iperbole con semiassi paralleli agli assi coordinati tramite rotazione

Tramite la rotazione

$$\mathbf{x} = \mathbf{R} \mathbf{x}_1$$

è necessario rendere nullo il coefficiente $B_1$

$$\begin{aligned}
  0
  & = \mathbf{x}^T \mathbf{A} \mathbf{x} + \mathbf{d}^T \mathbf{x} + F = \\
  & = \mathbf{x}_1 \mathbf{R}^T \mathbf{A} \mathbf{R} \mathbf{x}_1 + \mathbf{d}^T \mathbf{R} \mathbf{x}_1 + F \ ,
\end{aligned}$$

e quindi rendere diagonalizzare la matrice $\mathbf{A}_1 := \mathbf{R}^T \mathbf{A}\mathbf{R}$, risolvendo il problema agli autovalori della matrice simmetrica $\mathbf{A}$,

$$\mathbf{A} \mathbf{R} = \mathbf{R} \mathbf{A}_1 \ ,$$

con  $\mathbf{A}_1 = \begin{bmatrix} A_{1} & 0 \\ 0 & C_1 \end{bmatrix}$ matrice diagonale che contiene gli autovalori di $\mathbf{A}$ e $\mathbf{R} = \begin{bmatrix} \ \mathbf{r}_1 \ | \ \mathbf{r}_2 \ \end{bmatrix} $ matrice di rotazione che contiene gli autovettori di $\mathbf{A}$.

La rotazione cercata è quindi rappresentabile con la matrice di rotazione $\mathbf{R}$. L'espressione della conica con le nuove coordinate diventa quindi

$$0 = \mathbf{x}_1^T \mathbf{A}_1 \mathbf{x}_1 + \mathbf{d}^T \mathbf{R} \mathbf{x}_1 + F \ .$$


```

```{prf:example} Dalla forma generale a ellisse/iperbole con centro nell'origine degli assi tramite traslazione

Tramite la traslazione

$$\mathbf{x} = \mathbf{x}_1 + \mathbf{x}_c$$

è necessario rendere nulli i coefficienti $\mathbf{d}_1 := \begin{bmatrix} D_1 \\ E_1 \end{bmatrix}$

$$\begin{aligned}
  0
  & = \mathbf{x}^T \mathbf{A} \mathbf{x} + \mathbf{d}^T \mathbf{x} + F = \\
  & = \left( \mathbf{x}_1 + \mathbf{x}_c \right)^T \mathbf{A} \left( \mathbf{x}_1 + \mathbf{x}_c \right) + \mathbf{d}^T \left( \mathbf{x}_1 + \mathbf{x}_c \right) + F = \\
  & = \mathbf{x}_1^T \mathbf{A} \mathbf{x}_1 + \underbrace{\left( 2 \mathbf{x}_c^T \mathbf{A} + \mathbf{d}^T \right)}_{ =: \mathbf{d}_1^T} \mathbf{x}_1 + \mathbf{x}_c^T \mathbf{A} \mathbf{x}_c + \mathbf{d}^T \mathbf{x}_c + F  \ .
\end{aligned}$$

La condizione necessaria a portare il centro nell'origine degli assi $O_1(x_1, y_1)$ diventa quindi

$$\mathbf{0} = \mathbf{d}_1 = 2 \mathbf{A} \mathbf{x}_c + \mathbf{d} \ ,$$

avendo sfruttato la simmetria della matrice $\mathbf{A}$ della forma quadratica, $\mathbf{A}^T = \mathbf{A}$. La soluzione di questo sistema lineare &mdash; non singolare, nel caso di ellissi e iperboli &mdash; rappresenta la traslazione necessaria,

$$\mathbf{x}_c = - \frac{1}{2} \mathbf{A}^{-1} \mathbf{d} \ .$$

L'espressione della conica con le nuove coordinate diventa quindi

$$\begin{aligned}
  0
  & = \mathbf{x}_1^T \mathbf{A} \mathbf{x}_1 + \frac{1}{4} \mathbf{d}^T \mathbf{A}^{-1} \mathbf{d} - \frac{1}{2} \mathbf{d}^T \mathbf{A}^{-1} \mathbf{d}+ F = \\
  & = \mathbf{x}_1^T \mathbf{A} \mathbf{x}_1 - \frac{1}{4} \mathbf{d}^T \mathbf{A}^{-1} \mathbf{d} + F \ .
\end{aligned}$$



```

```{dropdown}  $\tan 2 \theta$

$$\begin{aligned}
 \tan 2 \theta
 & = \dfrac{\sin 2 \theta}{\cos 2 \theta} = \\
 & = \dfrac{2 \sin \theta \cos \theta}{\cos^2 \theta - \sin^2 \theta} = \\
 & = \dfrac{2 \sin \theta \cos \theta}{2 \cos^2 \theta - 1} \ ,
\end{aligned}$$

o elevando al quadrato, dopo aver definito $t := \tan 2 \theta$,

$$\begin{aligned}
  0
  & = t^2 \left( 2 \cos^2 \theta - 1 \right)^2 - 4 \sin^2 \theta \cos^2 \theta = \\
  & = t^2 \left( 4 \cos^4 \theta - 4 \cos^2 \theta + 1 \right) - 4 \cos^2 \theta + 4 \cos^4 \theta = \\
  & = 4 \left( t^2 + 1 \right) \cos^4 \theta - 4 \left( t^2 + 1 \right) \cos^2 \theta + t^2 \ .
\end{aligned}$$

Dividendo per $4 ( t^2 + 1 ) \ne 0$, allora

$$\begin{aligned}
  0
  & = \cos^4 \theta - \cos^2 \theta + \dfrac{t^2}{4 (t^2 + 1)} = \\
  & = \cos^4 \theta - \cos^2 \theta + \dfrac{1}{4} - \dfrac{1}{4} + \dfrac{t^2}{4 ( t^2 + 1 )} = \\
  & = \cos^4 \theta - \cos^2 \theta + \dfrac{1}{4} - \dfrac{ t^2 + 1 - t^2}{4 ( t^2 + 1 ) )} = \\
  & = \left( \cos^2 \theta - \dfrac{1}{2} \right)^2 - \dfrac{ 1 }{4 ( t^2 + 1 )} = \\
\end{aligned}$$

e quindi

$$\begin{aligned}
  \cos^2 \theta & = \dfrac{1}{2} \mp \dfrac{1}{2} \sqrt{ \dfrac{1}{t^2+1} } \\
  \sin^2 \theta & = 1 - \cos^2 \theta = \dfrac{1}{2} \pm \dfrac{1}{2} \sqrt{ \dfrac{1}{t^2+1} } \ .
\end{aligned}$$

Il prodotto 

$$\sin^2 \theta \cos^2 \theta = \dfrac{1}{4} - \dfrac{1}{4 ( t^2 + 1 )} = \dfrac{t^2}{4( t^2 + 1 )} \ .$$


```

## Esercizi


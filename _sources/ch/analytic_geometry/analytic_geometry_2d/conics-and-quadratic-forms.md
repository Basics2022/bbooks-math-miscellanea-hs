(geometry:analytic:2d:conics-and-quadratic-forms)=
# Coniche e forme quadratiche simmetriche

La generica forma quadratica in due variabili è

$$Q(\mathbf{x}) = \mathbf{x}^T \mathbf{A} \mathbf{x} = \begin{bmatrix} x & y \end{bmatrix} \begin{bmatrix} A & \frac{B}{2} \\ \frac{B}{2} & C \end{bmatrix} \begin{bmatrix} x \\ y \end{bmatrix} \ .$$

**Espressione generale di una conica.** L'espressione generale di una conica può essere riscritta usando la notazione matriciale come

$$\begin{aligned}
  0
  & = \mathbf{x}^T \mathbf{A} \mathbf{x} + \mathbf{d}^T \mathbf{x} + F = \\
  & = Q(\mathbf{x}) + L(\mathbf{x}) + F = \\
\end{aligned}$$

**Invarianza del discriminante.** In seguito a una trasformazione di roto-traslazione delle coordinate, il valore del discriminante non cambia.

```{dropdown} Dimostrazione con proprietà del determinante delle matrici

Data l'espressione della conica

$$0 = \mathbf{x}^T \mathbf{A} \mathbf{x} + \mathbf{d}^T \mathbf{x} + F \ ,$$

e la trasformazione di roto-traslazione delle coordinate

$$\mathbf{x} = \mathbf{x}_C + \mathbf{R} \mathbf{x}_1 \ ,$$

è possibile scrivere l'espressione della conica rispetto alle coordinate $\mathbf{x}_1$ come

$$\begin{aligned}
  0
  & = \left( \mathbf{x}_C + \mathbf{R} \mathbf{x}_1 \right)^T \mathbf{A} \left( \mathbf{x}_C + \mathbf{R} \mathbf{x}_1 \right) + \mathbf{d}^T \left( \mathbf{x}_C + \mathbf{R} \mathbf{x}_1 \right) + F = \\
  & =  \mathbf{x}_1^T \underbrace{i\mathbf{R}^T \mathbf{A} \mathbf{R}}_{=:\mathbf{A}_1} \mathbf{x}_1 + \underbrace{\left( 2 \mathbf{x}_C^T \mathbf{A} \mathbf{R} + \mathbf{x}_C \mathbf{d} \right)^T}_{= \mathbf{d}_1^T} \mathbf{x}_1 + \underbrace{\mathbf{x}_C^T \mathbf{A} \mathbf{x}_C + \mathbf{d}^T \mathbf{x}_C + F}_{=: F_1} \ .
\end{aligned}$$

Il discriminante coincide con l'opposto del determinante della matrice della forma quadratica. Il determinante di un prodotto di matrici è uguale al prodotto dei determinanti delle matrici. Una matrice di rotazione ha determinante uguale a $1$. Quindi

$$\Delta_1 = - \text{det} \left(\mathbf{A}_1 \right) = - \underbrace{\text{det} \left( \mathbf{R} \right)}_{=1} \text{det} \left( \mathbf{A} \right) \underbrace{\text{det} \left( \mathbf{R}  \right)}_{=1} = - \text{det} \left( \mathbf{A} \right) = \Delta \ .$$

```

```{dropdown} Dimostrazione con calcolo diretto

Tramite calcolo diretto, con una generica matrice di rotazione 

$$\mathbf{R} = \begin{bmatrix} c_\theta & -s_\theta \\ s_\theta & c_\theta \end{bmatrix} \ ,$$

la matrice della forma quadratica nelle nuove coordinate diventa

$$\begin{aligned}
  \mathbf{A}_1
  & = \mathbf{R}^T \mathbf{A} \mathbf{R} = \\
  & = \begin{bmatrix} c_\theta & s_\theta \\ -s_\theta & c_\theta \end{bmatrix} \begin{bmatrix} A & B/2 \\ B/2 & C \end{bmatrix} \begin{bmatrix} c_\theta & -s_\theta \\ s_\theta & c_\theta \end{bmatrix} = \\
  & = \begin{bmatrix}
         \frac{A}{2} \left( 1 + c_{2 \theta} \right) + \frac{B}{2} s_{2 \theta} + \frac{C}{2} \left( 1 - c_{2 \theta} \right) &
        \frac{C-A}{2} s_{2\theta} + \frac{B}{2} c_{2\theta}  \\
        \frac{C-A}{2} s_{2\theta} + \frac{B}{2} c_{2\theta}  &
         \frac{A}{2} \left( 1 - c_{2 \theta} \right) - \frac{B}{2} s_{2 \theta} + \frac{C}{2} \left( 1 + c_{2 \theta} \right) 
      \end{bmatrix}  \ .
\end{aligned}$$

e l'opposto del suo determinante vale

$$\begin{aligned}
  \Delta_1
  & = \left( \frac{C-A}{2} s_{2 \theta} + \frac{B}{2} c_{2\theta} \right)^2 - \left( \frac{A+C}{2} + \frac{A-C}{2} c_{2\theta} + \frac{B}{2} s_{2\theta} \right) \left( \frac{A+C}{2} - \frac{A-C}{2} c_{2\theta} - \frac{B}{2} s_{2\theta} \right) = \\
  & = \left(\frac{C-A}{2}\right)^2 + \frac{ B ( C - A )}{4} c_{2\theta} s_{2\theta} + \frac{B^2}{4} - \left(\frac{A+C}{2}\right)^2 + \frac{ B ( A - C )}{4} c_{2\theta} s_{2\theta}  = \\
  & = \frac{B^2}{4} - A C \ ,
\end{aligned}$$

cioè è uguale all'opposto del determinante della matrice $\mathbf{A}$.

```

<!--
**Esempio.** **todo** *E\' utile qui? Usare come esempio/esercizio dopo?* La forma generale di un'ellisse o di un'iperbole con centro nell'origine degli assi è

$$0 = Q(\mathbf{x}) + F \ ,$$

al netto di una costante moltiplicativa arbitraria.[^mult-const]

[^mult-const]: Non cambia la relazione $0 = Q(\mathbf{x}) + F = \widetilde{Q}(\mathbf{x}) + \widetilde{F}$, con $\widetilde{F} = k F$, and $\widetilde{\mathbf{A}} = k \mathbf{A}$.
-->

## Ellisse e iperbole

```{prf:example} Ellisse e iperbole con centro nell'origine e semi-assi coincidenti agli assi $x, \ y$

In questo caso $B = 0$, e quindi

$$0 = F + \mathbf{x}^T \mathbf{A}_d \mathbf{x} = F + \mathbf{x}^T \begin{bmatrix} A & 0 \\ 0 & C \end{bmatrix} \mathbf{x} = F + A x^2 + C y^2 \ .$$

Questa espressione rappresenta un'ellisse se $A$, $C$ hanno lo stesso segno e $F$ ha segno opposto. Nel caso in cui $A$, $C$ hanno segno opposto,l'espressione rappresenta l'equazione di un'iperbole. Infine se $A$, $C$, $F$ hanno lo stesso segno, non esistono punti $x$, $y$ nel piano reale che possano soddisfare l'equazione.

**Ellisse.** La lunghezza dei semiassi è $a = \sqrt{ - \frac{F}{A}}$, $b = \sqrt{-\frac{F}{C}}$.

**Iperbole con $A \cdot F < 0$, $C \cdot F > 0$.** La lunghezza dei semiassi è  $a = \sqrt{-\frac{F}{A}}$, $b = \sqrt{\frac{F}{C}}$.

...

La lunghezza degli assi può essere scritta in termini degli autovalori della forma quadratica &mdash; gli autovalori della matrice $\mathbf{A}$ &mdash; come $a_i = \sqrt{\left| \frac{F}{\lambda_i(\mathbf{A})} \right|}$.

```

```{prf:example} Ellisse o iperbole. Traslazione dell'origine o rotazione degli assi

Partendo da un'ellisse o un'iperbole con centro nell'origine e assi coincidenti agli assi coordinati, è possibile ricavare $(a)$ l'equazione della conica con centro in un punto generico e con gli assi paralleli agli asssi coordinati tramite traslazione, $(b)$ l'equazione della conica con centro nell'origine e assi ortogonali con orientazione generica.

$(a)$ Si scelgono le coordinate $\mathbf{x}_1$ rispetto alle quali la curva ha centro nell'origine e assi coincidenti con gli assi coordinati. Con la traslazione dell'origine delle coordinate,

$$\mathbf{x} = \mathbf{x}_C + \mathbf{x}_1 \ ,$$

l'equazione della curva diventa

$$\begin{aligned}
  0
  & = \mathbf{x}_1^T \mathbf{A}_1 \mathbf{x}_1 + F_1 = \\
  & = \left( \mathbf{x} - \mathbf{x}_C \right)^T \mathbf{A}_1 \left( \mathbf{x} - \mathbf{x}_C \right) + F_1 = \\
  & = \mathbf{x}^T \mathbf{A}_1 \mathbf{x} - 2 \mathbf{x}_C^T \mathbf{A}_1 \mathbf{x} + \mathbf{x}_C^T \mathbf{A}_d \mathbf{x}_C + F_1 = \\
  & = A x^2 + C y^2 + 2 A x_C x + 2 C y_C + A x_C^2 + C y_C^2 + F_1 = \\
  & = A x^2 + C y^2 + D x + E y + F
\end{aligned}$$

cioè il coefficiente $B$ del termine $xy$ nell'espressione generale delle coniche è nullo.

$(b)$ Partendo dal sistema di coordinate $\mathbf{x}_1$ rispetto alle quali la curva ha centro nell'origine e assi concidenti con gli assi coordinati, con la rotazione

$$\mathbf{x} = \mathbf{R} \mathbf{x}_1 = \begin{bmatrix} c_\theta & -s_\theta \\ s_\theta & c_\theta \end{bmatrix} \mathbf{x}_1 \ ,$$

l'equazione della curva diventa

$$\begin{aligned}
  0 
  & = \mathbf{x}_1^T \mathbf{A}_1 \mathbf{x}_1 + F_1 = \\
  & = \text{(vedi sotto, qui con $B = 0$)} = \\
  & = \mathbf{x}^T \begin{bmatrix} \frac{A_1+C_1}{2} + \frac{A_1-C_1}{2}c_{2\theta} & \frac{C_1-A_1}{2} s_{2\theta} \\ \frac{C_1-A_1}{2} s_{2\theta} & \frac{A_1+C_1}{2} - \frac{A_1-C_1}{2}c_{2\theta} \end{bmatrix} \mathbf{x} + F_1 = \\
  & = \mathbf{x}^T \begin{bmatrix} A_1 c_\theta^2 - C_1 s_\theta^2 & (C_1-A_1) c_\theta s_{\theta} \\ (C_1-A_1) c_\theta s_{\theta} & A_1 s_\theta^2 + C_1 c_\theta^2 \end{bmatrix} \mathbf{x} + F_1 = \\
  & = \mathbf{x}^T \begin{bmatrix} A & B/2 \\ B/2 & C \end{bmatrix} \mathbf{x} + F =  \\
  & = A x^2 + B xy + C y^2 + F \ ,
\end{aligned}$$

cioè i coefficienti $D$, $E$ dei termini $x$, $y$ nell'espressione generale delle coniche sono nulli.

```

## Parabola

```{prf:example} Parabola con vertice nell'origine e asse coincidente con asse $y$

$$0 = y - a x^2$$

o, usando il formalismo matriciale

$$0 = \mathbf{x}^T \mathbf{A} \mathbf{x} + \mathbf{d}^T \mathbf{x} = \mathbf{x}^T \begin{bmatrix} A & 0 \\ 0 & 0 \end{bmatrix} \mathbf{x} + \begin{bmatrix} 0 & E \end{bmatrix} \mathbf{x}$$

```

```{prf:example} Parabola. Traslazione dell'origine o rotazione degli assi

Partendo da una parabola con vertice nell'origine e asse coincidente con l'asse $y$ di un sistema di coordinate cartesiane $\mathbf{x}_1$, è possibile ricavare $(a)$ l'equazione della conica con centro in un punto generico e con gli assi paralleli agli asssi coordinati tramite traslazione, $(b)$ l'equazione della conica con centro nell'origine e assi ortogonali con orientazione generica.

$(a)$ Con la traslazione dell'origine delle coordinate,

$$\mathbf{x} = \mathbf{x}_C + \mathbf{x}_1 \ ,$$

l'equazione della curva diventa

$$\begin{aligned}
  0
  & = \mathbf{x}_1^T \mathbf{A}_1 \mathbf{x}_1 + \mathbf{d}_1^T \mathbf{x}_1 = \\
  & = \mathbf{x}^T \mathbf{A}_1 \mathbf{x} + \left( - 2 \mathbf{x}_C^T \mathbf{A}_1 + \mathbf{d}_1^T \right) \mathbf{x} + \mathbf{x}_C^T \mathbf{A}_1 \mathbf{x}_C - \mathbf{d}_1^T \mathbf{x}_C = \\
  & = A_1 x^2 - 2 x_C A_1 x + E_1 y + A_1 x_C^2 - E_1 y_C = \\
  & = A_1 ( x - x_C )^2 + E_1 ( y - y_C ) \\
  & = A x^2 + D x + E y + F \ ,
\end{aligned}$$

cioè...

$(b)$ Con la rotazione

$$\mathbf{x} = \mathbf{R} \mathbf{x}_1 = \begin{bmatrix} c_\theta & -s_\theta \\ s_\theta & c_\theta \end{bmatrix} \mathbf{x}_1 \ ,$$

l'equazione della curva diventa

$$\begin{aligned}
  0 
  & = \mathbf{x}_1^T \mathbf{A}_1 \mathbf{x}_1 + \mathbf{d}_1^T \mathbf{x}_1 = \\
  & = \mathbf{x}^T \begin{bmatrix} c_\theta & -s_\theta \\ s_\theta & c_\theta \end{bmatrix} \begin{bmatrix} A_1 & 0 \\ 0 & 0 \end{bmatrix} \begin{bmatrix} c_\theta & s_\theta \\ -s_\theta & c_\theta \end{bmatrix} \mathbf{x} + \begin{bmatrix} 0 & E_1 \end{bmatrix} \begin{bmatrix} c_\theta & s_\theta \\ -s_\theta & c_\theta \end{bmatrix} \mathbf{x} = \\
  & = \mathbf{x}^T A_1 \begin{bmatrix} c_\theta & 0 \\ s_\theta & 0 \end{bmatrix} \begin{bmatrix} c_\theta & s_\theta \\ -s_\theta & c_\theta \end{bmatrix} \mathbf{x} + E_1 \begin{bmatrix} -s_\theta & c_\theta \end{bmatrix} \mathbf{x} = \\
  & = \mathbf{x}^T A_1 \begin{bmatrix} c^2_\theta & c_\theta s_\theta \\ c_\theta s_\theta & s_\theta^2 \end{bmatrix} \mathbf{x} + E_1 \begin{bmatrix} -s_\theta & c_\theta \end{bmatrix} \mathbf{x} = \\
  & = A x^2 + B xy + C y^2 + D x + E y \ ,
\end{aligned}$$

cioè...

```

## Coniche degeneri

```{prf:example} Coppia di rette

$$\begin{aligned}
  0
  & = ( a_1 + b_1 x + c_1 y )( a_2 + b_2 x + c_2 y ) = \\
  & = ( a_1 + \mathbf{b}_1^T \mathbf{x} )( a_2 + \mathbf{b}_2^T \mathbf{x} ) = \\
  & = \mathbf{x}^T \mathbf{b}_1 \mathbf{b}_2^T \mathbf{x} + \left( a_1 \mathbf{b}_2 + a_2 \mathbf{b}_1 \right)^T \mathbf{x} + a_1 a_2 = \\
  & = \mathbf{x}^T \begin{bmatrix} b_1 b_2 & b_1 c_2 \\ c_1 b_2 & c_1 c_2 \end{bmatrix} \mathbf{x} + \begin{bmatrix} a_1 b_2 + a_2 b_1 & a_1 c_2 + a_2 c_1 \end{bmatrix} \mathbf{x} + a_1 a_2 \ ,
\end{aligned}$$

Il determinante vale

$$\Delta := (b_1 c_2) (c_1 b_2) - ( b_1 b_2 ) ( c_1 c_2 ) = 0 \ .$$

Autovalori e autovettori della matrice della forma quadratica sono

$$0 = ( b_1 b_2 - s ) ( c_1 c_2 - s ) - b_1 b_2 c_1 c_2 = s ( s - b_1 b_2 - c_1 c_2 ) \ ,$$

così che gli autovalori sono

$$s_1 = 0 \quad , \quad s_2 = b_1 b_2 + c_1 c_2 = \mathbf{b}_1^T \mathbf{b}_2 \ ,$$

e le componenti degli autovettori soddisfano

$$\begin{aligned}
  0 & =  b_1 b_2 \widetilde{x}_1 + b_1 c_2 \widetilde{y}_1 && \text{se $b_1 \ne 0$} \\
  0 & =  c_1 b_2 \widetilde{x}_1 + c_1 c_2 \widetilde{y}_1 && \text{se $c_1 \ne 0$} \\
  0 & = -c_1 c_2 \widetilde{x}_2 + b_1 c_2 \widetilde{y}_2 && \text{se $c_2 \ne 0$} \\
  0 & =  c_1 b_2 \widetilde{x}_2 - b_1 b_2 \widetilde{y}_2 && \text{se $b_2 \ne 0$} \ ,
\end{aligned}$$

cioè se 

$$
\widetilde{\mathbf{x}}_1 = \begin{bmatrix} c_2 \\ - b_2 \end{bmatrix}
\quad , \quad
\widetilde{\mathbf{x}}_2 = \begin{bmatrix} c_1 \\   b_1 \end{bmatrix}
$$


```


## Trasformazioni

... todo: 
- organizzare il paragrafo
- aggiungere qualche esempio/esercizio
- aggiungere i casi degeneri e impossibili in $\mathbb{R}$

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
  & = \mathbf{R} \mathbf{A} \mathbf{R}^T = \\
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


## Discussione generale e classificazione

$(1)$ **Equazione generale di secondo grado**

$$\begin{aligned}
0 
  & = A x^2 + B x y + C y^2 + D x + E y + F = \\
  & = \mathbf{x}^T \mathbf{A} \mathbf{x} + \mathbf{d}^T \mathbf{x} + F = \\
  & = \begin{bmatrix} \mathbf{x}^T & 1 \end{bmatrix} \begin{bmatrix} \mathbf{A} & \frac{1}{2} \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T & F \end{bmatrix} \begin{bmatrix} \mathbf{x} \\ 1 \end{bmatrix} = \\
  & = \mathbf{z}^T \mathbf{M} \mathbf{z} \ ,
\end{aligned}$$

con

$$\mathbf{A} = \begin{bmatrix} A & B/2 \\ B/2 & C \end{bmatrix} \quad , \quad \mathbf{d} = \begin{bmatrix} D \\  E \end{bmatrix} \ .$$

$(2)$ **Rotazione delle coordinate.** In generale, esiste una rotazione delle coordinate $\mathbf{x} = \mathbf{R} \mathbf{x}_1$, the permette di eliminare il termine misto di secondo grado, $x_1 y_1$, dall'equazione diagonalizzando la matrice $\mathbf{A}$, $\mathbf{A}_d := \text{diag}\{ s_1, s_2 \} = \mathbf{R}^T \mathbf{A} \mathbf{R}$, dove $\mathbf{R}$ è una matrice di rotazione.

- La matrice $\mathbf{A}$ è simmetrica, ed è sempre diagonalizzabile (**todo** *aggiungere un box con la dimostrazione/discussione*) con una base di autovettori ortogonali, anche nel caso di autovalori coincidenti.

- In termini del vettore esteso $\mathbf{z} = \begin{bmatrix} \mathbf{x} \\ 1 \end{bmatrix}$, si può scrivere la trasformazione delle coordinate come

   $$\mathbf{z} = \begin{bmatrix} \mathbf{x} \\ 1 \end{bmatrix} = \begin{bmatrix} \mathbf{R} & \mathbf{0} \\ \mathbf{0}^T & 1 \end{bmatrix} \begin{bmatrix} \mathbf{x}_1 \\ 1 \end{bmatrix} = \widetilde{\mathbf{R}} \mathbf{z}_1 \ .$$

   In seguito a questa trasformazione di coordinate, l'equazione diventa

   $$\begin{aligned}
     0
     & = \mathbf{z}^T \mathbf{M} \mathbf{z} = \\
     & = \mathbf{z}^T_1 \widetilde{\mathbf{R}}^T \mathbf{M} \widetilde{\mathbf{R}} \mathbf{z}_1 = \\
     & = \mathbf{z}^T_1 \begin{bmatrix} \mathbf{A}_d & \frac{1}{2}\mathbf{R}^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T \mathbf{R} & F \end{bmatrix}  \mathbf{z}_1 \ .
   \end{aligned}$$

$(3)$ **Discussione casi a seconda di $\ \mathbf{A}_d$.** La matrice $\mathbf{A}_d = \begin{bmatrix} s_1 & 0 \\ 0 & s_2 \end{bmatrix}$, può avere
1. entrambi gli autovalori uguali a zero: in questi casi la matrice $\mathbf{A}_d = \mathbf{0}$ e la matrice di partenza $\mathbf{A} = \mathbf{0}$ identicamente: in questo caso l'espressione iniziale è al massimo di primo grado $D x + E y + F = 0$
2. un autovalore nullo. In questo caso, la matrice $\mathbf{A}_d = \begin{bmatrix} s_1 & 0 \\ 0 & 0 \end{bmatrix}$, è singolare e non invertibile
3. entrambi gli autovalori diversi da zero. In questo caso, la matrice $\mathbf{A}_d = \begin{bmatrix} s_1 & 0 \\ 0 & 0 \end{bmatrix}$, è non singolare, invertibile e la sua inversa è $\mathbf{A}_d^{-1} = \begin{bmatrix} \frac{1}{s_1} & 0 \\ 0 & \frac{1}{s_2} \end{bmatrix}$

$(3.1)$ ...*banale*...

$(3.2)$ **Parabola e casi degeneri.**  **todo** *Calcolare in maniera esplicita il valore di autovalori e autovettori in questo caso. Questa espressione può essere utilizzata in seguito nella discussione dei risultati.*

**todo** *Se necessario, utilizzare l'espressione della matrice $\overline{\mathbf{R}}^T \mathbf{M} \overline{\mathbf{R}}$*,

$$ \begin{bmatrix} s_1 & 0 & \frac{1}{2} \mathbf{r}_1^T \mathbf{d} \\ 0 & 0 & \frac{1}{2} \mathbf{r}_2^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T \mathbf{r}_1 & \frac{1}{2} \mathbf{d}^T \mathbf{r}_2 & F \end{bmatrix} \ ,$$

e del suo determinante, $| \dots | = - \frac{1}{4} \left( \mathbf{d}^T \mathbf{r}_2 \right)^2 s_1$.

Nel caso $(3.2)$ l'espressione diventa

$$\begin{aligned}
  0 
  & = s_1 x_1^2 + \mathbf{d}^T \mathbf{R} \mathbf{x}_1 + F = \\
  & = s_1 x_1^2 + \mathbf{d}^T \begin{bmatrix} \mathbf{r}_1 & \mathbf{r}_2 \end{bmatrix} \mathbf{x}_1 + F = \\
  & = s_1 x_1^2 + \mathbf{d}^T \mathbf{r}_1 x_1 + \mathbf{d}^T \mathbf{r}_2 y_1 + F \ .
\end{aligned}$$

1. Se $\mathbf{d}^T \mathbf{r}_2 \ne 0$, si ottiene l'espressione di una parabola
2. Altrimenti, si ottengono $(a)$ due rette parallele distinte, $(b)$ due rette parallele coincidenti, $(c)$ nessuna soluzione a seconda delle soluzioni dell'equazione 

   $$s_1^2 x_1 + \mathbf{d}^T \mathbf{r}_1 x_1 + F = 0 \ .$$

$(3.3)$ **Ellissi/iperboli e casi degeneri.** In questo caso si può completare il quadrato &mdash; che coincide ad applicare una traslazione come trasformazione delle coordinate &mdash; per eliminare i termini del primo grado. La traslazione $\mathbf{x}_1 = \mathbf{x}_2 + \mathbf{x}_{1,C}$, o equivalentemente sul vettore

$$\mathbf{z}_1 = \begin{bmatrix} \mathbf{x}_1 \\ 1 \end{bmatrix} = \begin{bmatrix} \mathbf{I} & \mathbf{x}_{1,C} \\ \mathbf{0}^T & 1 \end{bmatrix} \begin{bmatrix} \mathbf{x}_2 \\ 1 \end{bmatrix} = \begin{bmatrix} \mathbf{I} & \mathbf{x}_{1,C} \\ \mathbf{0}^T & 1 \end{bmatrix} \mathbf{z}_2  \ .$$

L'equazione diventa

$$
0 = \mathbf{z}_2^T \begin{bmatrix} \mathbf{A}_d & \mathbf{A}_d \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{R}^T \mathbf{d} \\ \mathbf{x}_{1,C}^T \mathbf{A}_d + \frac{1}{2} \mathbf{d}^T \mathbf{R} & \mathbf{x}_{1,C}^T \mathbf{A}_d \mathbf{x}_{1,C} + \mathbf{x}^T_{1,C} \mathbf{R}^T \mathbf{d} + F \end{bmatrix} \mathbf{z}_2
$$

La traslazione che rende nulli i termini di primo grado, è la traslazione che rende nulli i coefficienti fuori dalla diagonale a blocchi,

$$\mathbf{A}_d \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{R}^T \mathbf{d} = \mathbf{0} \ ,$$

cioè, poiché la matrice $\mathbf{A}_d$ è invertibile,

$$\mathbf{x}_{1,C} = - \frac{1}{2} \mathbf{A}_d^{-1} \mathbf{R}^T \mathbf{d} \ ,$$

e quindi

$$\begin{aligned}
  0 
  & = \mathbf{z}_2^T \begin{bmatrix} \mathbf{A}_d & \mathbf{0} \\ \mathbf{0}^T & F - \frac{1}{4} \mathbf{d}^T \mathbf{R} \mathbf{A}_d^{-1} \mathbf{R}^T \mathbf{d} \end{bmatrix} \mathbf{z}_2 = \\
  & = \mathbf{z}_2^T \begin{bmatrix} \mathbf{A}_d & \mathbf{0} \\ \mathbf{0}^T & F - \frac{1}{4} \mathbf{d}^T \mathbf{A}^{-1} \mathbf{d} \end{bmatrix} \mathbf{z}_2 = \\
  & = \mathbf{z}_2^T \begin{bmatrix} \mathbf{A}_d & \mathbf{0} \\ \mathbf{0}^T & f \end{bmatrix} \mathbf{z}_2 = \\
  & = s_1 x_2^2 + s_2 y_2^2 + f \ .
\end{aligned}$$

Nel caso in cui:
- $s_1 > 0$, $s_2 > 0$:
  - se $f < 0$: ellisse regolare, $\frac{x_2^2}{\left( \sqrt{\frac{-f}{s_1}} \right)^2} + \frac{y_2^2}{\left( \sqrt{\frac{-f}{s_2}} \right)^2} = 1$
  - se $f = 0$: punto $x_2 = y_2 = 0$
  - se $f > 0$: nessuna soluzione

- $s_1 \cdot s_2 < 0$, con $s_1 > 0$:
  - se $f \ne 0$ iperbole regolare, $\frac{x_2^2}{\left( \sqrt{\frac{|f|}{s_1}} \right)^2} - \frac{y_2^2}{\left( \sqrt{\frac{|f|}{-s_2}} \right)^2} = - \text{sgn}(f)$
  - se $f = 0$, iperbole degenere in due rette coincidenti, 

    $$0 = |s_1| x_2^2 - |s_2| y_2^2 = ( \sqrt{|s_1|} x_2 - \sqrt{|s_2|} y_2 ) ( \sqrt{|s_1|} x_2 + \sqrt{|s_2|} y_2) \ .$$

Quando $f = 0$, allora $| \mathbf{M} | = 0$ (questo segue dall'osservazione che la trasformazione di rototraslazione applicata ha determinante = 1.**todo** *Aggiungere box con dimostrazione*).

```{dropdown} Some algebra
:open:

$$\begin{aligned}
 \widetilde{\mathbf{R}}^T \mathbf{M} \widetilde{\mathbf{R}}
 & = \begin{bmatrix}  \mathbf{R}^T & \mathbf{0} \\ \mathbf{0}^T & 1  \end{bmatrix} \begin{bmatrix} \mathbf{A} & \frac{1}{2} \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T & F \end{bmatrix} \begin{bmatrix} \mathbf{R} & \mathbf{0} \\ \mathbf{0}^T & 1 \end{bmatrix} = \\
 & = \begin{bmatrix} \mathbf{R}^T \mathbf{A} & \frac{1}{2}\mathbf{R}^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T & F \end{bmatrix} \begin{bmatrix} \mathbf{R} & \mathbf{0} \\ \mathbf{0}^T & 1 \end{bmatrix} = \\ 
 & = \begin{bmatrix} \mathbf{R}^T \mathbf{A} \mathbf{R} & \frac{1}{2}\mathbf{R}^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T \mathbf{R} & F \end{bmatrix} = \\ 
 & = \begin{bmatrix} \mathbf{A}_d & \frac{1}{2}\mathbf{R}^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T \mathbf{R} & F \end{bmatrix} \ .
\end{aligned}$$

$$\begin{aligned}
 & \begin{bmatrix} \mathbf{I} & \mathbf{0} \\ \mathbf{x}_{1,C}^T & 1 \end{bmatrix} \begin{bmatrix} \mathbf{A}_d & \frac{1}{2} \mathbf{R}^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T \mathbf{R} & F \end{bmatrix} \begin{bmatrix} \mathbf{I} & \mathbf{x}_{1,C} \\ \mathbf{0}^T & 1 \end{bmatrix} = \\
 & = \begin{bmatrix} \mathbf{A}_d & \frac{1}{2} \mathbf{R}^T \mathbf{d} \\ \mathbf{x}_{1,C}^T \mathbf{A}_d + \frac{1}{2} \mathbf{d}^T \mathbf{R} & \frac{1}{2} \mathbf{x}_{1,C}^T \mathbf{R}^T \mathbf{d} + F \end{bmatrix} \begin{bmatrix} \mathbf{I} & \mathbf{x}_{1,C} \\ \mathbf{0}^T & 1 \end{bmatrix} = \\ 
 & = \begin{bmatrix} \mathbf{A}_d & \mathbf{A}_d \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{R}^T \mathbf{d} \\ \mathbf{x}_{1,C}^T \mathbf{A}_d + \frac{1}{2} \mathbf{d}^T \mathbf{R} & \mathbf{x}_{1,C}^T \mathbf{A}_d \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{d}^T \mathbf{R} \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{x}^T_{1,C} \mathbf{R}^T \mathbf{d} + F \end{bmatrix} \\
 & = \begin{bmatrix} \mathbf{A}_d & \mathbf{A}_d \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{R}^T \mathbf{d} \\ \mathbf{x}_{1,C}^T \mathbf{A}_d + \frac{1}{2} \mathbf{d}^T \mathbf{R} & \mathbf{x}_{1,C}^T \mathbf{A}_d \mathbf{x}_{1,C} + \mathbf{x}^T_{1,C} \mathbf{R}^T \mathbf{d} + F \end{bmatrix} \ .
\end{aligned}$$


```


<!--
$(1)$ **Equazione generale di secondo grado**

$$0 = A x^2 + B x y + C y^2 + D x + E y + F = \mathbf{x}^T \mathbf{A} \mathbf{x} + \mathbf{d}^T \mathbf{x} + F \ ,$$

con

$$\mathbf{A} = \begin{bmatrix} A & B/2 \\ B/2 & C \end{bmatrix} \quad , \quad \mathbf{d} = \begin{bmatrix} D \\  E \end{bmatrix} \ .$$

$(2)$ **Trasformazione di coordinate - rotazione - e diagonalizzazione.** Una trasformazione di coordinate - una rotazione - che permette di eliminare il termine misto $x_1 y_1$. In particolare, la matrice di rotazione[^rot-mat-prop] $\mathbf{R}$ della trasformazione

[^rot-mat-prop]: E quindi $\mathbf{R}^{-1} = \mathbf{R}^T$.

$$\mathbf{x} = \mathbf{R} \mathbf{x}_1 \ ,$$

è la matrice che contiene gli autovettori della matrice di $\mathbf{A}$ (simmetrica) e può essere calcolata risolvendo il problema agli autovalori $\mathbf{A} \mathbf{R} = \mathbf{R} \mathbf{A}_d$. Vale quindi la relazione $\mathbf{R}^T \mathbf{A} \mathbf{R}^T = \mathbf{A}_d$.

```{dropdown} Decomposizione spettrale di $ \mathbf{A}$, simmetrica
:open:

$$0 = \left| \mathbf{A} - s \mathbf{I} \right| = \left| \begin{bmatrix} A-s & B/2 \\ B/2 & C-s \end{bmatrix} \right| = (s-A)(s-C) - \frac{B^2}{4} = s^2 - (A+C)s + AC- \frac{B^2}{4} \ .$$

cosicché gli autovalori valgono

$$s_{1,2} = \frac{A+C}{2} \mp \frac{\sqrt{(A-C)^2 + B^2}}{2} \ ,$$

**Autovalori coincidenti** se $A = C$ e $B = 0$. In questo caso, la matrice $\mathbf{A}$ è già in forma diagonale. I due autovalori valgono $s_{1,2} = A$; la molteplicità geometrica dell'autovalore è uguale alla sua molteplicità algebrica: la matrice è diagonalizzabile (è già diagonale! Che scoperta) e si possono scegliere come autovettori $\widetilde{\mathbf{x}}_1 = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$, $\widetilde{\mathbf{x}}_2 = \begin{bmatrix} 0 \\ 1 \end{bmatrix}$, a formare la matrice identità come matrice di trasformazione - rotazione nulla.

**Autovalori distinti.** Gli autovettori sono

$$\widetilde{\mathbf{x}}_{1,2} \propto \begin{bmatrix} \frac{B}{2} \\ \frac{C-A}{2} \mp \frac{\sqrt{(A-C)^2+B^2}}{2} \end{bmatrix} \ . $$

- **Ortogonalità.**

   $$\widetilde{\mathbf{x}}_1^T \widetilde{\mathbf{x}}_2 = \frac{B^2}{4} + \frac{(C_A)^2}{4} - \frac{(A-C)^2}{4} - \frac{B^2}{4} = 0 \ .$$

- **Normalizzazione.** La norma dei due autovettori è

   $$\begin{aligned}
     |\widetilde{\mathbf{x}}_{1,2}|^2 
     & = \frac{B^2}{4} + \frac{(C-A)^2}{4} + \frac{(A-C)^2 + B^2}{4} \mp \frac{(C-A)\sqrt{(A-C)^2 + B^2}}{2} = \\
     & = \frac{1}{2} \left[ (C-A)^2 + B^2 \mp (C-A)\sqrt{(A-C)^2 + B^2} \right] \ ,
   \end{aligned}$$

   e può essere uguale a zero solo se $B = 0$ e $C-A \mp |C-A| = 0$: la seconda relazione è verificata per entrambi gli autovalori solo nel caso in cui $C = A$ (che produce autovalori coincidenti). In ogni caso, se $B = 0$, la matrice è già in forma diagonale e i due autovettori possono essere scelti come  $\widetilde{\mathbf{x}}_1 = \begin{bmatrix} 1 \\ 0 \end{bmatrix}$, $\widetilde{\mathbf{x}}_2 = \begin{bmatrix} 0 \\ 1 \end{bmatrix}$

**Autovalori distinti e non nulli**, se $\frac{B^2}{4}-AC \ne 0$. In questo caso, la trasformazione di coordinate consente di ottenere l'espressione

$$0 = \mathbf{x}_1^T \begin{bmatrix} s_1 & 0 \\ 0 & s_2 \end{bmatrix} \mathbf{x}_1 + \mathbf{d}^T \mathbf{R} \mathbf{x}_1 + F$$

**Caso in cui un autovalore è nullo**, se $\frac{B^2}{4} - AC = 0$, cioè $B = \text{sgn}(B) \sqrt{AC}$. **Osservazione.** Affinché questo avvenga, $A$, $C$ devono essere concordi. Senza perdità di generalità, si può scrivere l'equazione $A x^2 + ... + F = 0$, con la convenzione di segno tale che $A \ge 0$, $C \ge 0$. In questo caso i due autovalori sono

$$s_1 = A+C \quad , \quad s_2 = 0 \ ,$$

e gli autovettori

$$\widetilde{\mathbf{x}}_{1,2} \propto \begin{bmatrix} \mp^{(B)} \sqrt{AC} \\ \frac{C-A}{2} \mp^{(1,2)} \frac{|A+C|}{2} \end{bmatrix}$$

Con la convenzione di segno adottata, gli autovettori diventano

$$\begin{aligned}
  \widetilde{\mathbf{x}}_{1} \propto \begin{bmatrix} \text{sgn}(B) \sqrt{AC} \\ -A \end{bmatrix} \quad , \quad
  \widetilde{\mathbf{x}}_{2} \propto \begin{bmatrix} \text{sgn}(B) \sqrt{AC} \\  C \end{bmatrix} \ , 
\end{aligned}$$

e la matrice di trasformazione - in seguito alla normalizzazione degli autovettori, $|\widetilde{\mathbf{x}}_1|^2 = A C + A^2 = A(A+C)$, $|\widetilde{\mathbf{x}}_2|^2 = A C + C^2 = C(A+C)$ -

$$\mathbf{R} = \frac{1}{\sqrt{A+C}} \begin{bmatrix} \text{sgn}(B) \sqrt{C} & \text{sgn}(B) \sqrt{A} \\ -\sqrt{A} & \sqrt{C} \end{bmatrix}$$

L'equazione della conica nelle nuove coordinate diventa - usando il calcolo diretto come verifica -

$$\begin{aligned}
  0
  & = 
  \mathbf{x}_1^T \frac{1}{A+C} 
  \begin{bmatrix} \text{sgn}(B) \sqrt{C} & -\sqrt{A} \\ \text{sgn}(B) \sqrt{A} & \sqrt{C} \end{bmatrix}
  \begin{bmatrix} A & B/2 \\ B/2 & C \end{bmatrix}
  \begin{bmatrix} \text{sgn}(B) \sqrt{C} & \text{sgn}(B) \sqrt{A} \\ -\sqrt{A} & \sqrt{C} \end{bmatrix} \mathbf{x}_1 +
  \frac{1}{\sqrt{A+C}} \begin{bmatrix} D & E \end{bmatrix}
  \begin{bmatrix} \text{sgn}(B) \sqrt{C} & \text{sgn}(B) \sqrt{A} \\ -\sqrt{A} & \sqrt{C} \end{bmatrix} \mathbf{x}_1 + F = \\
  & =
  \mathbf{x}_1^T \frac{1}{A+C} 
  \begin{bmatrix} \text{sgn}(B) A \sqrt{C} - \frac{B}{2}\sqrt{A} & 
                  \text{sgn}(B) \frac{B}{2} \sqrt{C} - C\sqrt{A} \\
                  \text{sgn}(B) A \sqrt{A} - \frac{B}{2}\sqrt{C} & 
                  \text{sgn}(B) \frac{B}{2} \sqrt{A} - C\sqrt{C}
  \end{bmatrix}
  \begin{bmatrix} \text{sgn}(B) \sqrt{C} & \text{sgn}(B) \sqrt{A} \\ -\sqrt{A} & \sqrt{C} \end{bmatrix} \mathbf{x}_1 +
  \frac{1}{\sqrt{A+C}} \begin{bmatrix} \text{sgn}(B) D \sqrt{C} - E \sqrt{A} & \text{sgn}(B) D \sqrt{A} + E \sqrt{C} \end{bmatrix} \mathbf{x}_1 + F\\
  & =
  \mathbf{x}_1^T \frac{1}{A+C} 
  \begin{bmatrix} - B \text{sgn}(B) \sqrt{A C} + 2 A C & 
                  A \sqrt{AC} - \text{sgn}(B) \left( \frac{BA}{2} + \frac{BC}{2} \right) - C \sqrt{AC} \\
                  \text{sgn}(B) A \sqrt{A} - \frac{B}{2}\sqrt{C} & 
                  \text{sgn}(B) \frac{B}{2} \sqrt{A} - C\sqrt{C}
  \end{bmatrix}
  \mathbf{x}_1 +
  \frac{1}{\sqrt{A+C}} \begin{bmatrix} \text{sgn}(B) D \sqrt{C} - E \sqrt{A} & \text{sgn}(B) D \sqrt{A} + E \sqrt{C} \end{bmatrix} \mathbf{x}_1 + F
\end{aligned}$$

```
-->


## Esercizi



(infinitesimal-calculus:derivatives)=
# Derivate

(infinitesimal-calculus:derivatives:def)=
## Definizione

**Rapporto incrementale.** Il rapporto incrementale di una funzione reale nel punto $x$ viene definito come il rapporto tra la differenza dei valori della funzione e la differenza del valore della variabile indipendente

$$R[f(\cdot), x, a] := \dfrac{f(x+a)-f(x)}{a} \ .$$ (infinitesimal-calculus:derivatives:def_delta)

**Derivata.** La derivata di una funzione reale in un punto $x$ viene definita come il limite del rapporto incrementale, per l'incremento della variabile indipendente che tende a zero,

$$f'(x) = \dfrac{d f}{d x}(x) := \lim_{a \rightarrow 0} \dfrac{f(x+a)-f(x)}{a} \ .$$ (infinitesimal-calculus:derivatives:def)

**todo** *In generale, la derivata di una funzione reale è un'altra funzione reale.*

(infinitesimal-calculus:derivatives:rules)=
## Regole di derivazione

Usando la definizione {eq}`infinitesimal-calculus:derivatives:def` di derivata e le proprietà dei limiti, è possibile dimostrare le seguenti proprietà

- linearità

$$\big( a \, f(x) + b \, g(x) \big)' = a \, f'(x) + b \, g'(x)$$ (infinitesimal-calculus:derivatives:rules:linearity)

- derivata del prodotto di funzioni

$$\Bigl( f(x) g(x) \Bigr)' = f'(x) g(x) + f(x) g'(x)$$ (infinitesimal-calculus:derivatives:rules:product)

- derivata del rapporto di funzioni

$$\Big( \frac{f(x)}{g(x)} \Big)' = \frac{f'(x) g(x) - f(x) g'(x)}{g^2(x)}$$ (infinitesimal-calculus:derivatives:rules:division)

- derivata della funzione composta

$$\frac{d}{dx} f\big( g(x) \big) = \frac{d f}{dy}\Big|_{y=g(x)} \dfrac{d g}{d x}\Big|_{x}$$ (infinitesimal-calculus:derivatives:rules:composite)

- derivata della funzione inversa, $y = f(x)$, $x = f^{-1}(y)$

$$ \dfrac{d f^{-1}}{d y}\bigg|_{y = f(x)} = \dfrac{1}{ \dfrac{d y}{d x}\bigg|_{x}} \ .$$ (infinitesimal-calculus:derivatives:rules:inverse)

```{dropdown} Dimostrazione della linearità dell'operazione di derivazione
**todo**
```
```{dropdown} Dimostrazione della regola del prodotto
**todo**
```
```{dropdown} Dimostrazione della regola del quoziente
**todo**
```
```{dropdown} Dimostrazione della regola della funzione composta
**todo**
```
```{dropdown} Dimostrazione della regola della funzione inversa
Si usa la regola {eq}`infinitesimal-calculus:derivatives:rules:composite` di derivazione della funzione composta applicata alla relazione 

$$x = f^{-1} \left( f(x) \right)$$

che caratterizza la funzione inversa $f^{-1}$. Derivando entrambi i termini della relazione rispetto alla variabile indipendente $x$ si ottiene

$$1 = \dfrac{d f^{-1}}{d y}\bigg|_{y = f(x)} \, \dfrac{d f(x)}{d x} \ ,$$

dalla quale segue immediatamente la regola di derivazione della funzione inversa

$$ \dfrac{d f^{-1}}{d y}\bigg|_{y = f(x)} = \dfrac{1}{ \dfrac{d y}{d x}\bigg|_{x}} \ .$$

```

(infinitesimal-calculus:derivatives:thm)=
## Teoremi

(infinitesimal-calculus:derivatives:thm:fermat)=
```{prf:theorem} Teorema di Fermat
Data la funzione $f: (a,b) \rightarrow \mathbb{R}$ derivabile nel punto di estremo locale $x_0 \in (a,b)$, allora $f'(x_0) = 0$.
```
```{dropdown} Dimostrazione
**todo**
```

<!-- **todo** why was this block here? Was it a test? What are the drawbacks of {dropdown}? Maybe something with .pdf build?
```{toggle} Dim.
:show:
La dimostrazione del teorema di Fermat...
```
-->

(infinitesimal-calculus:derivatives:thm:rolle)=
```{prf:theorem} Teorema di Rolle
Data la funzione $f: [a,b] \rightarrow \mathbb{R}$ continua e derivabile in ogni punto dell'intervallo $(a,b)$ con $f(a) = f(b)$, allora esiste un valore $c \in (a,b)$ in cui $f'(c) = 0$.
```
```{dropdown} Dimostrazione
**todo**
```

(infinitesimal-calculus:derivatives:thm:cauchy)=
```{prf:theorem} Teorema di Cauchy
Date le funzioni $f, g: [a,b] \rightarrow \mathbb{R}$ continue e derivabili in ogni punto dell'intervallo $(a,b)$ con $f(a) = f(b)$, allora esiste un valore $c \in (a,b)$ tale che

$$f(b) - f(a) = (b -  a) f'(c) \ .$$

```
```{dropdown} Dimostrazione
**todo**
```

(infinitesimal-calculus:derivatives:thm:lagrange)=
```{prf:theorem} Theorema di Lagrange
Date le funzioni $f, g: [a,b] \rightarrow \mathbb{R}$ continue e derivabili in ogni punto dell'intervallo $(a,b)$ con $f(a) = f(b)$, allora esiste un valore $c \in (a,b)$ tale che

```
```{dropdown} Dimostrazione
**todo** Usando il teorema di Cauhcy con $g(x) = x$.
```

(infinitesimal-calculus:derivatives:thm:hopital)=
```{prf:theorem} Teorema di de l'Hopital (Bernoulli)
**TODO** *Controllare l'enunciato*
Siano $f(x), g(x): [a,b] \rightarrow \mathbb{R}$ funzioni reali di variabile reale continue in $[a,b]$ e derivabili in $(a,b) \backslash \{ x_0 \}$.

$$\begin{aligned}
  & \lim_{x \rightarrow x_0} f(x) = \lim_{x \rightarrow x_0} g(x) = 0 \qquad \text{oppure}
  & \lim_{x \rightarrow x_0}|f(x)|= \lim_{x \rightarrow x_0}|g(x)|= \infty
\end{aligned}$$

Se esiste 

$$ \lim_{x \rightarrow x_0} \frac{f'(x)}{g'(x)} = L \quad \text{finito}$$

allora

$$ \lim_{x \rightarrow x_0} \frac{f(x)}{g(x)} = L \ . $$
```
```{dropdown} Dimostrazione
**todo**
```
**Oss.** Il teorema di de l'Hopital può essere applicato anche in successione, più di una volta, fermandosi al primo rapporto di derivate dello stesso ordine che non produe una forma indeterminata.


(infinitesimal-calculus:derivatives:fund)=
## Derivate fondamentali

$$\begin{aligned}
f(x) & = x^n    \qquad & \qquad f'(x) & = n x^{n-1}   \\ 
f(x) & = e^x    \qquad & \qquad f'(x) & = e^x         \\ 
f(x) & = \ln x  \qquad & \qquad f'(x) & = \frac{1}{x} \\ 
f(x) & = \sin x \qquad & \qquad f'(x) & = \cos x      \\ 
f(x) & = \cos x \qquad & \qquad f'(x) & =-\sin x         
\end{aligned}$$ (infinitesimal-calculus:derivatives:fund)



(infinitesimal-calculus:derivatives:higher)=
## Derivate di ordine superiore
Nel calcolo delle derivate di ordine superiore non c'è nulla di speciale: una volta che si è in grado di calcolare la derivata di una funzione reale, la derivata di ordine $n$ viene calcolata applicando $n$ volte l'operatore derivata alla funzione.

(infinitesimal-calculus:derivatives:applications)=
## Applicazioni

(infinitesimal-calculus:derivatives:taylor)=
### Espansioni in serie di Taylor e MacLaurin
L'espansione in serie di MacEspansione in serie polinomiale di una funzione reale

$$\begin{aligned}
f(x) & = f(0) + f'(0) x + \frac{f''(0)}{2!} x^2 + \dots + \frac{f^{(n)}(0)}{n!} x^n + o(x^n) = \\
 & = \sum_{k=0}^{n} \frac{f^{k}(0)}{k!} x^k + o(x^n)
\end{aligned}$$

1/(1+x), -1/(1+x)^2, 2/(1+x)^3

#### Esempi
$$\begin{aligned}
 \cos(x) & = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} + o(x^5) \\
 \sin(x) & = x - \frac{x^3}{3!} + \frac{x^5}{5!} + o(x^6) \\
 \ln (1+x) & = x - \frac{x^2}{2} + \frac{x^3}{3} + o(x^3) \\
 (1+x)^a & = 1 + a x + a(a-1) \frac{x^2}{2} + o(x^2) \\
 e^x     & = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \frac{x^5}{5!} + o(x^5)
\end{aligned}$$

**TODO** *Dimostrare la convergenza delle serie. Convergenza puntuale, convergenza uniforme (in un insieme di convergenza, di solito centrato in un punto e le cui dimensioni sono definite da un raggio di convergenza)*

**Rivisitazione limiti notevoli**
Per $x \rightarrow 0$

$$(1+x)^a - 1 = a \, x + o(x)$$

$$\sin x = x +o(x)$$

$$1 - \cos x = \frac{1}{2} x^2 + o(x^3)$$

$$e^x - 1 = x + o(x)$$

$$\ln(1+x) = x + o(x)$$

**Identità di Eulero.** Usando l'espansione in serie di Taylor per l'esponenziale complesso $e^{ix}$, si ottiene

$$\begin{aligned}
e^{ix} & = 1 + ix + \frac{(ix)^2}{2!} + \frac{(ix)^3}{3!} + \frac{(ix)^4}{4!} + \frac{x^5}{5!} + o(x^5) = \\
& = \Big( 1 - \frac{x^2}{2!} + \frac{x^4}{4!} \Big) + i \Big( x - \frac{x^3}{3!} + \frac{x^5}{5!} \Big) + o(x^5) = \\
& = \cos x + i \sin x \ .
\end{aligned}$$


### Studio di funzione

### Ottimizzazione


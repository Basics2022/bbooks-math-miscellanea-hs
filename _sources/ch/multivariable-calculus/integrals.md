(multivariable-calculus:integrals)=
# Integrali su domini multi-dimensionali

(multivariable-calculus:integrals:def)=
## Definizioni
La definizione di somma di Riemann e di integrale di Riemann per funzioni di più variabili è una estensione naturale della [definizione per funzioni di una variabile](infinitesimal-calculus:integrals:def).

```{prf:definition} Somma di Riemann
:label: multivariable-calculus:integrals:def:riemann-sum

Data una funzione continua e limitata $f: \Omega \subset \mathbb{R}^n \rightarrow \mathbb{R}$ e $\{ \Omega_k \}$ una partizione del dominio $\Omega$, una somma di Riemann viene definita come

$$\sigma = \sum_{k} f(\mathbf{x}_k) \mu(\Omega_k) \ ,$$

essendo $\mathbf{x}_k \in \Omega_k$ e $\mu(\cdot)$ una misura dei sottoinsiemi di $\mathbb{R}^n$.
```

```{prf:definition} Integrale di Riemann
:label: multivariable-calculus:integrals:def:riemann-integral

Sia $\Delta \Omega := \max_k \mu(\Omega_k)$, l'integrale definito di Riemann è definito come il limite per $\Delta \Omega \rightarrow 0$ della somma di Riemann $\sigma$,

$$\int_{\mathbf{x} \in \Omega} f(\mathbf{x}) d \mathbf{x} := \lim_{\Delta \Omega \rightarrow 0} \sigma \ .$$
```

**todo** *Tipi di integrale: a seconda del dominio e della funzione integranda. Qui o nel calcolo vettoriale? Integrali: linea, lavoro; superficie, flusso; volume*

(multivariable-calculus:integrals:geom)=
### Interpretazione geometrica

(multivariable-calculus:integrals:properties)=
### Proprietà dell'integrale definito

(multivariable-calculus:integrals:rules)=
## Regole di integrazione
...

*esempio nel caso di due variabili, con partizione dell'insieme in elementi $\Delta x_i \Delta y_j$ con dominio semplice*

$$\begin{aligned}
  \sigma 
 & = \sum_k f(\mathbf{x}_k) \Delta x_k \Delta y_k = \\
 & = \sum_i \sum_j f(x_i, y_j) \Delta y_j \Delta x_i 
  \rightarrow \sum_i \int_{y=Y_1(x)}^{Y_2(x)} f(x_i, y) dy \, \Delta x_i 
  \rightarrow \int_{x=x_1}^{x_2} \int_{y=Y_1(x)}^{Y_2(x)} f(x_i, y) dy \, dx  \\
 & = \sum_j \sum_i f(x_i, y_j) \Delta x_i \Delta y_j 
  \rightarrow \sum_j \int_{x=X_1(y)}^{X_2(y)} f(x, y) dx \, \Delta y_j 
  \rightarrow \int_{y=y_1}^{y_2} \int_{x=X_1(y)}^{X_2(y)} f(x, y) dx \, dy \\
\end{aligned}$$

```{prf:example}
:label: multivariable-calculus:integral:example
<!-- :class: dropdown -->

Calcolare la massa della superficie delimitata dall'asse $x$ e dalla parabola con equazione $y = 1 - x^2$, e densità $\rho(x,y) = 1 + y$. Dopo aver verificato che il dominio di integrazione è semplice in entrambe le direzioni, come esercizio si chiede di svolgere il calcolo due volte: 1. una volta integrando prima in $y$ e poi in $x$, 2. una volta integrando prima in $x$ e poi in $y$.

**todo** *dominio...*

1.

$$
I_1 = \int_{x=-1}^{1} \int_{y=0}^{1-x^2} \left( 1 + x \right) dy \, dx 
= \int_{x=-1}^{1} ( 1 + x )(1-x^2) \, dx = 
= \int_{x=-1}^{1} ( 1 + x - x^2 - x^3 ) \, dx = 2 - \frac{2}{3} = \frac{4}{3} \ .
$$

2.

$$
I_2 = \int_{y=0}^{1} \int_{x=-\sqrt{1-y}}^{\sqrt{1-y}} \left( 1 + x \right) dy \, dx 
= \int_{y=0}^{1} 2 \sqrt{1-y} \, dy 
$$

e introducendo il cambio di variabile $y = \sin^2 \theta$, con differenziale $dy = 2 \sin \theta \, \cos \theta \, d \theta$, $x=0 \rightarrow \theta = 0$, $x = 1 \rightarrow \theta = \frac{\pi}{2}$,

$$\begin{aligned}
I_2 
& = 2 \int_{\theta=0}^{\frac{\pi}{2}} \cos \theta ( 2 \sin \theta \, \cos \theta ) \, d \theta 
  = 4 \int_{\theta=0}^{\frac{\pi}{2}} \cos^2 \theta \, \sin \theta \, d \theta = \\
& = - 4 \int_{\theta=0}^{\frac{\pi}{2}} d \frac{\cos^3 \theta}{3}
  = - \frac{4}{3} \left[ -\cos^3 \theta \right]\bigg|_{\theta=0}^{\frac{\pi}{2}} = \frac{4}{3} \ .
\end{aligned}$$


```



<!--
(multivariable-calculus:integrals:thms)=
## Teoremi

(multivariable-calculus:integrals:examples)=
## Esempi
-->

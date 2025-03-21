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
**todo** *...volume, massa, totale carica... corrisponenti rispettivamente a funzioni di densità $1$, densità di massa, densità di carica*

(multivariable-calculus:integrals:properties)=
### Proprietà dell'integrale definito
**todo** *additività sui domini di integrazione, linearità sulla funzione integranda; ricordarsi che è una somma; fare riferimento alle [proprietà dell'integrale di funzioni a una variabile](infinitesimal-calculus:integrals:def:definite:prop)*

(multivariable-calculus:integrals:rules)=
## Regole di integrazione

Il calcolo di un integrale di una funzione di più variabili su un dominio $m$-dimensionale può essere svolto con il calcolo di $m$ integrali di funzioni di una variabile.

**todo** ...

Il valore di un integrale su un dominio multi-dimensionale è indipendente dal metodo/ordine di integrazione.

**Osservazione.** Il metodo/ordine di integrazione può quindi essere scelto volta per volta in base a criteri di convenienza, con l'obiettivo di fare il numero minore di calcoli, i calcoli più semplici possibile. Anche qualora non si facesse la scelta "migliore", l'indipendenza del valore dal metodo di integrazione ci assicura di ottenere il risultato desiderato, al netto di errori, al costo/punizione di fare qualche calcolo in più o più complicato.

*esempio nel caso di due variabili, con partizione dell'insieme in elementi $\Delta x_i \Delta y_j$ con* **dominio semplice** **todo** *def di dominio semplice*

$$\begin{aligned}
  \sigma 
 & = \sum_k f(\mathbf{x}_k) \Delta x_k \Delta y_k = \\
 & = \sum_i \sum_j f(x_i, y_j) \Delta y_j \Delta x_i 
  \ \rightarrow \ \sum_i \int_{y=Y_1(x)}^{Y_2(x)} f(x_i, y) dy \, \Delta x_i 
  \ \rightarrow \ \int_{x=x_1}^{x_2} \int_{y=Y_1(x)}^{Y_2(x)} f(x, y) dy \, dx  \\
 & = \sum_j \sum_i f(x_i, y_j) \Delta x_i \Delta y_j 
  \ \rightarrow \ \sum_j \int_{x=X_1(y)}^{X_2(y)} f(x, y_j) dx \, \Delta y_j 
  \ \rightarrow \ \int_{y=y_1}^{y_2} \int_{x=X_1(y)}^{X_2(y)} f(x, y) dx \, dy \\
\end{aligned}$$



```{prf:example} Indipendenza dell'integrale multiplo dal metodo di integrazione
:label: multivariable-calculus:integral:example
:class: dropdown

Calcolare la massa della superficie delimitata dall'asse $x$ e dalla parabola con equazione $y = 1 - x^2$, e densità $\rho(x,y) = 1 + y$. Dopo aver verificato che il dominio di integrazione è semplice in entrambe le direzioni, come esercizio si chiede di svolgere il calcolo due volte: 1. una volta integrando prima in $y$ e poi in $x$, 2. una volta integrando prima in $x$ e poi in $y$.

**todo** *dominio...*

1. Si valuta l'integrale integrando prima sulla variabile $y$ e poi sulla variabile $x$

$$\begin{aligned}
I_1 
& = \int_{x=-1}^{1} \int_{y=0}^{1-x^2} \left( 1 + y \right) dy \, dx 
  = \int_{x=-1}^{1} \left( 1-x^2 + \frac{1}{2} (1-x^2)^2 \right) \, dx = \\ 
& = \int_{x=-1}^{1} \left( \frac{3}{2} - 2 x^2 + \frac{1}{2} x^4 \right) \, dx      
  = 3 - \frac{4}{3} + \frac{1}{5} = \frac{28}{15} \ . 
\end{aligned}$$

<!--
$$\begin{aligned}
I_1 
& = \int_{x=-1}^{1} \int_{y=0}^{1-x^2} \left( 1 + x \right) dy \, dx 
  = \int_{x=-1}^{1} ( 1 + x )(1-x^2) \, dx      
  = \int_{x=-1}^{1} ( 1 + x - x^2 - x^3 ) \, dx = 2 - \frac{2}{3} = \frac{4}{3} \ .
\end{aligned}$$
-->

2. Si valuta l'integrale integrando prima sulla variabile $x$ e poi sulla variabile $y$

$$\begin{aligned}
I_2
& = \int_{y=0}^{1} \int_{x=-\sqrt{1-y}}^{\sqrt{1-y}} \left( 1 + y \right) dx \, dy 
  = \int_{y=0}^{1} 2 ( 1 + y )\sqrt{1-y} \, dy 
\end{aligned}$$

e introducendo il cambio di variabile $y = \sin^2 \theta$, con differenziale $dy = 2 \sin \theta \, \cos \theta \, d \theta$, $x=0 \rightarrow \theta = 0$, $x = 1 \rightarrow \theta = \frac{\pi}{2}$,

$$\begin{aligned}
I_2 
& =  2 \int_{\theta=0}^{\frac{\pi}{2}} (1 + \sin^2 \theta) \, \cos \theta \, ( 2 \sin \theta \, \cos \theta ) \, d \theta
  =  4 \int_{\theta=0}^{\frac{\pi}{2}} (2 - \cos^2 \theta) \, \cos \theta \, \sin \theta \, \cos \theta )  d \theta = \\
& =  8 \int_{\theta=0}^{\frac{\pi}{2}} \cos^2 \theta \, \sin \theta \,  d \theta
   - 4 \int_{\theta=0}^{\frac{\pi}{2}} \cos^4 \theta \, \sin \theta \,  d \theta 
  =- 8 \int_{\theta=0}^{\frac{\pi}{2}} d \frac{\cos^3 \theta}{3}
   + 4 \int_{\theta=0}^{\frac{\pi}{2}} d \frac{\cos^5 \theta}{5} 
  = \frac{8}{3} - \frac{4}{5} = \frac{28}{15} \ .
\end{aligned}$$

Si osservi come il risultato dell'integrale è indipendente dall'ordine di integrazione.

<!--
$$
I_2 = \int_{y=0}^{1} \int_{x=-\sqrt{1-y}}^{\sqrt{1-y}} \left( 1 + x \right) dx \, dy 
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
-->

```


(multivariable-calculus:integrals:thms)=
## Teoremi
```{prf:theorem} Lemma di Green

```

<!--
(multivariable-calculus:integrals:examples)=
## Esempi
-->

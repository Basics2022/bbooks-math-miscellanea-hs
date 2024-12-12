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
  \rightarrow \sum_j \int_{x=X_1(y)}^{X_2(y)} f(x, y_j) dx \, \Delta y_j 
  \rightarrow \int_{y=y_1}^{y_2} \int_{x=X_1(y)}^{X_2(y)} f(x, y_j) dx \, dy \\
\end{aligned}$$


<!--
(multivariable-calculus:integrals:thms)=
## Teoremi

(multivariable-calculus:integrals:examples)=
## Esempi
-->

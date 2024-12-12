(multivariable-calculus:integrals)=
# Integrali su domini multi-dimensionali

(multivariable-calculus:integrals:def)=
## Definizioni
**Somma di Riemann.** Data una funzione continua e limitata $f: \Omega \subset \mathbb{R}^n \rightarrow \mathbb{R}$ e $\{ \Omega_k \}$ una partizione del dominio $\Omega$, una somma di Riemann viene definita come

$$\sigma = \sum_{k} f(\mathbf{x}_k) \mu(\Omega_k) \ ,$$

essendo $\mathbf{x}_k \in \Omega_k$ e $\mu(\cdot)$ una misura dei sottoinsiemi di $\mathbb{R}^n$.

**Integrale di Riemann.** Sia $\Delta \Omega := \max_k \mu(\Omega_k)$, l'integrale definito di Riemann è definito come il limite per $\Delta \Omega \rightarrow 0$ della somma di Riemann $\sigma$,

$$\int_{\mathbf{x} \in \Omega} f(\mathbf{x}) d \mathbf{x} := \lim_{\Delta \Omega \rightarrow 0} \sigma \ .$$

(multivariable-calculus:integrals:geom)=
### Interpretazione geometrica

(multivariable-calculus:integrals:properties)=
### Proprietà dell'integrale definito

(multivariable-calculus:integrals:thms)=
## Teoremi

(multivariable-calculus:integrals:rules)=
## Regole di integrazione

(multivariable-calculus:integrals:examples)=
## Esempi


```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
(math-hs:precalculus:polynomials)=
# Polinomi

## Fattorizzazione

**todo** *Fare esempi di applicazione del teorema fondamentale dell'algebra, come soluzione delle ODE lineari omogenee a coffficienti costanti*


(math-hs:precalculus:polynomials:alg-fund-thm)=
### Teorema fondamentale dell'algebra
Il teorema fondamentale dell'algebra afferma che ogni polinomio in una variabile complessa $z \in \mathbb{C}$ a coefficienti complessi,

$$p_n(z) = a_n z^n + \dots a_1 z + a_0 \ ,$$

ammette almeno una radice complessa, o zero. Di conseguenza, lo stesso polinomio di grado $n$ ammette $n$ zeri complessi e può essere fattorizzato come prodotto di monomi

$$p_n(z) = a_n ( z - z_1 ) \dots ( z - z_n ) \ ,$$

essendo $z_k$, $k=1:n$, gli zeri del polinomio.

### In campo reale

Ogni polinomio $p_n(x)$ a coefficienti reali può essere fattorizzato nel prodotto di binomi e trinomi a coefficienti reali,

$$\begin{aligned}
  p_n(x) & = a_n x^n + a_{n-1} x^{n-1} + \dots a_1 x + a_0 = \\
         & =a_n ( x - z_1 ) \dots ( x - z_p ) ( x^2 + b_1 x + c_1 ) \dots ( x^2 + b_q x + c_q )
\end{aligned}$$

con $p + 2q = n$.

(math-hs:precalculus:polynomials:alg-fund-thm:real-coeffs)=
### In campo complesso

Ogni polinomio $p_n(x)$ **a coefficienti reali** può essere fattorizzato nel prodotto di $n$ binomi coefficienti complessi,

$$\begin{aligned}
  p_n(x) & = a_n x^n + a_{n-1} x^{n-1} + \dots a_1 x + a_0 = \\
         & = a_n ( x - z_1 ) \dots ( x - z_n ) \ .
\end{aligned}$$

Gli zeri di un polinomio a coefficienti costanti possono essere o reali o complessi coniugati, cioè o $z_k \in \mathbb{R}$ o se $z_k \notin \mathbb{R}$ allora anche $z_k^*$ è uno zero del polinomio.


#### Esempio
Il polinomio di terzo grado $p(x) = x^3 + 1$ può essere fattorizzato come

$$\begin{aligned}
  p(x) = x^3 + 1
     & = (x - 1) \, ( x^2 + x + 1 ) = \\
     & = (x - 1) \, \left( x - \left( -\frac{1}{2} - i \frac{\sqrt{3}}{2} \right) \right) \, \left( x - \left( -\frac{1}{2} + i \frac{\sqrt{3}}{2} \right) \right) \\
\end{aligned}$$

Il polinomio ha coefficienti reali. Gli zeri del polinomio sono o reali, come  $1$, o complessi coiungati come $\left( -\frac{1}{2} + i \frac{\sqrt{3}}{2} \right)^* = -\frac{1}{2} - i \frac{\sqrt{3}}{2}$.


(math-hs:precalculus:polynomials:binomial-thm)=
## Teorema binomiale

Con esponente naturale $p \in \mathbb{N}$, 

$$\left( x + y \right)^p = \sum_{k=0}^{p} \left( \begin{matrix} p \\ k \end{matrix} \right) x^k \, y^{p-k} \ ,$$

avendo indicato il coefficente binomiale 

$$\left( \begin{matrix} p \\ k \end{matrix} \right) = \frac{p!}{k! (p-k)!}$$

Con esponente non naturale $p \in \mathbb{Z}, \mathbb{Q}, \mathbb{R}$,... **todo**



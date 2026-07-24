(math-hs:series-functions-real)=
# Successioni e serie di funzioni reali

Questa sezione è dedicata alle successioni e serie di funzioni reali.

```{dropdown} Vedi anche
:open:

* [Successioni e serie numeriche reali](math-hs:sequence-series-numerical-real)
* [Successioni e serie di funzioni reali](math-hs:series-functions-real)
* [Successioni e serie numeriche complesse](math-hs:series-numerical-complex)
* [Successioni e serie di funzioni complesse](math-hs:series-functions-complex)

```

(math-hs:series:fun:sequences:def)=
## Successioni di funzioni

**Definizione.** Una successione di funzioni tra l'insieme $X$ e l'insieme $Y$, è una funzione che associa ai numeri interi $n \in \mathbb{N}$ una funzione $f_n: X \rightarrow Y$.

**Limite di una successione di funzioni.** Limite "punto per punto". L'esistenza di un limite (finito?) punto per punto definisice la [convergenza puntuale](math-hs:series:fun:sequences:convergence:point).

(math-hs:series:fun:sequences:convergence)=
### Convergenza

(math-hs:series:fun:sequences:convergence:point)=
#### Convergenza puntuale
```{prf:definition} Convergenza puntuale
:label: series-fun-seq-convergence-point

Sia $\{ f_n \}_{n \in \mathbb{N}}$ una successione di funzioni $f_n:  X \rightarrow \mathbb{R}$. La successione converge puntualmente alla funzione $f$ se per ogni $x \in X$ e per ogni $\varepsilon > 0$ esiste $N \in \mathbb{N}$ tale che

$$|f_n(x) - f(x)| < \varepsilon \ ,$$

per tutti gli $n > N$.

```

**Osservazione.** Qui $N(\varepsilon,x)$.

(math-hs:series:fun:sequences:convergence:uniform)=
#### Convergenza uniforme

```{prf:definition} Convergenza uniforme
:label: series-fun-seq-convergence-uniform

Sia $\{ f_n \}_{n \in \mathbb{N}}$ una successione di funzioni $f_n:  X \rightarrow \mathbb{R}$. La successione converge uniformemente alla funzione $f$ se per ogni $\varepsilon > 0$ esiste $N \in \mathbb{N}$ tale che

$$|f_n(x) - f(x)| < \varepsilon \ , \qquad \forall x \in X \ ,$$

per tutti gli $x \in X$ tutti gli $n > N$.

```

**Osservazione.** Qui $N(\varepsilon)$.

(math-hs:series:fun:sequences:convergence:example)=
#### Esempio


The sequence of functions

$$f_n(x) = \frac{n x}{1+n^2 x^2}$$

converges pointwise for every $x \in D = [0,1]$, while it fails to converge uniformly.



**Pointwise convergence.** For any fixed $x \in D$,

$$\lim_{n \rightarrow +\infty} f_n(x) = \lim_{n \rightarrow +\infty} \frac{n x}{1+n^2 x^2} = 0 \ ,$$

and thus the sequence of functions $f_n(x)$ **converges pointwise** to $f(x) = 0$ everywhere in $D$, i.e. for $\forall x \in D$.

**Uniform convergence.** Let's prove that this sequence of functions doesn't converge uniformly to $f(x) = 0$, evaluating the maximum of the difference

$$\max_{x \in D} | f_n(x) - f(x) | = \| f_n(x) - f(x) \|_{\infty} = \left|\ \frac{nx}{1+n^2x^2} \right| \ .$$

With the study of function of $g(x;n) = \frac{nx}{1+n^2x^2}$, its derivative reads

$$\frac{d}{dx} g(x;n) = \frac{n(1+n^2 x^2) - 2 n^3 x^2}{(1+n^2 x^2)^2} = \frac{n ( 1 - n^2 x^2 )}{(1+n^2 x^2)^2} \ .$$

This becomes zero for $\overline{x}_n = \frac{1}{n}$ (it's a maximum) and the function (max distance between $f_n(x)$ and $f(x)=0$) reads

$$g(\overline{x}_n;n) = \frac{1}{2} \ .$$

Thus, it's not possible to find a $n$ so that $|y_{n}(x) - f(x)| < \frac{1}{2}$ for $\forall x \in D$ and $n > N$.

```{list-table}
:header-rows: 0
* - ![](../../media/function-sequence-convergence-example.png)
```


### Proprietà nell'ipotesi di convergenza uniforme

Sotto opportune ipotesi, la convergenza uniforme permette di invertire l'ordine del limite $\lim_{n\rightarrow+\infty}$ della successione di funzioni $f_n(x)$ con gli operatori di limite $\lim_{x \rightarrow + \infty}$, di derivata e di integrale.

#### Limite

If the sequence of continuous functions $f_n(x) \rightarrow f(x)$ uniformly, then $f(x)$ is continuous as well.
This allows interchanging the order of the limits,

$$\lim_{n \rightarrow +\infty} \lim_{x \rightarrow c}f_n(x) = \lim_{x \rightarrow c} \lim_{n \rightarrow +\infty} f_n(x) = \lim_{x \rightarrow c} f(x) = f(c) \ .$$

```{dropdown} Dimostrazione
:open:

$$\begin{aligned}
  | f(x) - f(c) |
  & = | f(x) - f_n(x) + f_n(x) - f_n(c) + f_n(c) - f(c)| = \\
  & \le | f(x) - f_n(x) | + | f_n(x) - f_n(c) | + | f_n(c) - f(c)|
\end{aligned}$$

* The first term is treated with *uniform convergence*.
Uniform covergence implies, $\forall \varepsilon_1 > 0$, $\exists N_1$ s.t. $| f_n(x) - f(x) | < \varepsilon_1$ for $\forall x$, $\forall n > N_1$.

* the third with the pointwise convergence in $x = c$.
Pointwise covergence for $x = c$ implies, $\forall \varepsilon_3 > 0$, $\exists N_3$ s.t. $| f_n(c) - f(c) | < \varepsilon_3$ for $\forall n > N_3$.

* the second with *continuity of $f_n(x)$*. Let's choose and **fix** a specific $n$, so that $n > \max\{ N_1, N_3 \}$, Continuity of $f_{n}(x)$ in $x = c$ implies $\forall \varepsilon_2 > 0$, $\exists \delta_2 > 0$ s.t. $|f_{n}(x) - f_{n}(c)| < \varepsilon_2$ for $\forall x \in U_{c,\delta_2}$.


Fix $\varepsilon > 0$, and let $\varepsilon_1 = \varepsilon_2 = \varepsilon_3 = \frac{\varepsilon}{3}$.

$$\begin{aligned}
  | f(x) - f(c) |
  & = | f(x) - f_n(x) + f_n(x) - f_n(c) + f_n(c) - f(c)| = \\
  & \le | f(x) - f_n(x) | + | f_n(x) - f_n(c) | + | f_n(c) - f(c)| = \\
  & \le \varepsilon_1 + \varepsilon_2 + \varepsilon_3  = \varepsilon \ ,
\end{aligned}$$

for $\forall x \in U_{c,\delta_2}$. This is the definition of continuity of $f(x)$ in $x = c$.

```

#### Integrale

Aka [**Teorema della convergenza dominata**](https://it.wikipedia.org/wiki/Teorema_della_convergenza_dominata).

If continuous functions $f_n(x) \rightarrow f(x)$ continuously for $x \in [a,b]$ then

$$\lim_{n\rightarrow +\infty} \int_{a}^{b} f_n(x) \, dx = \int_{a}^{b} f(x) \, dx \ .$$


```{dropdown} Dimostrazione
:open:

**Proof.** Let's prove the limit as $n \rightarrow +\infty$ of the absolute value of the difference of the integral of the sequence and the function is zero.

$$\begin{aligned}
  \left| \int_{a}^{b} f_n(x) \, dx - \int_{a}^{b} f(x) \, dx \right| =
  \left| \int_{a}^{b} \left[ f_n(x) - f(x) \right] \, dx \right| \le
  \int_{a}^{b} \left| f_n(x) - f(x) \right| \, dx \ .
\end{aligned}$$

If $f_n(x) \rightarrow f(x)$ uniformly, then for $\forall \varepsilon > 0$, there's a $N$ s.t. $|f_n(x) - f(x)| < \varepsilon$ for $\forall x \in [a,b]$, $\forall n > N$. Let's set $\widetilde{\varepsilon} := \varepsilon (b-a)$, then

$$\int_{a}^{b} \left| f_n(x) - f(x) \right| \, dx < \varepsilon (b-a) = \widetilde{\varepsilon} \ .$$

Combining the inequalities provides the definition of the limit of the sequence $I_n := \int_{a}^{b} f_n(x) \, dx$, with value $I := \int_{a}^{b} f(x) \, dx$,

> For $\forall \widetilde{\varepsilon} > 0$, $\exists N$ so that $ | I_n - I | < \widetilde{\varepsilon} $.

or equivalently

$$\lim_{n \rightarrow +\infty} I_n = I$$

or

$$\lim_{n \rightarrow +\infty} \int_{a}^{b} f_n(x) \, dx = \int_{a}^{b} f(x) \, dx \ .$$


```

#### Derivata

Let $f_n(x)$ be a sequence of continuously differentiable functions on $[a,b]$.

If
* $f_n(x_0)$ converges for at least one $x_0 \in [a,b]$
* the sequence of derivatives $f'_n(x)$ converges uniformly to a limit function $g(x)$,

then

* $f_n(x)$ converges uniformly to a differentiable function $f(x)$ and

   $$\frac{d}{dx}\left( \lim_{n \rightarrow +\infty} f_n(x) \right) = \lim_{n\rightarrow} \left( \dfrac{d}{dx} f_n(x) \right) = g(x) \ .$$


```{dropdown} Dimostrazione
:open:

**Proof.** Using fundamental theorem of calculus and the limit-integral swap

$$f_n(x) - f_n(x_0) = \int_{a}^{b} f'_n(t) \, d t$$

Taking the limit $n \rightarrow + \infty$

$$\lim_{n \rightarrow +\infty} \left( f_n(x) - f_n(x_0) \right) = \lim_{n \rightarrow +\infty} \int_{x_0}^{x} f'_n(t) \, d t \ ,$$

and, as $f'_n(t) \rightarrow g(t)$ uniformly on $[a,b]$ it's possible to swap the limit and the integral,

$$\lim_{n \rightarrow +\infty} \left( f_n(x) - f_n(x_0) \right) = \lim_{n \rightarrow +\infty} \int_{x_0}^{x} f'_n(t) \, d t \ = \int_{x_0}^{x}  \lim_{n \rightarrow +\infty} f'_n(t) \, d t = \int_{t=x_0}^{x} g(t) \, dt$$

Using the pointwise convergence in $x_0$ it follows

$$\lim_{n\rightarrow+\infty} f_n(x) = f(x_0) + \int_{t=x_0}^{x} g(t) \, dt \ $$

Let define the limit of the sequence of function as $f(x)$ (as it must be for the application of the fundamental theroem of calculus.

---

$$\begin{aligned}
  \left| f_n(x) - f(x) \right|
  & = \left| \left( f_n(x_0) + \int_{x_0}^{x} f'_n(t) \, dt \right) - \left( f(x_0) + \int_{x_0}^{x} g(t) \, dt \right) \right| = \\
  & \le \left| f_n(x_0) - f(x_0) \right| + \int_{x_0}^{x}  \left| f'(t) - g(t) \right| \, dt = \\
  & \le \left| f_n(x_0) - f(x_0) \right| + ( b - a ) \sup_{t \in [a,b]}\left| f'(t) - g(t) \right|
\end{aligned}$$

and taking the $\sup$

$$
\sup_{x \in [a,b]} \left| f_n(x) - f(x) \right| \le \left| f_n(x_0) - f(x_0) \right| + ( b - a ) \sup_{t \in [a,b]}\left| f'(t) - g(t) \right|
$$

As $n \rightarrow +\infty$,
* the first term goes to zero for the pointwise convergence of $f_n$ in $x_0$
* the second term goes to zero for the uniform convergence of $f'_n \rightarrow g$

thus $f_n \rightarrow f$ uniformly.



```

(vedi W.Rudin Principles of Mathematial Analysis[^rudin]. E' necessario? Libro per corsi universitari di Analisi). *Uncomment?*

<!--

**Proprietà.** Sotto opportune ulteriori ipotesi (vedi W.Rudin Principles of Mathematial Analysis[^rudin]), la convergenza uniforme permette di invertire l'ordine delle operazioni di limite, derivata e integrale con la sommatoria nelle serie di funzioni:

[^rudin]: W.Rudin, *Principles of Mathematial Analysis*, Third Edition

```{admonition} Convergenza uniforme e il limite
Data una successione di funzioni derivatbili $f_n(x)$, ...

```

```{admonition} Convergenza uniforme e la derivata
Data una successione di funzioni derivatbili $f_n(x)$, ...

$$f'(x) = g(x)$$

```

```{admonition} Convergenza uniforme e l'integrale
Data una successione di funzioni derivatbili $f_n(x)$, ...

```

**todo** discutere differenze tra i due tipi di convergenza; discutere i limiti della convergenza puntuale; discutere le proprietà

-->

(math-hs:series:fun:series)=
## Serie di funzioni reali


Data una successione di funzioni $\{f_n\}_{n \in \mathbb{N}}$ definite su un dominio $D \subseteq \mathbb{R}$, si definisce **serie di funzioni** la somma formale:

$$\sum_{n=0}^{+\infty} f_n(x)$$

La convergenza (puntuale, uniforme o assoluta) della serie è studiata attraverso la **successione delle somme parziali** $S_N(x) = \sum_{n=0}^{N} f_n(x)$.

### Convergenza

**Convergenza puntuale.** La serie di funzioni converge puntualmente a una funzione $f$ in $A$, se la serie numerica $\sum_{n=0}^{+\infty} f_n(x_0)$ converge a $f(x_0)$ per ogni $x_0 \in A$


**Convergenza assoluta.** La serie di funzioni converge assolutamente, se la serie $|f_n|$ converge puntualmente.


**Convergenza uniforme.** La serie di funzioni converge uniformemente a una funzione $f$ in $A$, se la successione delle somme parziali $\{ s_n(x) \}_{n \in \mathbb{N}}$ converge uniformemente.


**Convergenza totale.** Se soddisfa il [criterio di Weierstrass](https://it.wikipedia.org/wiki/Criterio_di_Weierstrass)
1. Esiste una successione $\{ M_n \}_{n \in \mathbb{N}}$ tale che 

   $$|f_n(x)| \le M_n \quad \text{s.t.} \quad \sum M_n < + \infty \quad , \quad \forall x \ in A \quad n \in \mathbb{N}$$

cioè esiste una serie $\{ M_n \}$ a termini positivi convergence che domini la serie di funzioni considerata.

#### Proprietà delle convergenze
* 
  $$\text{totale} \rightarrow \text{uniforme, assoluta}$$

* Se una serie converge uniformemente in $A$, allora la successione delle funzioni converge uniformemente a $0$ in $A$, cioè $\lim_{n \rightarrow +\infty} \sup_{x \in A} |f_n(x)| = 0$.

#### Proprietà legate alla convergenza

**Limite.** Siano $f_n(x)$ continue (e quindi $\lim_{x \rightarrow x_0} f_n(x) = f_n(x_0)$), e sia $\sum_{n=0}^{+\infty} f_n(x) \rightarrow f(x)$ uniformemente. Allora anche la funzione somma $f(x)$ è continua e

$$\begin{aligned}
  \lim_{x \rightarrow x_0} \sum_n f_n(x)
  & = \lim_{x \rightarrow x_0} f(x) = f(x_0)  = \sum_{n} f_n(x_0) = \sum_n \lim_{x \rightarrow x_0} f_n(x) \ . \\
\end{aligned}$$

```{dropdown} Dimostrazione

 Ipotesi e tesi: Se $f_n$ sono continue e $\sum_{n=0}^\infty f_n(x)$ converge uniformemente a $f(x)$, allora $f(x)$ è continua e $\lim_{x \to x_0} \sum_{n=0}^\infty f_n(x) = \sum_{n=0}^\infty \lim_{x \to x_0} f_n(x)$.

 Dimostrazione: 
 * Sia $S_N(x) = \sum_{n=0}^N f_n(x)$. Poiché $S_N(x)$ è somma finita di funzioni continue, $S_N(x)$ è continua per ogni $N \in \mathbb{N}$.
 * Per ipotesi, $S_N(x) \rightrightarrows f(x)$ (converge uniformemente) su $A$.
 * Per il Teorema sulla continuità del limite uniforme di una successione di funzioni, il limite uniforme di una successione di funzioni continue è una funzione continua.
 * Quindi $f(x)$ è continua in $x_0$. Di conseguenza:

$$\lim_{x \to x_0} \sum_{n=0}^{+\infty} f_n(x) = \lim_{x \to x_0} f(x) = f(x_0) = \sum_{n=0}^{+\infty} f_n(x_0) = \sum_{n=0}^{+\infty} \lim_{x \to x_0} f_n(x) \quad \blacksquare$$

```

**Integrale.** Sia $\sum_n f_n(x)$ una serie di funzioni che converge uniformemente a $f(x)$ in $A$, allora la serie dell'integrale è pari all'integrale della funzione somma,

$$\sum_n \int_{A} f_n(x) \, dx = \int_A \sum_n f_n(x) \, dx = \int_A f(x) \, dx \ .$$

```{dropdown} Dimostrazione

Ipotesi e tesi: Se $\sum_{n=0}^\infty f_n(x)$ converge uniformemente a $f(x)$ su $[a,b]$, allora:

$$\sum_{n=0}^{+\infty} \int_a^b f_n(x) \, dx = \int_a^b \left( \sum_{n=0}^{+\infty} f_n(x) \right) dx = \int_a^b f(x) \, dx$$

Dimostrazione:
* Definiamo la successione delle somme parziali $S_N(x) = \sum_{n=0}^N f_n(x)$. Per la linearità dell'integrale finito:
  
  $$\int_a^b S_N(x) \, dx = \int_a^b \left( \sum_{n=0}^N f_n(x) \right) dx = \sum_{n=0}^N \int_a^b f_n(x) \, dx$$

* Poiché $S_N(x) \rightrightarrows f(x)$ uniformemente su $[a,b]$, per il Teorema di passaggio al limite sotto il segno di integrale per successioni:

  $$\lim_{N \to +\infty} \int_a^b S_N(x) \, dx = \int_a^b \left( \lim_{N \to +\infty} S_N(x) \right) dx = \int_a^b f(x) \, dx$$

* Sostituendo l'uguaglianza del punto 1:

  $$\sum_{n=0}^{+\infty} \int_a^b f_n(x) \, dx = \lim_{N \to +\infty} \sum_{n=0}^N \int_a^b f_n(x) \, dx = \int_a^b f(x) \, dx \quad \blacksquare$$

```

**Derivata.** Sia $\sum_n f_n(x)$ una serie di funzioni derivabili in $A$ convergente in almeno un punto $x_0 \in A$, sia la serie delle derivate $f_n'(x)$ uniformemente convergente. Allora la derivata della funzione somma $f(x)$ può essere scritta come la serie delle derivate.

$$f(x) = \sum_n f_n(x) \ , \ \ \sum_n f'_n(x) \text{ unif. conv} \quad \Rightarrow \quad f'(x) = \frac{d}{dx} f_n(x) = \sum_{n} f'_n(x) \ .$$

```{dropdown} Dimostrazione

Ipotesi e tesi: Siano $f_n \in C^1([a,b])$. Se $\sum_{n=0}^\infty f_n(x_0)$ converge per un punto $x_0 \in [a,b]$ e la serie delle derivate $\sum_{n=0}^\infty f_n'(x)$ converge uniformemente a $g(x)$ su $[a,b]$, allora $\sum_{n=0}^\infty f_n(x)$ converge uniformemente a una funzione $f(x)$ derivabile, e $f'(x) = g(x)$.

Dimostrazione:
* Consideriamo la successione delle somme parziali $S_N(x) = \sum_{n=0}^N f_n(x)$.
* La successione delle derivate delle somme parziali è:

  $$S_N'(x) = \frac{d}{dx} \left( \sum_{n=0}^N f_n(x) \right) = \sum_{n=0}^N f_n'(x)$$

* Per ipotesi, $S_N'(x) \rightrightarrows g(x)$ uniformemente su $[a,b]$ e $S_N(x_0)$ converge puntualmente.
* Per il Teorema di derivazione per successioni di funzioni, $S_N(x)$ converge uniformemente a una funzione derivabile $f(x)$, e vale:

  $$f'(x) = \left( \lim_{N \to +\infty} S_N(x) \right)' = \lim_{N \to +\infty} S_N'(x) = g(x)$$

* Esplicitando nuovamente la somma della serie:

  $$f'(x) = \frac{d}{dx} \left( \sum_{n=0}^{+\infty} f_n(x) \right) = \sum_{n=0}^{+\infty} f_n'(x) \quad \blacksquare$$

```


### Serie di potenze e Serie polinomiali

Le serie di potenze hanno la forma

$$\sum_{n=0}^{+\infty} a_n (x - x_0)^n$$

dove $x_0 \in \mathbb{R}$ è il centro della serie e $a_n \in \mathbb{R}$ sono i coefficienti.

#### Raggio e Intervallo di Convergenza
Per il **Teorema di Abel**, esiste un valore $R \in [0, +\infty]$ chiamato **raggio di convergenza** tale che:
* La serie converge **assolutamente** per ogni $x \in (x_0 - R, x_0 + R)$.
* La serie **non converge** per $|x - x_0| > R$.
* La serie converge **uniformemente** in ogni intervallo chiuso e limitato $[a, b] \subset (x_0 - R, x_0 + R)$.

Il raggio $R$ può essere calcolato tramite i noti criteri della radice o del rapporto sui coefficienti $a_n$:

$$\frac{1}{R} = \limsup_{n \to +\infty} \sqrt[n]{|a_n|} \quad \text{oppure} \quad \frac{1}{R} = \lim_{n \to +\infty} \left| \frac{a_{n+1}}{a_n} \right|$$

---

### Serie di Taylor e MacLaurin

Se una funzione $f(x)$ è infinitamente derivabile ($f \in C^\infty$) in un intorno di $x_0$, è possibile associare a $f$ la sua **serie di Taylor** centrata in $x_0$:

$$T(x) = \sum_{n=0}^{+\infty} \frac{f^{(n)}(x_0)}{n!} (x - x_0)^n$$

Quando $x_0 = 0$, la serie prende il nome di **serie di MacLaurin**.

```{admonition} Condizione per la convergenza della Serie di Taylor
:class: warning
**Attenzione:** L'essere $f \in C^\infty$ *non* garantisce che la serie di Taylor converga a $f(x)$. 
Per garantire che $f(x) = T(x)$, la successione dei resti $R_N(x) = f(x) - S_N(x)$ deve tendere a zero per $N \to +\infty$:

$$\lim_{N \to +\infty} R_N(x) = 0$$

```

#### Esempi notevoli con intervalli di convergenza

1. **Funzione Esponenziale:**

   $$e^x = \sum_{n=0}^{+\infty} \frac{x^n}{n!} = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \dots \quad \forall x \in \mathbb{R} \quad (R = +\infty)$$

2. **Funzione Seno:**

   $$\sin x = \sum_{n=0}^{+\infty} (-1)^n \frac{x^{2n+1}}{(2n+1)!} = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \dots \quad \forall x \in \mathbb{R} \quad (R = +\infty)$$

3. **Funzione Coseno:**

  $$\cos x = \sum_{n=0}^{+\infty} (-1)^n \frac{x^{2n}}{(2n)!} = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \dots \quad \forall x \in \mathbb{R} \quad (R = +\infty)$$

4. **Serie Geometrica (Sviluppo di $\frac{1}{1-x}$):**

  $$\frac{1}{1-x} = \sum_{n=0}^{+\infty} x^n = 1 + x + x^2 + x^3 + \dots \quad \text{per } x \in (-1, 1) \quad (R = 1)$$

5. **Logaritmo Naturale:**

   $$\ln(1+x) = \sum_{n=1}^{+\infty} (-1)^{n-1} \frac{x^n}{n} = x - \frac{x^2}{2} + \frac{x^3}{3} - \dots \quad \text{per } x \in (-1, 1] \quad (R = 1)$$

```{dropdown} Intervalli di convergenza e campo complesso
:open:

$$f(z) = \frac{1}{1+z^2}$$

$$\begin{aligned}
  f'  (z) & = - 2 z ( 1 + z^2 )^{-2} \\
  f'' (z) & = - 2 ( 1 + z^2 )^{-2} - 2 z (-2) ( 1 + z^2 )^{-3} 2 z = ( 1 + z^2 )^{-3} ( -2 - 2 z^2 + 8 z^2 ) = \\
          & = ( 1 + z^2 )^{-3} ( - 2 + 6 z^2 ) \\
  f'''(z) & = -3 (1+z^2)^{-4} 2 z ( -2 + 6 z^2 ) + ( 1 + z^2 )^{-3} 12 z = \\
          & = ( 1 + z^2 )^{-4} ( 12 z - 36 z^3 + 12 z + 12 z^3 ) = \\
          & = 24 ( 1 + z^2 )^{-4} z ( 1 + z^2 ) \\
  f^{(4)}(z) & = \dots \\
\end{aligned}$$

$$\begin{aligned}
 f(0) & = 1 \\
 f'(0) & = 0 \\
 f''(0) & = -2 \\
 f'''(0) & = 0 \\
 f^{(4)}(0) & = 24 \\
 & \dots
\end{aligned}$$

so that Taylor series with $z_0 = 0$ reads

$$f(z) = 1 - z^2 + z^4 - z^6 + z^8 + \dots = \sum_{n=0}^{+\infty} (-1)^n z^{2n} \ .$$

This geometric series in $a = (-z^2)$ converges if $|a| < 1$ and thus if $| z | < 1$, cioè una circonferenza nel piano complesso di raggio $1$ centrata nell'origine.

**todo** *Controllare questo risultato: per ogni funzione olomorfa,il raggio di convergenza della serie di Taylor centrata in $z_0$ coincide con la distanza tra $z_0$ e la singolarità più vicina nel piano complesso.*

**Osservazione.** La funzione $f(z)$ ha due poli nel piano complesso per $z = \mp i$.




```



####  Controesempi di serie di Taylor che non convergono alla funzione originale

```{dropdown} Funzione "bump" (scalino morbido)
:open:

$$f(x) = \left\{ \begin{aligned} & e^{-\frac{1}{1-x^2}} &&  |x| < 1 \\ & 0 && |x| \ge 1 \end{aligned} \right.$$

Per $x \in (-1,1)$

$$\begin{aligned}
  f'(x) & = -2 x \left( 1 - x \right)^{-3} e^{-\frac{1}{1-x^2}} \\
  f''(x) & = \\
  \dots & ... \\
\end{aligned}$$

mentre per $x > 1$, tutte le derivate sono identicamente nulle. La funzione è derivabile infinitamente, poiché la derivata in $|x| = 1$ esiste (derivate sinistra uguale a derivata destra). 

La serie di Taylor centrata in $x_0 = 1$ quindi non converge alla funzione di partenza $f(x)$, ma alla funzione identicamente nulla

$$\sum_{n=0}^{+\infty} \frac{f^{n)}(1)}{n!} (x - 1)^n = 0 \ ,$$

poiché $f^{(n)}(1) = 0$ per ogni valore di $n$.


```


```{dropdown} Controesempioo di Cauchy: Funzione $C^\infty$ non analitica

**Osseervazione.** Il calcolo dei termini della serie, coinvolge un'operazione di limite $\lim_{x \rightarrow 0}$ per evitare di dividere per $0$.

Un classico esempio di funzione $C^\infty$ la cui serie di Taylor converge, ma **non alla funzione stessa**, è la funzione di Cauchy:

$$f(x) = \begin{cases} 
e^{-\frac{1}{x^2}} & \text{se } x \neq 0 \\ 
0 & \text{se } x = 0 
\end{cases}$$

* Si dimostra che $f^{(n)}(0) = 0$ per ogni $n \ge 0$.
* Di conseguenza, la sua serie di MacLaurin è identicamente nulla: $T(x) = 0$.
* La serie converge per ogni $x \in \mathbb{R}$, ma coincide con $f(x)$ **solo** nel punto $x = 0$. 


```


<!--
---



### Serie polinomiali
**todo** *fare riferimento alle serie di Taylor e MacLaurin?*

$$\begin{aligned}
   \cos x & = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} + \dots \\
   \sin x & = x - \frac{x^3}{3!} + \frac{x^5}{5!} + \dots \\
   e^x    & = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \dots \\
\end{aligned}$$

**todo** *valutare le proprietà di convergenza (e specificare gli intervalli di convergenza) di queste funzioni*
-->

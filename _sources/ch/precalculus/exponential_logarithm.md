(math-hs:exp-log)=
# Esponenziale e logaritmo

In questo capitolo si presentano le funzioni a variabile reale, $f(x): D \in \mathbb{R} \rightarrow \mathbb{R}$:
- esponenziale, $f(x) = a^x$
- logaritmo, $f(x) = \log_a x$

e successivamente le [funzioni iperboliche]()

## Funzione esponenziale e logaritmo di variabile reale

(math-hs:exp:ax:def)=
### Funzione esponenziale, $a^x$

Nell'ambito dei numeri reali, l'elevamento alla potenza reale $x \in \mathbb{R}$ di un numero reale $a \in \mathbb{R}$,

$$a^x$$

è un'operazione ben definita per ogni valore dell'esponente $x$ solo per base $a \geq 0$. Per ogni valore di $a \geq 0$ si può definire quindi la funzione esponenziale con base $a$

$$f(x) = a^x \ ,$$

che è definita per $x \in \mathbb{R}$ e ha immagine $(0, +\infty)$.

**Proprietà.**
- la [funzione è monotona](math-hs:precalculus:real-functions:types):
  - se $a > 1$, la funzione è monotona crescente
  - se $a = 1$, la funzione è costante e uguale a $1$
  - se $a < 1$, la funzione è monotona decrescente
- la [funzione è continua](infinitesimal-calculus:continuous-fun), come si vedrà nel capitolo sull'[introduzione all'analisi](infinitesimal-calculus:analysis)

Tra tutte le basi, la funzione esponenziale con base $e$ di Eulero (o di Nepero) svolte un ruolo fondamentale in matematica e nelle scienze in generale, come ci sarà l'occasione di iniziare ad apprezzare nelle parti sul:
- [calcolo](infinitesimal-calculus): [limiti](infinitesimal-calculus:limits), [derivate](infinitesimal-calculus:derivatives), [integrali](infinitesimal-calculus:integrals), [equazioni differenziali](ode-hs)
- [numeri complessi](math-hs:algebra:complex)

Vale dunque la pena introdurre la funzione esponenziale $e^x$, e discuterne alcune definizioni equivalenti e proprietà fondamentali che permettono di comprendere l'origine della centralità di questa funzione in (quasi) tutti gli ambiti della matematica e delle scienze.

(math-hs:exp:def:ex)=
### Funzione esponenziale, $e^x$

**Definizione.** Per ogni $x \in \mathbb{R}$, è possibile dare due definizioni equivalenti della $e^x$, che può essere intesa come l'elevamento a potenza della [$e$ di Eulero](math-hs:series:e-euler) con la variabile indipendente $x$ come esponente.
- definizione come limite della successione di funzioni $\left( 1 + \frac{x}{n} \right)^n$

$$
  e^x := \lim_{n \rightarrow \infty} \left( 1 + \frac{x}{n}\right)^n
$$

- definizione come limite della serie di funzioni con elementi $\frac{x^n}{n!}$,

$$
  e^x := \lim_{n \rightarrow \infty} \sum_{k=0}^{n} \frac{x^n}{n!} \\
$$

Si può dimostrare che 
- la [serie è convergente](math-hs:exp-log:proof:convergence) per ogni $x \in \mathbb{R}$ finito 
- le due [definizioni sono equivalenti](math-hs:exp-log:proof:equivalence)
- le definizioni della funzione $e^x$ giustificano la notazione $e^x$ questa funznione poiché soddisfa le [proprietà delle potenze (*con stessa base, $e$*)](math-hs:exp-log:proof:powers):
  
  $$\begin{aligned}
    e^0 & = 1 \\
    e^1 & = e \\
  e^{x+y} & = e^x \, e^y \ .
  \end{aligned}$$

- la derivata della funzione $e^x$ è $e^x$, ed è una delle [derivate fondamentali](infinitesimal-calculus:derivatives:fund) del [calcolo differenziale](infinitesimal-calculus:derivatives),

  $$\frac{d}{dx} e^x = e^x \ .$$

<!--
- la base della potenza, $e$, viene definita $e$ **di Nepero**, ed è un numero reale irrazionale, il cui valore approssimato è $e \approx 2.718281828\text{"e poi la magia finisce"}$: nonostante le prime cifre decimali facciano pensare che possa essere periodico, se si scrivono le cifre successive, l'approssimazione diventa $e \approx 2.71828182845904523\dots$
-->

(math-hs:exp:def:ln)=
### Funzione logaritmo naturale, $\text{ln} \, x$

**Definizione.** Poiché la funzione $e^x$ è monotona crescente, $e^x: \mathbb{R} \rightarrow (0, +\infty)$, esiste la sua [funzione inversa](math-hs:precalculus:real-functions:inverse) con dominio $(0,+\infty)$ e immagine $\mathbb{R}$. La funzione inversa della funzione esponenziale con base $e$ viene definita **logaritmo naturale**.

(math-hs:exp:def:hyp)=
### Funzioni iperboliche
Vengono definite le funzioni iperboliche

$$\begin{aligned}
  \cosh x & := \frac{e^x + e^{-x}}{2} \\
  \cosh y & := \frac{e^x - e^{-x}}{2}
\end{aligned}$$

<!--
## Funzione esponenziale e logaritmo di variabile complessa
**todo** *Fare riferimento ad algebra complessa. La funzione $e^{z}$ è necessaria a introdurre la rappresentazione polare dei numeri complessi.*
-->

(math-hs:exp-log)=
# Esponenziale e logaritmo

In questo capitolo si presentano le funzioni a variabile reale, $f(x): D \in \mathbb{R} \rightarrow \mathbb{R}$:
- esponenziale, $f(x) = a^x$
- logaritmo, $f(x) = \log_a x$

e successivamente le [funzioni iperboliche](math-hs:exp:def:hyp).

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

Tra tutte le basi, la funzione esponenziale con base $e$ di Eulero (o di Nepero) svolge un ruolo fondamentale in matematica e nelle scienze in generale, sia nell'ambito dei numeri reali sia nell'ambito dei numeri complessi, come ci sarà l'occasione di iniziare ad apprezzare nelle parti sul:
- [calcolo](math-hs:calculus): [limiti](infinitesimal-calculus:limits), [derivate](infinitesimal-calculus:derivatives), [integrali](infinitesimal-calculus:integrals), [equazioni differenziali](ode-hs)
- [numeri complessi](math-hs:algebra:complex)

Vale dunque la pena introdurre la funzione esponenziale $e^x$, e discuterne alcune definizioni equivalenti e proprietà fondamentali che permettono di comprendere l'origine della centralità di questa funzione in (quasi) tutti gli ambiti della matematica e delle scienze.

In questo capitolo ci si concentra sulla funzione esponenziale sul campo dei numeri reali, mentre si rimanda al capitolo sui [numeri complessi](math-hs:algebra:complex) per la definizione dell'esponenziale complesso, e al capitolo sulle [equazioni differenziali ordinarie](ode-hs) per le prime applicazioni fondamentali dell'esponenziale, con esponenti reali o complessi.

(math-hs:exp:def)=
### Funzione esponenziale, $e^x$

**Definizione.** Per ogni $x \in \mathbb{R}$, è possibile dare diverse definizioni equivalenti della funzione esponenziale $f(x) = e^x$, che può:

1. essere intesa come l'elevamento a potenza della [$e$ di Eulero](math-hs:series:e-euler) con la variabile indipendente $x$ come esponente. Questa definizione "agnostica" considera $e$ un numero con un determinato valore, approssimato $2.718281828\text{e poi la magia finisce}$, tale da soddisfare le proprietà che si incontreranno nel percorso; queste proprietà sono diretta conseguenza e possono essere dimostrate grazie alle altre due definizioni equivalenti:

2. essere definita come limite della successione di funzioni $\left( 1 + \frac{x}{n} \right)^n$

$$
  e^x := \lim_{n \rightarrow \infty} \left( 1 + \frac{x}{n}\right)^n
$$

3. essere definita come limite della serie di funzioni con elementi $\frac{x^n}{n!}$,

$$
  e^x := \lim_{n \rightarrow \infty} \sum_{k=0}^{n} \frac{x^n}{n!} \\
$$

Si può dimostrare che (seguire i link per le dimostrazioni in appendice): 
- la [serie è convergente](math-hs:exp-log:notes:convergence) per ogni $x \in \mathbb{R}$ finito 
- le due [definizioni sono equivalenti](math-hs:exp-log:notes:equivalence)
- le definizioni della funzione $e^x$ giustificano la notazione $e^x$ questa funznione poiché soddisfa le [proprietà delle potenze (*con stessa base, $e$*)](math-hs:exp-log:notes:powers):
  
  $$\begin{aligned}
    e^0 & = 1 \\
    e^1 & = e \\
    e^{x+y} & = e^x \, e^y \ .
  \end{aligned}$$

  Una conseguenza indiretta è l'equivalenza della definizione "agnostica" 1. e delle altre due.

Tra le conseguenze principali di questa definizione
- la derivata della funzione $e^x$ è $e^x$, ed è una delle [derivate fondamentali](infinitesimal-calculus:derivatives:fund) del [calcolo differenziale](infinitesimal-calculus:derivatives),

  $$\frac{d}{dx} e^x = e^x \ .$$

- l'integrale della funzione $e^x$ è la stessa funzione

  $$\int e^x \, dx = e^x + C \ ,$$

  all'origine della battuta che non fa ridere **(!)** che spiega la tristezza della funzione $e^x$ alla festa delle funzioni, con il fatto che la funzione $e^x$ non si integra.

<!--
- la base della potenza, $e$, viene definita $e$ **di Nepero**, ed è un numero reale irrazionale, il cui valore approssimato è $e \approx 2.718281828\text{"e poi la magia finisce"}$: nonostante le prime cifre decimali facciano pensare che possa essere periodico, se si scrivono le cifre successive, l'approssimazione diventa $e \approx 2.71828182845904523\dots$
-->

(math-hs:exp:def:ln)=
### Funzione logaritmo naturale, $\text{ln} \, x$

**Definizione.** Poiché la base $e > 1$, la funzione $e^x$ è monotona crescente, $e^x: \mathbb{R} \rightarrow (0, +\infty)$, e quindi esiste la sua [funzione inversa](math-hs:precalculus:real-functions:inverse) con dominio $(0,+\infty)$ e immagine $\mathbb{R}$. La funzione inversa della funzione esponenziale con base $e$ viene definita **logaritmo naturale**, $\ln x$. Cioè

$$x = e^y \qquad \leftrightarrow \qquad y = \ln x$$

o altrimenti, la definizione di logaritmo $\ln ( e^x ) = x$, può essere reinterpretata come, $f^{-1} \circ f(x) = x $, con

$$f(x) = e^x \qquad \rightarrow \qquad f^{-1}(x) = \ln x \ .$$


(math-hs:exp:def:hyp)=
### Funzioni iperboliche
Vengono definite le funzioni iperboliche

$$\begin{aligned}
  \cosh x & := \frac{e^x + e^{-x}}{2} \\
  \sinh x & := \frac{e^x - e^{-x}}{2} \ 
\end{aligned}$$ (eq:hyperbolic:def)

**Proprietà.** 
Simmetria:

$$\cosh(-x) = \cosh(x) \qquad , \qquad \sinh(-x) = - \sinh(x) \ .$$ (eq:hyperbolic:symmetry)

Le funzioni iperboliche hanno regole analoghe - ma non identiche - alle funzioni trigonometriche, [dimostrabili](math-hs:exp-log:notes:hyp) grazie alle proprietà delle potenze

**Relazione fondamentale.**

$$\cosh^2 x - \sinh^2 x = 1$$ (eq:hyperbolic-fundamental)

```{dropdown} Dimostrazione

Valutando la differenza tra i quadrati della definizione {eq}`eq:hyperbolic:def` delle funzioni iperboliche,

$$\begin{aligned}
 \cosh^2 x & = \left(\frac{e^x + e^{-x}}{2}\right)^2 = \frac{1}{4} \left( e^{2x} + 2 + e^{-2x} \right) \\
 \sinh^2 x & = \left(\frac{e^x + e^{-x}}{2}\right)^2 = \frac{1}{4} \left( e^{2x} - 2 + e^{-2x} \right) \\
\end{aligned}$$

risulta dimostrata dimostrata la relazione fondamentale {eq}`eq:hyperbolic-fundamental`

$$\cosh^2 x - \sinh^2 x = \frac{1}{4} \left( e^{2x} + 2 + e^{-2x} \right) - \frac{1}{4} \left( e^{2x} - 2 + e^{-2x} \right) = 1 \ .$$


```

**Somma e sottrazione.**

$$\begin{aligned}
  \cosh(x \mp y) & = \cosh x \cosh y \mp \sinh x \sinh y \\
  \sinh(x \mp y) & = \sinh x \cosh y \mp \cosh x \sinh y 
\end{aligned}$$ (eq:hyperbolic:sum-diff)

```{dropdown} Dimostrazione

Viene qui dimostrata la formula $\cosh(x+y) = \cosh x \cosh y + \sinh x \sinh y$. La formula per la sottrazione segue immediatamente dalle proprietà di simmetria {eq}`eq:hyperbolic:symmetry` delle funzioni iperboliche, definendo $z = -y$. La dimostrazione delle formule del seno iperbolico di somme e differenze segue gli stessi passaggi e viene lasciata come esercizio.

Valutando i prodotti,

$$\begin{aligned}
 \cosh x \, \cosh y & = \frac{e^x + e^{-x}}{2} \frac{e^y + e^{-y}}{2} = \frac{e^{x+y} + e^{x-y} + e^{-x+y} + e^{-x-y}}{4} \\
 \sinh x \, \sinh y & = \frac{e^x - e^{-x}}{2} \frac{e^y - e^{-y}}{2} = \frac{e^{x+y} - e^{x-y} - e^{-x+y} + e^{-x-y}}{4} \\ 
\end{aligned}$$

e sommando

$$\cosh x \, \cosh y + \sinh x \sinh y = \frac{e^{x+y} + e^{-(x+y)}}{2} = \cosh(x+y) \ .$$

```

**"Werner".**
Dalle formule del coseno e del seno iperbolico di somme e differenze, si possono derivare facilmente le formule analoghe alle formule di Werner per le funzioni trigonometriche

$$\begin{aligned}
  \cosh x \, \cosh y & = \frac{1}{2} \left( \cosh(x+y) + \cosh(x-y) \right) \\
  \sinh x \, \sinh y & = \frac{1}{2} \left( \cosh(x+y) - \cosh(x-y) \right) \\
  \sinh x \, \cosh y & = \frac{1}{2} \left( \sinh(x+y) + \sinh(x-y) \right) \\
\end{aligned}$$


**"Prostaferesi".**

$$\begin{aligned}
  \cosh p + \cosh q & = 2 \cosh \left( \frac{p+q}{2} \right) \cosh \left( \frac{p-q}{2} \right) \\
  \cosh p - \cosh q & = 2 \sinh \left( \frac{p+q}{2} \right) \sinh \left( \frac{p-q}{2} \right) \\
  \sinh p + \sinh q & = 2 \sinh \left( \frac{p+q}{2} \right) \cosh \left( \frac{p-q}{2} \right) \\
\end{aligned}$$


<!--
## Funzione esponenziale e logaritmo di variabile complessa
**todo** *Fare riferimento ad algebra complessa. La funzione $e^{z}$ è necessaria a introdurre la rappresentazione polare dei numeri complessi.*
-->

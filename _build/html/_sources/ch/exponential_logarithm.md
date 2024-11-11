(math-hs:exp-log)=
# Esponenziale e logaritmo

## Definizioni e proprietà

Nel campo reale, per ogni $b > 0$,

$$a = b^c \qquad \leftrightarrow \qquad c = \log_{b} a $$

## Funzione esponenziale e logaritmo di variabile reale

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

### Funzione logaritmo naturale, $\text{ln} \, x$

**Definizione.** Poiché la funzione $e^x$ è monotona crescente, $e^x: \mathbb{R} \rightarrow (0, +\infty)$, esiste la sua [funzione inversa](math-hs:precalculus:real-functions:inverse) con dominio $(0,+\infty)$ e immagine $\mathbb{R}$. La funzione inversa della funzione esponenziale con base $e$ viene definita **logaritmo naturale**.

## Funzione esponenziale e logaritmo di variabile complessa
**todo** *Fare riferimento ad algebra complessa. La funzione $e^{z}$ è necessaria a introdurre la rappresentazione polare dei numeri complessi.*

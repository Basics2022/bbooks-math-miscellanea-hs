(math-hs:exp-log)=
# Esponenziale e logaritmo

## Definizioni e proprietà

Nel campo reale, per ogni $b > 0$,

$$a = b^c \qquad \leftrightarrow \qquad c = \log_{b} a $$

## Funzione esponenziale e logaritmo

## $e$ di Nepero, $e^x$ e logaritmo naturale

### Definizione di $e^x$

**Esponenziale reale.** Per ogni $x \in \mathbb{R}$, si definisce la funzione $e^x$ come

$$\begin{aligned}
e^x & := \lim_{n \rightarrow \infty} \left( 1 + \frac{x}{n}\right)^n  = \\
    & := \lim_{n \rightarrow \infty} \sum_{k=0}^{n} \frac{x^n}{n!} \\
\end{aligned}$$

Si può dimostrare che 
- le due definizioni sono equivalenti, e la serie è convergente per ogni $\mathbf{x} \in \mathbb{R}$ finito 
- la funzione $e^x$ giustifica questa notazione poiché soddisfa le proprietà delle potenze, come 
  
  $$e^{x+y} = e^x \, e^y \ .$$

- la base della potenza, $e$, viene definita $e$ **di Nepero**, ed è un numero reale irrazionale, il cui valore approssimato è $e \approx 2.718281828\text{"e poi la magia finisce"}$: nonostante le prime cifre decimali facciano pensare che possa essere periodico, se si scrivono le cifre successive, l'approssimazione diventa $e \approx 2.71828182845904523\dots$

**Esponenziale complesso.** Si può estendere la definizione di esponenziale anche a un numero complesso, $z \in \mathbb{C}$
**todo**


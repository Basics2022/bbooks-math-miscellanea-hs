(infinitesimal-calculus:analysis:notes)=
# Note e dimostrazioni

## Funzioni reali a variabile reale, $f: \mathbb{R} \rightarrow \mathbb{R}$

## Limiti

## Funzioni continue, $f \in C^0$

(infinitesimal-calculus:limits:thms:notes)=
## Operazioni e teoremi sui limiti

```{dropdown} $\lim_{x \rightarrow x_0} c f(x)$
$$L = \lim_{x \rightarrow x_0} f(x)$$

$$\forall \varepsilon > 0 \quad \exists U_{x_0,\delta} \quad t.c. \quad |f(x) - L| < \varepsilon \quad \forall U_{x_0,\delta} \backslash \{x_0\} $$

$$|f(x) - L| < \varepsilon \qquad \rightarrow \qquad L - \varepsilon < f(x) < L + \varepsilon$$

$$\begin{aligned}
c \ge 0: & \quad  c L - c \varepsilon \le c f(x) \le c L + c \varepsilon \\
c  <  0: & \quad  c L - c \varepsilon   > c f(x)   > c L + c \varepsilon \\
\end{aligned}$$

$$\begin{aligned}
c \ge 0: & \quad \forall \tilde{\varepsilon} =  c \varepsilon > 0 \quad & \exists U_{x_0,\delta} \quad t.c. \quad |c f(x) - c L| < \tilde{\varepsilon} \quad \forall U_{x_0,\delta} \backslash \{x_0\} \\
c <   0: & \quad \forall \tilde{\varepsilon} = -c \varepsilon > 0 \quad & \exists U_{x_0,\delta} \quad t.c. \quad |c f(x) - c L| < \tilde{\varepsilon} \quad \forall U_{x_0,\delta} \backslash \{x_0\} \\
\end{aligned}$$

$$\begin{aligned}
 \lim_{x\rightarrow x_0} c f(x) = c L
\end{aligned}$$
```

```{dropdown} $\lim_{x \rightarrow x_0} f(x) \pm g(x)$
$$\begin{aligned}
  & |f(x) - F| < \varepsilon \qquad \rightarrow \qquad F - \varepsilon_f < f(x) < F + \varepsilon_f \\
  & |g(x) - G| < \varepsilon \qquad \rightarrow \qquad G - \varepsilon_g < g(x) < G + \varepsilon_g \\
\end{aligned}$$

$$\begin{aligned}
   F + G - \varepsilon_f - \varepsilon_g < f(x) + g(x)  < F + G + \varepsilon_f + \varepsilon_g \\
\end{aligned}$$

Con il segno meno, giocare con i modulli per avere $\tilde{\varepsilon} > 0$.

```

```{dropdown} $\lim_{x \rightarrow x_0} f(x) \cdot g(x)$
$$\begin{aligned}
  & |f(x) - F| < \varepsilon_f \qquad \rightarrow \qquad F - \varepsilon_f < f(x) < F + \varepsilon_f \\
  & |g(x) - G| < \varepsilon_g \qquad \rightarrow \qquad G - \varepsilon_g < g(x) < G + \varepsilon_g \\
\end{aligned}$$

Nell'ipotesi che $f(x) \cdot g(x) > 0$ (concordi, serve teorema permanenza segno?)

$$\begin{aligned}
   |f(x) g(x) - F G|
   &   = |f(x) g(x) - f(x) G + f(x) G - F G| = \\
   &   = |f(x) ( g(x) - G ) + ( f(x) - F ) G| = \\
   & \le |f(x)|| g(x) - G | + | f(x) - F || G| = \\
   & \le (|F|+\varepsilon_f)\varepsilon_g + \varepsilon_f|G| = \\
   & = \underbrace{|F|\varepsilon_g + |G|\varepsilon_f + \varepsilon_f \varepsilon_g}_{\tilde{\varepsilon}} \\
\end{aligned}$$

avendo usato $|g(x)-G| < \varepsilon$, e la disuguaglianza triangolare

$$|f(x)| = |f(x) - F + F| \le |f(x) - F| + |F| \le \varepsilon_f + |F| $$


```

```{dropdown} $|g(x)| > \frac{|\lim_{x\rightarrow x_0} g(x)|}{2} = \frac{|G|}{2} \ $ for $\  x \in U_{x_0, \delta}$

Si vuole dimostrare che esiste un intorno per il quale $|g| > \frac{|G|}{2}$

$$|g - G| < \varepsilon$$

Se esiste il limite $G$, allora per $\forall \varepsilon > 0 \quad \exists \delta > 0 \quad |g(x) - G|<\varepsilon \dots$. Tra tutti i valori di $\varepsilon$, si sceglie $\frac{|G|}{2} > 0$

$$-\frac{|G|}{2} < g - G < \frac{|G|}{2} $$

Si distinguono i due casi:
- $0 \le G = |G|$ implica $\frac{|G|}{2} < g < \frac{3}{2}|G|$; prendendo il modulo di quantità positive $\frac{|G|}{2} < |g| < \frac{3}{2}|G|$

- $0 > G = - |G|$ implica $-\frac{3}{2}|G| < g < -\frac{1}{2}|G| $; prendendo il modulo di quantità positive $\frac{|G|}{2} < |g| < \frac{3}{2}|G|$

Si è quindi dimostrato che se esiste il limite $G$, scegliendo $\varepsilon = \frac{|G|}{2}$, allora esiste un intorno di $x_0$ nel quale il valore assoluto della funzione è limitato,

$$\frac{|G|}{2} < |g(x)| < \frac{3}{2}|G| \ ,$$

per tutti i valori di $x \in U_{x_0, \delta}$.


```

```{dropdown} $\lim_{x \rightarrow x_0} f(x) / g(x)$
$$\begin{aligned}
  & |f(x) - F| < \varepsilon_f \qquad \rightarrow \qquad F - \varepsilon_f < f(x) < F + \varepsilon_f \\
  & |g(x) - G| < \varepsilon_g \qquad \rightarrow \qquad G - \varepsilon_g < g(x) < G + \varepsilon_g \\
\end{aligned}$$

Nell'ipotesi che $f(x) \cdot g(x) > 0$ (concordi, serve teorema permanenza segno?)

$$\begin{aligned}
   |f(x) / g(x) - F / G|
   &   =   \left| \frac{f}{g} - \frac{F}{g} + \frac{F}{g} - \frac{F}{G} \right| = \\
   &   =   \left| \frac{f}{g} - \frac{F}{g} + \frac{F}{G}\frac{g}{G} - \frac{F}{G} \right| = \\
   &   =   \left| \frac{f}{g} - \frac{F}{g} + \frac{F}{G} \left( \frac{g}{G} - 1 \right) \right| = \\
   & \le   \left| \frac{1}{g} \right| |f - F| + \left|\frac{1}{G}\right|\left|\frac{F}{G}\right|\left| g - G \right| = \\
   & \le   \left| \frac{1}{g} \right| \varepsilon_f + \left|\frac{1}{G}\right|\left|\frac{F}{G}\right| \varepsilon_g = \\
   & \le \underbrace{2 \left| \frac{1}{G} \right| \varepsilon_f + \left|\frac{1}{G}\right|\left|\frac{F}{G}\right| \varepsilon_g}_{\tilde{\varepsilon}} 
   & 
\end{aligned}$$

```

## Contronto di infiniti e infinitesimi

(infinitesimal-calculus:limits:fund:notes)=
## Limiti fondamentali
Vengono qui dimostrati i [limiti fondamentali](infinitesimal-calculus:limits:fund:).

```{dropdown} Dimostrazione di $\ \lim_{x \rightarrow 0} \frac{\sin x}{x} = 1 $
Usando il [teorema del confronto](infinitesimal-calculus:limits:thms:comparison) per le funzioni $\sin x \le x \le \tan x$ (**todo** *dimostrare con l'area delle figure geometriche $\frac{1}{2}\sin x \le \frac{1}{2} \, x \le \frac{1}{2} \tan x$), si può scrivere per $x \ne 0$

$$1 \le \frac{x}{\sin x} \le \frac{\tan x}{\sin x} = \frac{1}{\cos x} .$$

Il limite per $x \rightarrow 0$ delle due funzioni estreme vale $1$, quindi 

$$\lim_{x \rightarrow 0} \frac{x}{\sin x} = 1 \ .$$

```
```{dropdown} Dimostrazione di $\ \lim_{x \rightarrow 0} \frac{1 - \cos x}{x^2} = \frac{1}{2} $
Usando la formula $\cos 2 \alpha = \cos^2 \alpha - \sin^2 \alpha = 2 \cos^2 \alpha - 1 = 1 - 2 \sin^2 \alpha$, si può scrivere $1 - \cos x = 2 \sin^2 \frac{x}{2}$. Si può quindi riscrivere il limite cercato come

$$\lim_{x \rightarrow 0} \frac{1 - \cos x}{x^2} = \lim_{x \rightarrow 0} \frac{ 2 \sin^2 \frac{x}{2} }{x^2} = \lim_{x \rightarrow 0} \frac{1}{2} \frac{\sin^2 \frac{x}{2}}{\left( \frac{x}{2} \right)^2} = \frac{1}{2} \underbrace{\lim_{x \rightarrow 0} \left( \frac{\sin \frac{x}{2}}{\frac{x}{2}} \right)^2}_{=1} = \frac{1}{2} \ .$$

```

```{dropdown} Dimostrazione di $\ \lim_{x \rightarrow 0} \frac{e^x - 1}{x}= 1 $

Usando le notazioni di "o piccolo" e "o grande" per [il confronto tra infinitesimi](infinitesimal-calculus:limits:infinite-simal), si dimostra il limite desiderato,

$$\lim_{x \rightarrow 0} \frac{e^x - 1}{x} = \lim_{x \rightarrow 0} \frac{\sum_{k=0}^{+\infty} \frac{x^k}{k!} - 1}{x} = \lim_{x \rightarrow 0} \frac{1 + x + o(x) - 1}{x} = \lim_{x \rightarrow 0} \left( 1 + O(x) \right) = 1 \ .$$

```

```{dropdown} Dimostrazione di $\ \lim_{x \rightarrow 0} \frac{e^x}{1 + x} = 1 $

Usando le notazioni di "o piccolo" e "o grande" per [il confronto tra infinitesimi](infinitesimal-calculus:limits:infinite-simal), si dimostra il limite desiderato,

$$\lim_{x \rightarrow 0} \frac{e^x}{1 + x} = \lim_{x \rightarrow 0} \frac{\sum_{k=0}^{+\infty} \frac{x^k}{k!}}{1+x} = \lim_{x \rightarrow 0} \frac{1 + x + o(x)}{1+x} = \lim_{x \rightarrow 0} \left( 1 + \frac{o(x)}{1+x} \right) = 1 \ .$$

```

```{dropdown} Dimostrazione di $\ \lim_{x \rightarrow 0} \frac{\ln (1+x)}{x} = 1$
**Dimostrazione 1.** Usando i risultati sui limiti che coinvolgono l'esponenziale, e definendo una nuova variabile $y = e^x - 1$, così da avere $x = \ln (y+1)$, con $y \rightarrow 0$ quando $x \rightarrow 0$, segue la dimostrazione,

  $$\lim_{y \rightarrow 0} \frac{\ln(1+y)}{y} = \lim_{x \rightarrow 0} \frac{x}{e^x-1} = 1 \ .$$

**Dimostrazione 2.** Usando il [teorema del confronto](infinitesimal-calculus:limits:thms:comparison) con la relazione (**todo** *dimostrare!*)

  $$\frac{x-1}{x} \le \ln x \le x - 1 \ ,$$

  che può essere riscritta, usando il cambio di variabile $x \rightarrow x+1$ e dividendo per $x$ (ipotizzata positiva; se negativa cambia il verso delle disuguaglianze, ma non il risultato) tutti e 3 i termini, come

  $$\frac{1}{x+1} \le \frac{\ln (x + 1)}{x} \le 1 \ .$$

  Per $x \rightarrow 0$ le due funzioni estremanti tendono a $1$ e di conseguenza $\lim_{x \rightarrow 0} \frac{\ln (x+1)}{x} = 1$.

```

```{dropdown} Dimostrazione di $\ \lim_{x \rightarrow 0} \frac{(1+x)^a - 1}{x} = a $
Usando i risultati che coinvolgono l'esponenziale, dopo aver riscritto $(1+x)^a = e^{a \ln(1+x)}$,

  $$ \lim_{x \rightarrow 0} \frac{(1+x)^a - 1}{x} = \lim_{x \rightarrow 0} \frac{e^{a \ln(1+x)} - 1}{a \ln (1+x)} \frac{a \ln(1+x)}{x} = a \, \underbrace{\lim_{y \rightarrow 0} \frac{e^y - 1}{y}}_{=1} \ \underbrace{\lim_{x \rightarrow 0} \frac{\ln(1+x)}{x}}_{=1} = a \ , $$

  avendo definito la variabile $y = a \ln (1+x)$, che tende a zero quando $x \rightarrow 0$. **todo** *prestare attenzione alle operazioni fatte, e fare riferimento alle operazioni con i limiti, e successivamente all'uso di infinitesimi e asintotici nel calcolo dei limiti.*

```

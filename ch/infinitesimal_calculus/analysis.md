(infinitesimal-calculus:analysis)=
# Introduzione all'analisi

In questa sezione viene richiamato il concetto di funzione introdotto nella sezione [Precalcolo](math-hs:precalculus). Viene introdotto il concetto di [limite](infinitesimal-calculus:limits) e definito in termini topologici (intervalli, punti di accumulazione, insiemi aperti e chiusi,...). Il concetto di limite viene utilizzato per dare una definizione di [funzione continua](). Vengono poi presentati alcuni teoremi e proprietà di limiti e funzioni continue.

<!-- Real functions: f: R -> R -->
(infinitesimal-calculus:analysis:real-functions)=
## Funzioni reali a variabile reale, $f: \mathbb{R} \rightarrow \mathbb{R}$

(infinitesimal-calculus:analysis:real-functions:def)=
### Definizione

(infinitesimal-calculus:analysis:real-functions:graph)=
### Rappresentazione grafica


<!-- Limits and continuous functions -->
(infinitesimal-calculus:limits)=
## Limiti

### Cenni di topologia per il calcolo
**todo** *Punto di accumulazione e punto isolato, intorno, insiemi aperti e chiusi, limsup/liminf, max/min,... E' necessario? Il minimo indispensabile*

(infinitesimal-calculus:limits:def)=
### Definizione di limite
<!-- **Limite destro e sinistro**<br> -->

**Limite finito al finito**

$$\forall \varepsilon > 0 \quad \exists U_{x_0,\delta} \quad {t.c.} \quad |f(x) - L| < \varepsilon \quad \forall x \in U_{x_0, \delta} \backslash \{x_0\}$$

dove la condizione sull'intorno di un punto $x_0$ al finito per funzioni reali può essere riscritta come $0 < | x - x_0 | <  \delta$ per un intorno simmetrico del punto $x_0$.

**Limite infinito al finito**

$$\forall M > 0 \quad \exists U_{x_0,\delta} \quad {t.c.} \quad |f(x)| > M \quad \forall x \in U_{x_0, \delta} \backslash \{x_0\}$$

dove la condizione sull'intorno di un punto $x_0$ al finito per funzioni reali può essere riscritta come $0 < | x - x_0 | <  \delta$ per un intorno simmetrico del punto $x_0$. Se $f(x) > M$ allora il limite tende a $+\infty$, se $f(x) < -M$ allora il limite tende a $-\infty$.

**Limite finito all'infinito**

$$\forall \varepsilon > 0 \quad \exists U_{\mp\infty,R} \quad {t.c.} \quad |f(x) - L| < \varepsilon \quad \forall x \in U_{\mp\infty, R}$$

dove la condizione sull'intorno di un punto all'infinito per funzioni reali può essere riscritta come $x < R$ per un intorno di $-\infty$ o $x > R$ per un intorno di $+\infty$.

**Limite infinito all'infinito**

$$\forall M > 0 \quad \exists U_{\mp \infty, R} \quad {t.c.} \quad |f(x)| > M \quad \forall x \in U_{\mp \infty, R}$$

dove la condizione sull'intorno di un punto all'infinito per funzioni reali può essere riscritta come $x < R$ per un intorno di $-\infty$ o $x > R$ per un intorno di $+\infty$. Se $f(x) > M$ allora il limite tende a $+\infty$, se $f(x) < -M$ allora il limite tende a $-\infty$.
 
(infinitesimal-calculus:continuous-fun)=
## Funzioni continue
(infinitesimal-calculus:continuous-fun:def)=
### Definizione
Una funzione reale $f: D \in \mathbb{R} \rightarrow \mathbb{R}$ è continua in un punto $x_0 \in D$ se la funzione è definita nel punto, se esiste il limite della fuzione e coincide con il valore della funzione

$$\lim_{x \rightarrow x_0} f(x) = f(x_0) \ .$$

Una funzione reale è continua in un dominio **todo o insieme?** se è continua in ogni punto del dominio.

(infinitesimal-calculus:continuous-fun:thms)=
### Teoremi

(infinitesimal-calculus:continuous-fun:thms:weierstrass)=
#### Teorema di Weierstrass
Data una funzione reale continua $f: [a,b] \rightarrow \mathbb{R}$ definita sull'intervallo chiuso $[a,b]$, la funzione $f(x)$ ammette un punto di massimo assoluto e un punto di minimo assoluto nell'intevallo $[a,b]$.

**todo** *Dimostrazione? Discussione più intuitiva? Figura?*

(infinitesimal-calculus:continuous-fun:thms:sign)=
#### Teorema della permanenza del segno
Data una funzione continua $f: D \rightarrow \mathbb{R}$ continua, e un punto $x_0 \in D$. Se $f(x_0) > 0$ allora $\exists U_{x_0}$ t.c. $f(x) > 0$ per $\forall x \in U_{x_0} \cap D$.

**todo** *Dimostrazione? Discussione più intuitiva? Figura?*

(infinitesimal-calculus:continuous-fun:thms:intermediate)=
#### Teorema dei valori intermedi
Data una funzione $f: [a,b] \rightarrow \mathbb{R}$ continua, allora $f(x)$ assume tutti i valori compresi tra $f(a)$ e $f(b)$, cioè (assumendo $f(a) < f(b)$) per $\forall y \in (f(a), f(b)) \ x_0 \in (a,b) \ \text{t.c..} \ f(x_0) = y$. 

**todo** *Dimostrazione? Discussione più intuitiva? Figura?*

(infinitesimal-calculus:limits:thms)=
## Teoremi sui limiti

(infinitesimal-calculus:limits:thms:operations)=
### Operazioni coi limiti
Dato un numero reale $c \in \mathbb{R}$ e i limiti $\lim_{x \rightarrow x_0} f(x) = L_1$, $\lim_{x \rightarrow x_0} g(x) = L_2$

$$\begin{aligned}
 & \lim_{x \rightarrow x_0} \big( c \cdot f(x) \big) = c \, L_1 \\
 & \lim_{x \rightarrow x_0} \big( f(x) \mp g(x) \big) = L_1 \mp L_2 \\
 & \lim_{x \rightarrow x_0} \big( f(x) \cdot g(x) \big) = L_1 \cdot L_2 \\
 & \lim_{x \rightarrow x_0} \frac{ f(x) }{ g(x) } = \frac{L_1}{L_2} \quad , \quad \text{se $L_2 \ne 0$}  \\
\end{aligned}$$

(infinitesimal-calculus:limits:thms:infinite-simal)=
#### Limiti infiniti e infinitesimi
$$\begin{aligned}
 &  \lim_{x \rightarrow x_0}f(x) \rightarrow \mp \infty \ , c > 0 \quad : \qquad \lim_{x \rightarrow x_0} c \cdot f(x) = \mp \infty \\
 & \dots \\
\end{aligned}$$

(infinitesimal-calculus:limits:thms:infinite-simal:undetermined)=
#### Forme indeterminate
$$+\infty-\infty \quad , \quad 0 \cdot \mp \infty \quad , \quad \frac{\mp \infty}{\mp \infty} \quad , \quad \frac{0}{0} \quad , \quad 1^{\infty} \quad , \quad 0^0 \quad , \quad \infty^0$$

**oss.** Invece non sono forme indeterminate $0^{+\infty} \rightarrow 0$ e $0^{-\infty} \rightarrow \infty$.

(infinitesimal-calculus:limits:thms:comparison)=
### Teorema del confronto

Siano $f$, $g$, $h: \ X \in \mathbb{R} \rightarrow \mathbb{R}$, e dato un punto di accumulazione $x_0$ per $X$. Se

$$\lim_{x \rightarrow x_0} f(x) = \lim_{x \rightarrow x_0} h(x) = \ell \ ,$$

ed esiste un intorno $U$ di $x_0$ tale che

$$f(x) \le g(x) \le h(x) \quad \forall x \in U \cap X \ \{ x_0 \} \ ,$$

allora

$$\lim_{x \rightarrow x_0} g(x) = \ell \ .$$

**todo** *Dimostrazione? Discussione più intuitiva? Figura?*

(infinitesimal-calculus:limits:thms:hopital)=
### Teorema di de l'Hopital
Il teorema di de l'Hopital (o di Bernoulli, **todo** *dire due parole sulla storia? Bernoulli precettore di de l'Hopital, ricava il risultato...*) è un teorema utile per il calcolo dei limiti delle forme indeterminate $\frac{0}{0}$ e $\frac{\infty}{\infty}$. Poiché il teorema coinvolge il concetto di derivata, si rimanda alla sezione del [teorema di de l'Hopital](infinitesimal-calculus:derivatives:thm:hopital) nel capitolo sulle [derivate](infinitesimal-calculus:derivatives).

(infinitesimal-calculus:limits:fund)=
## Limiti fondamentali
In questa sezione vengono calcolati alcuni limiti fondamentali. Questi limiti possono essere considerati fondamentali come sinonimo di *"minimo da ricordare"* per poter calcolare limiti più generali utilizzando le [operazioni](infinitesimal-calculus:limits:thms:operations) e i [teoremi](infinitesimal-calculus:limits:thms) sui limiti, e calcolare le [derivate fondamentali](infinitesimal-calculus:derivatives:fund). Un elenco minimo di limiti fondamentali è:

$$ \lim_{x \rightarrow 0} \frac{(1+x)^a - 1}{x} = a $$

$$ \lim_{x \rightarrow 0} \frac{\sin x}{x} = 1 $$

$$ \lim_{x \rightarrow 0} \frac{1 - \cos^2 x}{x^2} = \frac{1}{2} $$

$$ \lim_{x \rightarrow +\infty} \left( 1 + \frac{1}{x} \right)^x = e $$

$$ \lim_{x \rightarrow 0} \frac{e^x - 1}{x}= 1 $$

$$ \lim_{x \rightarrow 0} \frac{e^x}{1+x}= 1 $$

$$ \lim_{x \rightarrow 0} \frac{\ln (1+x)}{x} = 1 $$

Una volta compresa l'operazione di derivazione e di sviluppo in serie, si può rivisitare i limiti notevoli **todo**

Limiti di successioni. **Formula di Sterling**

$$n! \sim \left(\frac{n}{e} \right)^n \qquad \text{per $n \in \mathbb{N} \rightarrow +\infty$}$$

o

$$\ln n! \sim n \ln n - n  \qquad \text{per $n \in \mathbb{N} \rightarrow +\infty$}$$

## Infiniti e infinitesimi


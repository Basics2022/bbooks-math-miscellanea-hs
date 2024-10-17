(infinitesimal-calculus:limits)=
# Limiti

## Cenni di topologia per il calcolo
**TODO** *Punto di accumulazione e punto isolato, intorno, insiemi aperti e chiusi, limsup/liminf, max/min,...*

## Definizione di limite
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
 
## Funzioni continue
### Definizione
Una funzione reale $f: D \in \mathbb{R} \rightarrow \mathbb{R}$ è continua in un punto $x_0 \in D$ se la funzione è definita nel punto, se esiste il limite della fuzione e coincide con il valore della funzione

$$\lim_{x \rightarrow x_0} f(x) = f(x_0) \ .$$

Una funzione reale è continua in un dominio **TODO** **o insieme?** se è continua in ogni punto del dominio.

### Teoremi
#### Teorema di Weierstrass
**Enunciato.** Data una funzione reale continua $f: [a,b] \rightarrow \mathbb{R}$ definita sull'intervallo chiuso $[a,b]$. Allora la funzione $f(x)$ ammette un punto di massimo assoluto e un punto di minimo assoluto nell'intevallo $[a,b]$.

#### Teorema della permanenza del segno
**Enunciato.** $f: D \rightarrow \mathbb{R}$ continua, se $f(x_0) > 0$ allora $\exists U_{x_0}$ t.c. $f(x) > 0$ per $\forall x \in U_{x_0} \cap D$.

**TODO** *Per ora, enunciato "qualitativo"*

#### Teorema dei valori intermedi
**Enunciato.** $f: [a,b] \rightarrow \mathbb{R}$ continua, allora $f(x)$ assume tutti i valori compresi tra $f(a)$ e $f(b)$, cioè (assumendo $f(a) < f(b)$) per $\forall y \in (f(a), f(b)) \ x_0 \in (a,b) \ \text{t.c..} \ f(x_0) = y$. 

**TODO** *Per ora, enunciato "qualitativo"*

## Teoremi sui limiti

### Operazioni coi limiti
Dato un numero reale $c \in \mathbb{R}$ e i limiti $\lim_{x \rightarrow x_0} f(x) = L_1$, $\lim_{x \rightarrow x_0} g(x) = L_2$

$$\begin{aligned}
 & \lim_{x \rightarrow x_0} \big( c \cdot f(x) \big) = c \, L_1 \\
 & \lim_{x \rightarrow x_0} \big( f(x) \mp g(x) \big) = L_1 + L_2 \\
 & \lim_{x \rightarrow x_0} \big( f(x) \cdot g(x) \big) = L_1 \cdot L_2 \\
 & \lim_{x \rightarrow x_0} \frac{ f(x) }{ g(x) } = \frac{L_1}{L_2} \quad , \quad \text{se $L_2 \ne 0$}  \\
\end{aligned}$$

#### Limiti infiniti e infinitesimi
$$\begin{aligned}
 &  \lim_{x \rightarrow x_0}f(x) \rightarrow \mp \infty \ , c > 0 \quad : \qquad \lim_{x \rightarrow x_0} c \cdot f(x) = \mp \infty \\
 & \dots \\
\end{aligned}$$

#### Forme indeterminate
$$+\infty-\infty \quad , \quad 0 \cdot \mp \infty \quad , \quad \frac{\mp \infty}{\mp \infty} \quad , \quad \frac{0}{0}$$

### Teorema del confronto

### Teorema di de l'Hopital
**TODO.** Si rimanda alla sezione del [teorema di de l'Hopital](infinitesimal-calculus:derivatives:thm:hopital) nel capitolo sulle [derivate](infinitesimal-calculus:derivatives).

(infinitesimal-calculus:limits:fund)=
## Limiti fondamentali
Limiti di funzioni continue

$$ \lim_{x \rightarrow 0} \frac{(1+x)^a - 1}{x} = a $$

$$ \lim_{x \rightarrow 0} \frac{\sin x}{x} = 1 $$

$$ \lim_{x \rightarrow 0} \frac{1 - \cos^2 x}{x^2} = \frac{1}{2} $$

$$ \lim_{x \rightarrow +\infty} \Big( 1 + \frac{1}{x} \Big)^x = e $$

$$ \lim_{x \rightarrow 0} \frac{e^x - 1}{x}= 1 $$

$$ \lim_{x \rightarrow 0} \frac{e^x}{1+x}= 1 $$

$$ \lim_{x \rightarrow 0} \frac{\ln (1+x)}{x} = 1 $$

Una volta compresa l'operazione di derivazione e di sviluppo in serie, si può rivisitare i limiti notevoli **todo**

Limiti di successioni. **Formula di Sterling**

$$n! \sim \left(\frac{n}{e} \right)^n \qquad \text{per $n \in \mathbb{N} \rightarrow +\infty$}$$

o

$$\ln n! \sim n \ln n - n  \qquad \text{per $n \in \mathbb{N} \rightarrow +\infty$}$$

## Infiniti e infinitesimi

(infinitesimal-calculus:analysis)=
# Introduzione all'analisi

In questa sezione viene richiamato il concetto di funzione introdotto nella sezione [precalcolo](math-hs:precalculus). Viene introdotto il concetto di [limite](infinitesimal-calculus:limits) e definito in termini topologici (intervalli, punti di accumulazione, insiemi aperti e chiusi,...). Il concetto di limite viene utilizzato per dare una definizione di [funzione continua](infinitesimal-calculus:continuous-fun). Vengono poi presentati alcuni teoremi e proprietà di limiti e funzioni continue.

<!-- Real functions: f: R -> R -->
(infinitesimal-calculus:analysis:real-functions)=
## Funzioni reali a variabile reale, $f: \mathbb{R} \rightarrow \mathbb{R}$
Per un'introduzione alle funzioni reali fa variabili reali si rimanda al [capitolo dedicato](math-hs:precalculus:real-functions) nella sezione [precalcolo](math-hs:precalculus).


<!-- Limits and continuous functions -->
(infinitesimal-calculus:limits)=
## Limiti

### Cenni di topologia per il calcolo
**todo** *Punto di accumulazione e punto isolato, intorno, insiemi aperti e chiusi, limsup/liminf, max/min,... E' necessario? Il minimo indispensabile*

#### Intervalli

```{prf:definition}
:label: interval-def

Un intervallo $I$ è un sottoinsieme dei numeri reali $\mathbb{R}$ "senza buchi", cioè se due numeri $x$, $y > x$ appartengono a $I$, allora tutti i numeri reali $u$ compresi tra $x$, $y$ appartengno a $I$.
```

```{prf:example} Intervalli e sottoinsiemi che non sono intervalli
:class: dropdown
:label: interval-example

Così ad esempio, l'insieme dei numeri reali compresi tra 2 e 3,

$$I = \{ x | 2 \le x \le 3 \} \ ,$$

è un sottoinsieme e intervallo di $\mathbb{R}$. L'unione degli insiemi di numeri reali compresi tra 0 e 1, e tra 2 e 3,

$$S = \{ x | 0 \le x \le 1 \lor 2 \le x \le 3 \} \ ,$$

è un sottoinsieme di $\mathbb{R}$ ma non è un intervallo, poiché non è soddisfatta la definizione: ad esempio, il numero $1.3$ è compreso tra due numeri appartenenti all'insieme $S$, ad esempio $0.1$ e $2.\overline{7}$ ma non appartiene a $S$.

```

```{prf:definition} Intervallo limitato
:label: interval-limited

Un intervallo è **limitato superiormente** se esiste un numero $M \in \mathbb{R}$ tale che tutti gli elementi dell'intervallo sono minori di $M$; un intervallo è **limitato inferiormente** se esiste un numero $N \in \mathbb{R}$, tale che tutti gli elementi dell'intarvallo sono maggiori di $N$.

In caso contrario, gli intervalli vengono definiti **illimitati**
```



```{prf:definition} Intervalli aperti e chiusi
:label: interval-open-close

Un intervallo chiuso è un intervallo che comprende gli **estremi** dell'insieme

$$I_c = \{ x \in \mathbb{R} | a \le x \le b \} =: [a,b] \ .$$

Un intervallo aperto è un intervallo che non comprende gli  estremi dell'insieme,

$$I_a = \{ x \in \mathbb{R} | a < x < b \} =: (a,b) \ .$$

```

Pensando alla rappresentazione dei numeri reali sulla retta reale, orizzontale e orientata con verso positivo verso destra, ci si può riferire all'estremo inferiore come estremo sinistro e all'estremo superiore come estremo destro dell'intervallo.

I singoli estremi di un intervallo possono essere chiusi o aperti. Ad esempio, i possibili intervalli di numeri reali sono:
- $(a,b)$ intervallo limitato aperto sia a sinistra sia a destra
- $[a,b)$ intervallo limitato chiuso a sinistra e aperto a destra
- $(a,b]$ intervallo limitato aperto a sinistra e chiuso a destra
- $[a,b]$ intervallo limitato chiuso sia a sinistra sia a destra
- $[a,+\infty)$ intervallo illimitato, chiuso a sinistra infinito a destra
- $(a,+\infty)$ intervallo illimitato, aperto a sinistra infinito a destra
- $(-\infty,b]$ intervallo illimitato, infinito a sinistra chiuso a destra
- $(-\infty,b)$ intervallo illimitato, infinito a sinistra aperto a destra
- $(-\infty,+\infty)$ intervallo illimitato, che coincide con la retta reale

**todo** *Argomenti "non strettamente necessari", da aggiungere come approfondimenti in appendice? 
- *discutere estremi, maggiorante/minorante*
- *insiemi non limitati sono aperti o chiusi?*
- *discussione massimo/minimo, limsup/liminf*


(infinitesimal-calculus:limits:def)=
### Definizione di limite
<!-- **Limite destro e sinistro**<br> -->

**Limite finito al finito**

$$\forall \varepsilon > 0 \quad \exists U_{x_0,\delta} \quad {t.c.} \quad |f(x) - L| < \varepsilon \quad \forall x \in U_{x_0, \delta} \backslash \{x_0\}$$

dove la condizione sull'intorno di un punto $x_0$ al finito per funzioni reali può essere riscritta come $0 < | x - x_0 | <  \delta$ per un intorno simmetrico del punto $x_0$.

```{list-table}
:header-rows: 0
* - ![](../../media/tikz/analysis/limit-finite-finite-0.svg)
  - ![](../../media/tikz/analysis/limit-finite-infinite-0.svg)
```

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
```{prf:definition} Funzione continua
:label: analysis-continuous-fun

Una funzione reale $f: D \in \mathbb{R} \rightarrow \mathbb{R}$ è continua in un punto $x_0 \in D$ <!--se la funzione è definita nel punto,--> se esiste il limite della funzione e coincide con il valore della funzione

$$\lim_{x \rightarrow x_0} f(x) = f(x_0) \ .$$
```

Una funzione reale è continua in un dominio **todo o insieme?** se è continua in ogni punto del dominio.

(infinitesimal-calculus:continuous-fun:disc)=
### Punti di discontinuità
- Tipo 1 - salto: limite destro e sinistro esistono finiti, ma non sono uguali
- Tipo 2 - essenziale: limite destro o sinistro non esistono o sono infiniti 
- Tipo 3 - eliminabile: limite destro e sinistro esistono finiti, sono uguali, ma non sono uguali all valore della funzione nel punto

**todo** *aggiungere immagini*

(infinitesimal-calculus:continuous-fun:thms)=
### Teoremi

(infinitesimal-calculus:continuous-fun:thms:weierstrass)=
#### Teorema di Weierstrass
```{prf:theorem} Teorema di Weierstrass
:label: thm:infinitesimal-calculus:continuous-fun:thms:weierstrass

Data una funzione reale continua $f: [a,b] \rightarrow \mathbb{R}$ definita sull'intervallo limitato chiuso $[a,b]$, la funzione $f(x)$ ammette un punto di massimo assoluto e un punto di minimo assoluto nell'intevallo $[a,b]$.
```

```{dropdown} Necessità delle ipotesi
Mentre non viene fornita una dimostrazione del teorema, si discute la necessità delle ipotesi fornendo controesempi:
1. la funzione non continua definita in $I = [-1,1]$

    $$f(x) = \begin{cases} |x| & x \ne = 0 \\ 0.5 & x = 0 \end{cases} \ ,$$

    assume valori massimi in $I$, in corrispondenza degli estremi dell'intervallo, ma non ha minimo. Infatti il limite inferiore della funzione nell'intervallo è $\liminf f(x) = 0$, ma non esiste alcun valore $x \in I$ tale che $f(x) = 0$, proprio per come è stata costruita la funzione con una [discontinuità](infinitesimal-calculus:continuou-fun:disc) di tipo 1 - salto in $x = 0$,

2. la funzione continua $f(x) = e^{-x^2}$ definita sull'intervallo non limitato superiormente $I = [-2, +\infty)$ ha massimo nell'intervallo in corrispondenza di $x = 0$, $\max_{x \in I} f(x) = 1$, ma non ha minimo poiché $\liminf f(x) = 0$ ma non esiste nessun valore $x \in I$ tale che $f(x) = 0$

3. la funzione continua $f(x) = x^2$ definita su $I = (1,2)$ non ammette né massimo, né minimo, poiché il limite inferiore e superiore della funzione si verificano in corrispondenza degli estremi (non inclusi) dell'intervallo aperto. Più esplicitamente, $\limsup_{x\in I} f(x) = 4$ ma $\nexists x \in I, \ f(x) = 4$; $\liminf_{x\in I} f(x) = 1$ ma $\nexists x \in I, \ f(x) = 1$;

```

(infinitesimal-calculus:continuous-fun:thms:sign)=
#### Teorema della permanenza del segno
```{prf:theorem} Teorema della permanenza del segno
:label: thm:infinitesimal-calculus:continuous-fun:thms:sign

Data una funzione continua $f: D \rightarrow \mathbb{R}$ continua, e un punto $x_0 \in D$ (**todo** *o punto di accumulazione?*). Se $f(x_0) > 0$ allora $\exists U_{x_0}$ t.c. $f(x) > 0$ per $\forall x \in U_{x_0} \cap D$.
```

**todo** Non è necessario che la funzione sia continua in $x_0$, ma è sufficiente che esista il limite della funzione $\lim_{x \rightarrow x_0} f(x) = \ell$, con $x_0$ punto di accumulazione di $X$.

```{dropdown} Dimostrazione
Sia $f(x)$ una funzione continua in $x_0$ con $f(x_0) = \ell > 0$. Poiché $f$ è continua nel punto $x_0$, esiste il limite $\lim_{x \rightarrow x_0} f(x) = \ell > 0$, e quindi

$$\forall \varepsilon > 0 \quad \exists \delta > 0 \quad \text{t.c.} |f(x) - \ell| < \varepsilon \quad \forall x \in U_{\delta_{x_0}} = [ x_0 - \delta, x + \delta] \cap D . $$

Scegliendo $\varepsilon = \ell$, si ottiene $|f(x) - \ell| < \ell$ per i valori di $x \in U_{x_0}$ e quindi la dimostrazione della tesi,

$0 < f(x) < 2 \ell \ .$

```
(infinitesimal-calculus:continuous-fun:thms:zeros)=
#### Teorema degli zeri
```{prf:theorem} Teorema degli zeri
:label: thm:infinitesimal-calculus:continuous-fun:thms:zeros

Data una funzione $f: [a,b] \rightarrow \mathbb{R}$ continua, con $f(a)$ e $f(b)$ discordi, $f(a) f(b) < 0$. Allora esiste un valore $x \in (a,b)$ tale che $f(x) = 0$.
```

```{dropdown} Dimostrazione
  **todo**
  - per assurdo?
  - con metodo di bisezione? *serve teorema di conservazione delle disuguaglianze per le successioni*

    $$a_n < b_n \quad \rightarrow \quad \lim_{n \rightarrow +\infty} a_n \le \lim_{n \rightarrow +\infty} b_n$$

```

(infinitesimal-calculus:continuous-fun:thms:intermediate)=
#### Teorema dei valori intermedi
```{prf:theorem} Teorema dei valori intermedi
:label: thm:infinitesimal-calculus:continuous-fun:thms:intermediate

Data una funzione $f: [a,b] \rightarrow \mathbb{R}$ continua, allora $f(x)$ assume tutti i valori compresi tra $f(a)$ e $f(b)$, cioè (assumendo $f(a) < f(b)$) per $\forall y \in (f(a), f(b)) \ x_0 \in (a,b) \ \text{t.c..} \ f(x_0) = y$. 
```

```{dropdown} Dimostrazione
Sia $f(a) < f(b)$ e $y_0$ un valore compreso $f(a) < y_0 < f(b)$. Si definisce la funzione $g(x) = f(x) - y_0$, che verifica le ipotesi del teorema degli zeri,

$$\begin{aligned}
  g(a) & = f(a) - y_0 < 0 \\
  g(b) & = f(b) - y_0 > 0 \ ,
\end{aligned}$$

e che quindi $\exists x_0 \in (a,b)$ t.c $g(x_0) = 0$ o equivalentemente $f(x_0) = y_0$. Da qui dimostrata la tesi che per ogni $y_0 \in (a,b)$ esiste un $x_0$ che sia l'argomento della funzione $f$, che dia $f(x_0) = y_0$.

```

(infinitesimal-calculus:limits:thms)=
## Operazioni e teoremi sui limiti
Vengono elencate alcune regole per compiere operazioni con i limiti. La [dimostrazione](infinitesimal-calculus:limits:thms:notes) delle regole è disponibile a fine capitolo.

(infinitesimal-calculus:limits:thms:operations)=
### Operazioni coi limiti
Dato un numero reale $c \in \mathbb{R}$ e i limiti **finiti** $\lim_{x \rightarrow x_0} f(x) = F$, $\lim_{x \rightarrow x_0} g(x) = G$ allora valgono le seguenti regole

$$\begin{aligned}
 & \lim_{x \rightarrow x_0} \big( c \cdot f(x) \big) = c \, F  \\
 & \lim_{x \rightarrow x_0} \big( f(x) \mp g(x) \big) = F \mp G \\
 & \lim_{x \rightarrow x_0} \big( f(x) \cdot g(x) \big) = F \cdot G \\
 & \lim_{x \rightarrow x_0} \frac{ f(x) }{ g(x) } = \frac{F}{G} \quad , \quad \text{se $G \ne 0$}  \\
\end{aligned}$$

(**todo** *regole con esponenti*)

Alcune delle operazioni elencate qui sopra per limiti finiti possono essere [estese al caso di limiti infiniti](infinitesimal-calculus:limits:thms:infinite-simal); in altri casi, nascono delle forme [indeterminate](infinitesimal-calculus:limits:thms:infinite-simal:undetermined).

(infinitesimal-calculus:limits:thms:infinite-simal)=
#### Limiti infiniti e infinitesimi
Valgono le seguenti regole

$$\begin{array}{ll}
  f(x) \rightarrow \mp \infty \ , \ c > 0             & : \ \lim_{x \rightarrow x_0} c \cdot f(x) = \mp \infty \\
  f(x) \rightarrow \mp \infty \ , \ c < 0             & : \ \lim_{x \rightarrow x_0} c \cdot f(x) = \pm \infty \\
  f(x) \rightarrow \mp \infty \ , \ G \text{ finito}  & : \ \lim_{x \rightarrow x_0} ( f(x) + g(x) ) = \mp \infty \\
  f(x) \rightarrow \mp \infty \ , \ G \text{ finito}, g(x) \ne 0  & : \ \lim_{x \rightarrow x_0} \frac{g(x)}{f(x)} = 0^{ \mp \text{sign}\{G\}} \\
  f(x) \rightarrow 0^{\mp}    \ , \ G \text{ finito}, g(x) \ne 0  & : \ \lim_{x \rightarrow x_0} \frac{g(x)}{f(x)} = \mp \text{sign}\{G\} \cdot \infty \\
  f(x) \rightarrow \mp \infty \ , \ g(x) \ne 0 & : \ \lim_{x \rightarrow x_0} g(x) \cdot f(x) = \mp \text{sign}\{G\} \cdot \infty \\
  \dots & \\
\end{array}$$

(**todo** *regole con esponenti*)

riassumibili con un po' di libertà nella notazione come

$$\begin{aligned}
  & c \cdot \mp \infty = \mp \text{sign}\{c\} \cdot \infty \ , \quad \text{se } c \ne 0 \\
  & c \mp \infty = \mp \infty \\
  & + \infty + \infty = +\infty \\
  & - \infty - \infty = -\infty \\
  & + \infty \cdot \mp \infty = \mp \infty \\
  & \frac{c}{\mp \infty} = 0^{\mp \text{sign}\{c\}} \ , \quad \text{se } c \ne 0 \\
\end{aligned}$$

(**todo** *regole con esponenti*)

```{note} Si prega di notare come sono stati esclusi alcuni casi riguardanti valori o funzioni identicamente uguali a $0$. Nel caso in cui $g(x) = 0$, ad esempio

$$g(x) f(x) \equiv 0 \qquad \rightarrow \qquad \lim g(x) f(x) = 0 \ ,$$

poiché la funzione $g(x) f(x)$ è identicamente uguale a zero: *non c'è nulla da variare per studiarne il limite: il valore è zero per ogni $x$ e basta*.

```
(infinitesimal-calculus:limits:thms:infinite-simal:undetermined)=
#### Forme indeterminate
Risultano indeterminate le seguenti 7 forme,

$$+\infty-\infty \quad , \quad 0 \cdot \mp \infty \quad , \quad \frac{\mp \infty}{\mp \infty} \quad , \quad \frac{0}{0} \quad , \quad 1^{\infty} \quad , \quad 0^0 \quad , \quad \infty^0$$

avendo interpretato gli *infiniti*, gli *zeri* e gli *uni* come funzioni che tendono a quei valori,

$$0 \sim \lim f(x) = 0 \qquad , \qquad  1 \sim \lim f(x) = 1  \qquad , \qquad \infty \sim \lim f(x) = \infty \ ,$$

senza esserne identicamente uguali.

```{prf:example} Forma indeterminata $1^{insfty}$

La funzione - o la famiglia di funzioni, al variare del parametro $n$ -

$$\left( e^{\frac{1}{x}} \right)^{x^n}$$

è un esempio di forma indeterminata $1^{+\infty}$ per $x \rightarrow +\infty$ per $n>0$, poiché 

$$\begin{aligned}
  & \lim_{x \rightarrow +\infty} e^{\frac{1}{x}} = 1 \\
  & \lim_{x \rightarrow +\infty} x^n = +\infty \quad n > 0 \\
\end{aligned}$$ 

```

**Oss.** Invece non sono forme indeterminate $0^{+\infty} \rightarrow 0$ e $0^{-\infty} \rightarrow \infty$.

Vengono ora introdotti alcuni risultati necessari per manipolare le forme indeterminate, e poter confrontare infiniti e infinitesimi.

(infinitesimal-calculus:limits:thms:comparison)=
### Teorema del confronto
```{prf:theorem} Teorema del confronto
:label: thm:infinitesimal-calculus:continuous-fun:thms:comparison

Siano $f$, $g$, $h: \ X \in \mathbb{R} \rightarrow \mathbb{R}$, e dato un punto di accumulazione $x_0$ per $X$. Se

$$\lim_{x \rightarrow x_0} f(x) = \lim_{x \rightarrow x_0} h(x) = \ell \ ,$$

ed esiste un intorno $U$ di $x_0$ tale che

$$f(x) \le g(x) \le h(x) \quad \forall x \in U \cap X \backslash \{ x_0 \} \ ,$$

allora

$$\lim_{x \rightarrow x_0} g(x) = \ell \ .$$
```

```{dropdown} Dimostrazione
Dalla definizione dei limiti di $f(x)$, $g(x)$

$$|f(x) - \ell| < \varepsilon_f \qquad \rightarrow \qquad \ell - \varepsilon_f < f(x) < \ell + \varepsilon_f$$
$$|h(x) - \ell| < \varepsilon_h \qquad \rightarrow \qquad \ell - \varepsilon_h < h(x) < \ell + \varepsilon_h$$

**todo** *curare i particolari sull'intorno.*

Definendo $\varepsilon_g = \max\{ \varepsilon_f, \varepsilon_h \}$ in $U$ **todo** *curare i dettagli*, usando le ipotesi del problema si può scrivere

$$\ell - \varepsilon_g \le \ell - \varepsilon_f < f(x) \le g(x) \le h(x) < \ell + \varepsilon_h \le \ell + \varepsilon_g$$

e quindi per  $\forall \varepsilon_g > 0$, $\exists U_{x_0,\delta}$ tale che $|g(x) - \ell|<\varepsilon_g$ per $\forall x \in U_{x_0,\delta} \backslash \{ x_0 \}$, cioè $\lim_{x \rightarrow x_0} g(x) = \ell$

```
**todo** *Dimostrazione? Discussione più intuitiva? Figura?*

(infinitesimal-calculus:limits:thms:hopital)=
### Teorema di de l'Hopital
Il teorema di de l'Hopital (o di Bernoulli, **todo** *dire due parole sulla storia? Bernoulli precettore di de l'Hopital, ricava il risultato...*) è un teorema utile per il calcolo dei limiti delle forme indeterminate $\frac{0}{0}$ e $\frac{\infty}{\infty}$. Poiché il teorema coinvolge il concetto di derivata, si rimanda alla sezione del [teorema di de l'Hopital](infinitesimal-calculus:derivatives:thm:hopital) nel capitolo sulle [derivate](infinitesimal-calculus:derivatives).

(infinitesimal-calculus:limits:fund)=
## Limiti fondamentali
Questa sezione contiene alcuni limiti fondamentali. Questi limiti possono essere considerati fondamentali come sinonimo di *"minimo da ricordare"* per poter calcolare limiti più generali utilizzando le [operazioni](infinitesimal-calculus:limits:thms:operations) e i [teoremi](infinitesimal-calculus:limits:thms) sui limiti, e calcolare le [derivate fondamentali](infinitesimal-calculus:derivatives:fund). Un elenco minimo di limiti fondamentali è:

$$\begin{aligned}
 & \lim_{x \rightarrow 0} \frac{\sin x}{x} = 1                       \\ 
 & \lim_{x \rightarrow 0} \frac{1 - \cos x}{x^2} = \frac{1}{2}       \\ 
 & \lim_{x \rightarrow +\infty} \left( 1 + \frac{1}{x} \right)^x = e \\ 
 & \lim_{x \rightarrow 0} \frac{e^x - 1}{x}= 1                       \\ 
 & \lim_{x \rightarrow 0} \frac{e^x}{1+x}= 1                         \\ 
 & \lim_{x \rightarrow 0} \frac{\ln (1+x)}{x} = 1                    \\ 
 & \lim_{x \rightarrow 0} \frac{(1+x)^a - 1}{x} = a                  \\ 
\end{aligned}$$


````{only} latex
La [dimostrazione dei limiti fondamentali](infinitesimal-calculus:limits:fund:notes) è disponibilie a fine capitolo.
````

````{only} html
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
````

(infinitesimal-calculus:limits:infinite-simal)=
## Confronto di infiniti e infinitesimi
Il confronto di funzioni che tendono a zero $f(x), g(x) \rightarrow 0$, o di funzioni che tendono all'infinito $f(x), g(x) \rightarrow \infty$ permette di definire degli *ordini di infinitesimi o di infiniti* **todo** *definire meglio*, a seconda del valore del limite $\frac{f(x)}{g(x)} = \ell$,

- se $\ell = 0$, si può dire che $f(x)$ è un infinitesimo di ordine superiore, o un infinito di ordine inferiore, rispetto a $g(x)$ e si può indicare con la notazione di *o piccolo* $f(x) = o \left(g(x) \right)$

- se $\ell$ finito diverso da zero, si può dire che $f(x)$ è un infinitesimo, o un infinito,  dello stesso ordine di $g(x)$ e si può indicare con la notazione di *o grande* $f(x) = O \left(g(x) \right)$

- se $\ell$ è infinito, si può dire che $f(x)$ è un infinitesimo di ordine inferiore, o un infinito di ordine superiore, rispetto a $g(x)$; viceversa $g(x)$ è un infinitesimo di ordine superiore, o un infinito di ordine inferiore, rispetto a $f(x)$ e si può indicare con la notazione di *o piccolo* $g(x) = o \left(f(x) \right)$

- se $\ell = 1$, si dice che $f(x)$ e $g(x)$ sono **asintoticamente equivalenti**, o in breve **asintotici**, $f(x) \sim g(x)$in un intorno del punto dove viene calcolato il limite.

### Calcolo dei limiti con sostituzione degli infinitesimi o degli infiniti

Se $h(x) \sim a f(x)$, $k(x) \sim b g(x)$ per $x \rightarrow x_0$, e il rapporto $\frac{a}{b}$ non è indeterminato, allora

$$\lim_{x \rightarrow x_0} \frac{h(x)}{k(x)} = \frac{a}{b} \lim_{x \rightarrow x_0} \frac{f(x)}{g(x)}$$

- confronto di polinomi
  - per $x \rightarrow 0$, $\frac{a_n x^n + \dots + a_0}{b_m x^m + \dots + b_0} = \frac{a_0}{b_0}$
  - per $x \rightarrow \infty$, $\frac{a_n x^n + \dots + a_0}{b_m x^m + \dots + b_0} \sim \frac{a_n}{b_m} x^{n-m}$
- per $x \rightarrow 0$, $x \sim \sin x \sim \tan x$. Ad esempio, il limite $\lim_{x\rightarrow 0} \frac{\sin \frac{x}{2}}{3 x}$ può essere calcolato moltiplicando e dividendo esplicitamente per il termine $\frac{x}{2}$ per far comparire un limite fondamentale,

  $$\lim_{x \rightarrow 0} \frac{\sin \frac{x}{2}}{3x} = \lim_{x \rightarrow 0} \underbrace{\frac{\sin \frac{x}{2}}{\frac{x}{2}}}_{\rightarrow 1} \frac{\frac{x}{2}}{3x} = \frac{1}{6} \ ,$$

  oppure più velocemente, quando si ha acquisito un po' di dimestichezza in queste operazioni, sostituendo l'asintotico $\sin \frac{x}{2} \sim \frac{x}{2}$ nel limite,

  $$\lim_{x \rightarrow 0} \frac{\sin \frac{x}{2}}{3x} = \lim_{x \rightarrow 0} \frac{x}{2} \frac{1}{3x} = \frac{1}{6} \ ,$$

- molto comodo, ma bisogna prestare attenzione che non avvengano **semplificazioni dei termini dominanti in occasione di addizioni e sottrazioni**), come ad esempio nel calcolo di 

  $$\lim_{x \rightarrow 0} \frac{x - \sin x}{x^2} \quad \text{oppure} \quad \lim_{x \rightarrow 0} \frac{x - \sin x}{x^3} $$

  Come mostrato nel capitolo sulle derivate, nella sezione sulle espansioni in [serie polinomali di Taylor e MacLaurin](infinitesimal-calculus:derivatives:taylor), la serie polinomiale {eq}`eq:infinitesimal-calculus:derivatives:taylor:fund-limits` della funzione seno produce un'approssimazione $\sin x = x - \frac{x^3}{3!} + O(x^5)$; quindi il numeratore delle due frazioni ha un termine dominante di terzo grado,

  $$x - \sin x = x - \left( x - \frac{x}{3!} + O(x^5) \right) = \frac{x}{3!} + O(x^5) \sim \frac{1}{6} x^3 \ ,$$

  che viene utilizzato nel calcolo dei limiti desiderati

  $$\lim_{x \rightarrow 0} \frac{x - \sin x}{x^2} = \lim_{x \rightarrow 0} \frac{\frac{1}{6} x^3 + O(x^5)}{x^2} = 0 $$
  $$\lim_{x \rightarrow 0} \frac{x - \sin x}{x^3} = \lim_{x \rightarrow 0} \frac{\frac{1}{6} x^3 + O(x^5)}{x^3} = \frac{1}{6} $$

**todo** esempi

(infinitesimal-calculus:limits:eval)=
## Calcolo dei limiti
**todo** Riassumere alcune tecniche per il calcolo dei limiti...*niente di speciale; mettere insieme i metodi presentati nel capitolo e mostrare qualche esempio del calcolo di limiti*

(infinitesimal-calculus:continuous-fun:bisec)=
## Metodo di bisezione

Il metodo di bisezione è un metodo iterativo che impiega i risultati del [teorema degli zeri](infinitesimal-calculus:continuous-fun:thms:zeros) per la soluzione di equazioni algebriche nella forma

$$f(x) = 0 \ , \qquad x \in [a,b]$$

con funzioni $f(x)$ continue nell'intervallo $[a,b]$. Infatti, per il teorema degli zeri, se la funzione $f(x)$ è continua ed esistono due numeri $a_0, \, b_0 \in [a,b]$ tali che la funzione valutata nei due punti ha segno opposto,

$$f(a_0) \, f(b_0) < 0 \ ,$$

allora esiste un valore $x_0 \in [a_0, b_0]$ per il quale $f(x_0) = 0$.

Il metodo di bisezione consiste quindi nel seguente algoritmo: **todo**

```{note}
In generale, un problema non-lineare può avere più di una soluzione. Un'applicazione base del metodo di bisezione non consente di determinare tutte le soluzioni di un problema, ma si rende necessaria una ricerca. L'applicazione del metodo di bisezione può essere guidata dalla soluzione grafica dell'equazione.
```

Il metodo di bisezione è discusso nel [bbook sull'introduzione alla programmazione e al calcolo scientifico](https://basics2022.github.io/bbooks-programming-hs/intro.html), nella sezione di [introduzione al calcolo numerico](https://basics2022.github.io/bbooks-programming-hs/ch/numerics.html). Nella sezione sui metodi numerici per la soluzione di [equazioni algebriche non lineari](https://basics2022.github.io/bbooks-programming-hs/ch/numerics/nonlinear.html#metodo-di-bisezione), il metodo di bisezione viene descritto, implementato e applicato a semplici esempi.


<!--
**todo** *Spostare nella sezione di precalcolo sulle successioni*
Limiti di successioni. **Formula di Sterling**

$$n! \sim \left(\frac{n}{e} \right)^n \qquad \text{per $n \in \mathbb{N} \rightarrow +\infty$}$$

o

$$\ln n! \sim n \ln n - n  \qquad \text{per $n \in \mathbb{N} \rightarrow +\infty$}$$
-->

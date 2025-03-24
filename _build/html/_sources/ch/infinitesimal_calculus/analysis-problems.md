(infinitesimal-calculus:analysis:problems)=
# Problemi

## Limiti

```{exercise} Verifica/calcolo con definizione
:class: dropdown
1. Usa la definizione di limite $\varepsilon$-$\delta$ per provare che $\lim_{x \to 1} (3x - 4) = -1$.  
2. Usa la definizione di limite per provare che $\lim_{x \to 0} \frac{1}{x^2}$ non esiste.  
3. Usa la definizione di limite per provare che $\lim_{x \to 1} \frac{1}{x} = 1$.  
4. Usa la definizione di limite per provare che $\lim_{x \to 0} \sin(x) = 0$.  
5. Usa la definizione di limite per dimostrare che $\lim_{x \to 0} \frac{e^x - 1}{x} = 1$.  
6. Usa la definizione di limite per provare che $\lim_{x \to 2} \frac{x^2 - 4}{x - 2} = 4$.  
7. Prova che $\lim_{x \to 1} \frac{x^3 - 1}{x - 1} = 3$ utilizzando la definizione di limite.  
8. Usa la definizione di limite per provare che $\lim_{x \to 0} x^2 = 0$.  
9. Usa la definizione di limite per provare che $\lim_{x \to 3} \frac{1}{x} = \frac{1}{3}$.  
10. Usa la definizione di limite per dimostrare che $\lim_{x \to 0} \ln(1+x) = 0$.  
```

```{dropdown} Soluzione 1.
La definizione di limite finito al finito $\ell = \lim_{x \rightarrow x_0} f(x)$ è

$$\forall \varepsilon > 0 \, \exists \delta > 0 \ \text{t.c.} \ |f(x) - \ell| < \varepsilon \text{ per } \forall x \in [x_0-\delta,x_0+\delta]$$

Per l'esercizio, bisogna quindi verificare che

$$\forall \varepsilon > 0 \, \exists \delta > 0 \ \text{t.c.} \ |3x-4 + 1| < \varepsilon \text{ per } \forall x \in [x_0-\delta,x_0+\delta]$$

$$|3x - 3| < \varepsilon \text{ per } \varepsilon x \in U_{x_0, \delta}$$
$$\begin{aligned}
  & 3|x-1| < \varepsilon \\
  & |x-1| < \frac{\varepsilon}{3} \\
  & 1-\frac{\varepsilon}{3} < x < 1 + \frac{\varepsilon}{3} \\
\end{aligned}$$

Quindi, per ogni $\varepsilon$ fissato, vale $|f(x) - (-1)| < \varepsilon$ per ogni $x \in U_{x_0, \delta}$ con $x_0 = 1$ e $\delta_\varepsilon = \frac{\varepsilon}{3}$.

```

```{dropdown} Soluzione 2.
**Limite finito al finito.** Non esiste **todo**


**Limite infinito (qui con segno $+\infty$) al finito.**

Per ogni $M$ fissato

$$\forall M > 0 \ \exists U_{x_0, \delta} \ \text{s.t.} \ f(x) > M \ \forall x \in U_{x_0, \delta} \backslash \{ x_0 \}$$

Qui

$$\frac{1}{x^2} > M \quad  \forall x \in \left[ -\frac{1}{\sqrt{|M|}}, \frac{1}{\sqrt{|M|}} \right] \backslash \{ 0 \} \ .$$

...

```

```{dropdown} Soluzione 5.

*Risolvere usando il fatto che $F(x) = e^x-1$ è crescente, con derivata crescente*

Per $x = \delta > 0$, $F(\delta) = e^{\delta} - 1$, $0 < F(x) < \frac{e^{\delta}-1}{\delta} x$ per $x \in (0,\delta)$

Per $x = -\delta < 0$, $F(-\delta) = e^{-\delta} - 1$, $0 < F(x) < \frac{-e^{-\delta}+1}{\delta} x$ per $x \in (-\delta, 0)$

$$\begin{aligned}
  & \left| \frac{e^x-1}{x} - 1 \right| < \varepsilon \\
  & -\varepsilon + 1 < \frac{e^x-1}{x} < \varepsilon + 1 \\
\end{aligned}$$

$$\begin{aligned}
  e^{x} - 1 & = x + \frac{x^2}{2} + \frac{x^3}{3!} + o(x^3) \\
  \frac{e^{x} - 1}{x} & = 1 + \frac{x}{2} + \frac{x^2}{3!} + o(x^2) \\
\end{aligned}$$

$$-\varepsilon < \sum_{n=1}^{+\infty} \frac{x^n}{(n+1)!} < \varepsilon$$

<!--
e quindi

$$-\varepsilon < \frac{x}{2} + \frac{x^2}{3!} + o(x^2) < \varepsilon$$

valutato in $x = - \delta$, $x = \delta$

$$\frac{x}{2} + \frac{x^2}{3!} - \frac{x^3}{4!} + \frac{x^4}{5!} - \frac{x^5}{6!} + \frac{x^6}{7!}$$

Il termine $-\frac{x^3}{4!} + \frac{x^4}{5!} = \frac{x^3}{5!} \left( -5 + x \right)$ è minore di zero per tutti i valori di $0 < x < 5$

---
dove

$$\begin{aligned}
  e^{-\delta} - 1 & =-\delta + \frac{\delta^2}{2} - \frac{\delta^3}{3!} + o(\delta^3) \\
  e^{ \delta} - 1 & = \delta + \frac{\delta^2}{2} + \frac{\delta^3}{3!} + o(\delta^3) \\
\end{aligned}$$

$$\begin{aligned}
  \frac{e^{-\delta} - 1}{\delta} & =-1 + \frac{\delta}{2} - \frac{\delta^2}{3!} + o(\delta^2) \\
  \frac{e^{ \delta} - 1}{\delta} & = 1 + \frac{\delta}{2} + \frac{\delta^2}{3!} + o(\delta^2) \\
\end{aligned}$$

...
-->

```

(infinitesimal-calculus:analysis:problems:limits-easy)=
```{exercise} Primi limiti
:class: dropdown
1. $\lim_{x \to 1} (x^2 + 3x - 4)$  
2. $\lim_{x \to -2} (x^3 + 2x^2 - 1)$  
3. $\lim_{x \to 0} \frac{x + 1}{2x + 3}$  
4. $\lim_{x \to 2} \frac{x^2 - 4}{x - 2}$  
5. $\lim_{x \to -1} \frac{x^3 + 1}{x + 1}$  
6. $\lim_{x \to 0} \frac{x^2 - 1}{x}$  
7. $\lim_{x \to 1} \frac{1 - x}{\sqrt{x} - 1}$  
8. $\lim_{x \to 3} \frac{2x - 6}{x^2 - 9}$  
9. $\lim_{x \to 0} \frac{x + \sin(x)}{x^2}$  
10. $\lim_{x \to 0} e^x - 1$  
```

```{dropdown} Soluzioni

1. E' un limite di una funzione continua al finito. Quindi è sufficiente sostituire il valore al quale tende la variabile nella funzione da valutare

    $$\lim_{x \to 1} (x^2 + 3x - 4) = 1^2 + 3 \cdot 1 - 4 = 0 \ .$$

2. E' un limite di una funzione continua al finito. Quindi è sufficiente sostituire il valore al quale tende la variabile nella funzione da valutare

    $$\lim_{x \to 2} (x^3 + 2x^2 - 1) = 2^3 + 2 \cdot 2^2 - 1 = 15 \ .$$

3. E' il limite di una funzione razionale al finito. Il valore al quale tende la variabile $x$ non è uno zero del denominatore, quindi la funzione razionale è continua in $x = 0$, e per calcolare il limite è sufficiente sostituire il valore $x=0$ nella funzione

   $$\lim_{x \to 0} \frac{x + 1}{2x + 3} = \frac{0+1}{2\cdot 0 + 3} = \frac{1}{3} \ .$$

4. Il valore al quale tende la variabile $x$ è uno zero sia per il numeratore sia per il denominatore. E' quindi una forma indeterminata nella forma $\frac{0}{0}$ che può essere risolta dopo aver fattorizzato il numeratore della frazione

   $$\lim_{x \to 2} \frac{x^2 - 4}{x-2} = \lim_{x \to 2} \frac{(x-2)(x+2)}{x-2} = \lim_{x \to 2} (x+2) \ ,$$

   e, dopo la semplificazione, il limite può essere valutato semplicemente sostituendo il valore $x=2$ nella funzione, per ottenere

   $$\lim_{x \to 2} \frac{x^2-4}{x-2} = 4 \ .$$

5. Come per il limite precedente, il valore al quale tende la variabile $x$ è uno zero sia per il numeratore sia per il denominatore, e il limite può essere affrontato con la fattorizzazione dei polinomi,

   $$\lim_{x \to -1} \frac{x^3+1}{x+1} = \lim_{x \to -1} \frac{(x+1)(x^2-x+1)}{x+1} = \lim_{x \to -1} \left( x^2-x+1 \right) = 3 \ .$$

6. Per $x \to 0$ il denominatore della funzione tende a $0$, mentre il numeratore tende a -1. Di conseguenza il limite è una forma $\frac{c}{0}$. Aggiungendo il dettaglio di limite "da sinistra" $x \to 0^-$ e "da destra" $x \to 0^+$, allora il limite vale

   $$\lim_{x \to 0^{\mp}} \frac{x^2 - 1}{x} = \pm \infty \ .$$

7. Fattorizzando il numeratore come $1 - x = (1-\sqrt{x})(1+\sqrt{x})$, si può risolvere la forma indeterminata $\frac{0}{0}$,

   $$\lim_{x \to 1} \frac{1-x}{\sqrt{x}-1} = \lim_{x \to 1} \frac{(1-\sqrt{x})(1+\sqrt{x})}{\sqrt{x}-1} = - lim_{x \to 1} -(1+\sqrt{x}) = - 2 \ .$$

8. La fattorizzazione del numeratore e del denominatore della funzione razionale permette di risolvere la forma indeterminata $\frac{0}{0}$,

   $$\lim_{x \to 3} \frac{2x - 6}{x^2 - 9} = \lim_{x \to 3} \frac{2(x-3)}{(x-3)(x+3)} = \lim_{x \to 3} \frac{2}{x+3} = \frac{1}{3} \ .$$  

9. Sostituendo $\sin x$ con l'asintotico $x$, facendo attenzione che non avvengano cancellazioni nell'ordine dell'infinitesimo,

   $$\lim_{x \to 0} \frac{x + \sin x}{x^2} = \lim_{x \to 0} \frac{x + x}{x^2} = \lim_{x \to 0} \frac{2}{x} = \infty \ .$$

   Se viene specificato il lato del limite, è possibile anche determinare il segno dell'infinito, $\lim_{x \to 0^{\mp}} \frac{x + \sin x}{x^2} = \mp \infty$.

10. La funzione è continua, e quindi è sufficiente sostituire il valore $x = 0$ nella funzione

   $$\lim_{x \to 0} e^x - 1 = e^0 - 1 = 1 - 1 = 0 \ .$$


```


(infinitesimal-calculus:analysis:problems:limits-lateral)=
```{exercise} Limiti laterali
:label: ex-limits-lateral
:class: dropdown

1. $\lim_{x \to 0^+} \frac{1}{x}$  
2. $\lim_{x \to 0^-} \frac{1}{x}$  
3. $\lim_{x \to 1^+} \frac{x^2 - 1}{x - 1}$  
4. $\lim_{x \to 1^-} \frac{x^2 - 1}{x - 1}$  
5. $\lim_{x \to 0^+} \ln(x)$  
6. $\lim_{x \to 0^-} |x| \cdot \ln(|x|)$  
7. $\lim_{x \to 0^+} x \sin\left(\frac{1}{x}\right)$  
8. $\lim_{x \to 0^-} x \cos\left(\frac{1}{x}\right)$  
9. $\lim_{x \to \pi^+} \tan(x)$  
10. $\lim_{x \to 0^-} e^{\frac{1}{x}}$ 
11. (a) $\lim_{x \to 0^-} \frac{\cos \theta}{\text{atan} \theta}$; (b) $\lim_{x \to 0^+} \frac{\cos \theta}{\text{atan} \theta} \qquad \text{R:}\ \text{(a)}: -\infty\text{; (b):} +\infty$
```

```{dropdown} Soluzioni

**11.** I limiti

$$\lim_{x \to 0^\mp} \frac{\cos x}{\text{atan} x} \, dx$$

sono i limiti di un rapporto "$\frac{1}{0}$". La funzione arcotangente $\text{atan}(x)$ è negativa per $x < 0$ e positiva per $x > 0$. Quindi il limite sinistro vale "$\frac{1}{0^-} = - \infty$", mentre il limite destro vale "$\frac{1}{0^+} = + \infty$", o meno brutalemnte

$$\begin{aligned}
  \lim_{x \to 0^-} \frac{\cos x}{\text{atan} x} = -\infty \qquad , \qquad
  \lim_{x \to 0^+} \frac{\cos x}{\text{atan} x} = +\infty \\
\end{aligned}$$


```

(infinitesimal-calculus:analysis:problems:limits-infinite)=
```{exercise} Limiti all'infinito
:class: dropdown
1. $\lim_{x \to \infty} \frac{3x + 1}{2x - 4}$  
2. $\lim_{x \to -\infty} \frac{x^2 - x + 1}{2x^2 + x}$  
3. $\lim_{x \to \infty} \frac{\sqrt{x^2 + 1}}{x + 3}$  
4. $\lim_{x \to -\infty} (x^3 - 2x + 5)$  
5. $\lim_{x \to \infty} e^x$  
6. $\lim_{x \to -\infty} e^x$  
7. $\lim_{x \to \infty} \ln(x)$  
8. $\lim_{x \to \infty} x \sin\left(\frac{1}{x}\right)$  
9. $\lim_{x \to \infty} \frac{\sin(x)}{x}$  
10. $\lim_{x \to \infty} e^{-x}$  
```

(infinitesimal-calculus:analysis:problems:limits-indeterminate)=
```{exercise} Forme indeterminate
:class: dropdown
Risolvere i seguenti limiti. Alcuni esercizi potrebbero non essere di immediata soluzione con gli strumenti introdotti in questo capitolo, ma saranno di soluzione immediata una volta introdotto il [teorema di de l'Hopital](infinitesimal-calculus:derivatives:thm:hopital) nel capitolo sulle [derivate](infinitesimal-calculus:derivatives).
1. $\lim_{x \to 0} \frac{\sin(x)}{x}$  
2. $\lim_{x \to \infty} \frac{\ln(x)}{x}$  
3. $\lim_{x \to 0} \frac{e^x - 1}{x}$  
4. $\lim_{x \to 1} \frac{x^2 - 1}{x - 1}$  
5. $\lim_{x \to 0} \frac{x}{e^x - 1}$  
6. $\lim_{x \to \infty} \frac{e^x}{x^2}$  
7. $\lim_{x \to 0} \frac{\tan(x)}{x}$  
8. $\lim_{x \to \infty} \frac{x^2}{e^x}$  
9. $\lim_{x \to 0^+} x \ln(x)$  
10. $\lim_{x \to \infty} \frac{\ln(x)}{x^2}$  
```

(infinitesimal-calculus:analysis:problems:limits-miscellanea)=
```{exercise} Esercizi vari
:class: dropdown
Risolvere i seguenti limiti, con le tecniche studiate nel capitolo. Inutile qui fare la divisione degli esercizi per tecniche (razionalizzazione, confronto, limiti notevoli,...) e "tipo di limite", quando sono possibili diversi approcci portano allo stesso risultato. Che ognuno scelga l'approccio più conveniente. In linea generale, la tecnica risolutiva si riassume nella semplificazione del limite per ricondursi a casi più semplici di cui è noto il limite o facilmente calcolabile.

1. $\lim_{x \to 0^+} x \ln(x)$  
2. $\lim_{x \to \infty} e^{-x}$  
3. $\lim_{x \to 0^+} \frac{1}{x^2}$  
4. $\lim_{x \to \infty} \sqrt{x^2 + x} - x$  
5. $\lim_{x \to +\infty} \frac{\ln(x)}{x}$  
6. $\lim_{x \to 0} \sin\left(\frac{1}{x}\right)$  
7. $\lim_{x \to \pi^-} \tan(x)$  
8. $\lim_{x \to \infty} \cos(x)$  
9. $\lim_{x \to 0^+} \ln(1 + x)$  
10. $\lim_{x \to \infty} e^{-x^2}$  

Dimostrare i seguenti limiti:
1.  $\lim_{x \to 0} x^2 \sin\left(\frac{1}{x}\right) = 0$  
2.  $\lim_{x \to 0} \frac{\sin(x)}{x^2} = \infty$  
3.  $\lim_{x \to 0} x \cos\left(\frac{1}{x}\right) = 0$  
4.  $\lim_{x \to 0} x^2 \ln(x) = 0$
5.  ...  
6.  ...
7.  ...
8.  ...
9.  ...
10. $\lim_{x \to 0} \frac{x \cos(x)}{1 + x^2} = 0$ 

```
<!--
5.  $\lim_{x \to 0} \frac{x^2}{\sin(x)} = 0$  
6.  $\lim_{x \to 0} x \sin\left(\frac{1}{x}\right) = 0$  
7.  $\lim_{x \to 0} x^2 \cos\left(\frac{1}{x}\right) = 0$  
8.  $\lim_{x \to 0} x \ln(x) = 0$  
9.  $\lim_{x \to 0} \frac{\sin(x)}{x} = 1$
-->


```{dropdown} Soluzioni
1. Usando il teorema di de l'Hopital dopo aver riscritto la funzione come frazione per confrontare due infiniti,

    $$\lim_{x \to 0^+} \frac{\ln x}{\frac{1}{x}} = (H) = \lim_{x \to 0^+} \frac{\frac{1}{x}}{-\frac{1}{x}^2} = \lim_{x \to 0^+} (-x) = 0^{-} \ .$$

2.
3.
4. Il limite si presenta nella forma indeterminata $+\infty - \infty$,

    $$\begin{aligned}
      \lim_{x \to +\infty} \left( \sqrt{x^2+x} - x \right)
      & = \lim_{x \to +\infty} x \left( \sqrt{1 + \frac{1}{x}} - 1 \right) \ .
    \end{aligned}$$

    Si può affrontare questo limite in diversi modi: di seguito viene risolto sostituendo la radice con un suo asintotico, o con il teorema di de l'Hopital. La radice può essere scritta con l'espansione in serie di $\sqrt{1 + y}$ per $y = \frac{1}{x} \to 0^+$,

    $$\begin{aligned}
      f (y) & = (1+y)^{\frac{1}{2}}             && f(0) = 1 \\
      f'(y) & = \frac{1}{2}(1+y)^{-\frac{1}{2}} && f'(0) = \frac{1}{2} \\
    \end{aligned}$$

    $$\sqrt{1 + y} = 1 + \frac{1}{2} y + o(y) \ .$$

    Sostituendo questa espansione al posto della radice nel limite,

    $$\lim_{x \to +\infty} x \left( \sqrt{1+ \frac{1}{x}} - 1 \right) = \lim_{x \to +\infty} x \left( 1 + \frac{1}{2}\frac{1}{x} + o\left(\frac{1}{x}\right) - 1 \right) = \frac{1}{2} \ .$$

    Oppure usando il teorema di de l'Hopital usando la variabile $y = \frac{1}{x} \to 0^+$,

    $$\lim_{y \to 0^+} \dfrac{(1+y)^{\frac{1}{2}} - 1}{y} =(H)= \lim_{y \to 0^+} \frac{\frac{1}{2}(1+y)^{-\frac{1}{2}}}{1} = \frac{1}{2} \ .$$



5. Il logaritmo cresce all'infinito in maniera più lenta della funzione $x$. E' possibile dimostrare questa affermazione e calcolare l'integrale con il teorema di de l'Hopital

    $$\lim_{x \to +\infty} \frac{\ln x}{x} = \lim_{x \to +\infty} \frac{\frac{1}{x}}{1} = 0^+ \ .$$

6.
7.
8.
9.
10. Il limite non è una forma indeterminata. La funzione è continua in $x = 0$ e quindi è sufficiente sostituire il valore $x=0$ nella funzione,

    $$\lim_{x \to 0} \frac{x \cos x}{1 + x^2} = \frac{0 \cdot 1}{1 + 0^2} = 0 \ .$$

```

```{dropdown} Soluzioni

1. Il limite è dimostrato osservando che la funzione $\sin y$ è limitata tra $-1$ e $1$ per qualsiasi valore dell'argomento, mentre il fattore $x^2$ tende a zero. Il limite è quindi nella forma $0 \cdot M$, con $M$ finito e limitato, e quindi è uguale a $0$.

2. Usando l'asintotico $\sin x \sim x$, il limite può essere riscritto come 

   $$\lim_{x \to 0} \frac{x}{x^2} = \lim_{x \to 0} \frac{1}{x} = \infty \ .$$

3. Il limite è dimostrato osservando che la funzione $\cos y$ è limitata tra $-1$ e $1$ per qualsiasi valore dell'argomento, mentre il fattore $x^2$ tende a zero. Il limite è quindi nella forma $0 \cdot M$, con $M$ finito e limitato, e quindi è uguale a $0$.

4. Usando il teorema di de l'Hopital,

   $$\lim_{x \to 0^+} x^2 \ln x = \lim_{x \to 0^+} \frac{\ln x}{\frac{1}{x^2}} = (H) = \lim_{x \to 0^+} \frac{\frac{1}{x}}{-\frac{2}{x^3}} = \lim_{x \to 0^+} -\frac{x^2}{2} = 0^- \ .$$

5.
6. 
7.
8.
9.
10. 

```


(infinitesimal-calculus:analysis:problems:funs)=
## Studio di funzione: dominio, continuità e limiti
(infinitesimal-calculus:analysis:problems:continuity)=
```{exercise} Continuità e limiti
:class: dropdown
1. Determina il valore di $c$ per cui $f(x)$ è continua in $x=1$, con  
   $f(x) = \begin{cases} 
   x^2 + c, & x \leq 1, \\
   2x + 1, & x > 1.
   \end{cases}$  
2. Determina il valore di $c$ per cui $f(x)$ è continua in $x=2$, con  
   $f(x) = \begin{cases} 
   \sin(x) + c, & x \leq 2, \\
   x^2 - 4, & x > 2.
   \end{cases}$  
3. Trova il punto di discontinuità per la funzione  
   $f(x) = \frac{1}{x - 1}$ per $x = 1$.  
4. Determina se la funzione $f(x) = \frac{x^2 - 4}{x - 2}$ è continua in $x=2$.  
5. Prova che la funzione $f(x) = \frac{\sin(x)}{x}$ è continua in $x=0$.  
6. Verifica la continuità di $f(x) = \sqrt{x}$ in $x=0$.  
7. Determina il tipo di discontinuità della funzione $f(x) = \frac{1}{x}$ in $x=0$.  
8. Trova i valori di $c$ e $d$ che rendono continua la funzione  
   $f(x) = \begin{cases} 
   x^2 + c, & x \leq 1, \\
   d - x, & x > 1.
   \end{cases}$  
9. Verifica se la funzione $f(x) = \cos(x)$ è continua in $x=0$.  
10. Determina se la funzione $f(x) = \frac{\ln(x)}{x}$ è continua in $x=1$.  
```

(infinitesimal-calculus:analysis:problems:asynptotics)=
```{exercise} Asintoti verticali e orizzontali
:class: dropdown
1. Trova gli asintoti orizzontali della funzione $f(x) = \frac{3x}{x^2 + 1}$.  
2. Trova gli asintoti verticali della funzione $f(x) = \frac{1}{x - 2}$.  
3. Determina gli asintoti orizzontali della funzione $f(x) = \frac{x^2 - 1}{x^2 + 1}$.  
4. Trova gli asintoti verticali della funzione $f(x) = \frac{e^x}{x - 1}$.  
5. Trova gli asintoti orizzontali della funzione $f(x) = \frac{\ln(x)}{x}$.  
6. Determina gli asintoti verticali della funzione $f(x) = \frac{1}{\sqrt{x}}$.  
7. Trova gli asintoti orizzontali della funzione $f(x) = e^{-x}$.  
8. Trova gli asintoti verticali della funzione $f(x) = \frac{1}{x^2 - 4}$.  
9. Determina gli asintoti orizzontali della funzione $f(x) = \frac{2x}{x^2 + 1}$.  
10. Trova gli asintoti verticali della funzione $f(x) = \frac{1}{x^3 - x}$.  
```

<!-- (infinitesimal-calculus:analysis:problems:funs)= -->
```{exercise} Studio funzione - dominio, continuità, grafico
:class: dropdown
Delle seguenti funzioni viene chiesto di:
- determinare se sono definite e continue in tutti i punti dei domini indicati; dove non è indicato esplicitamente il dominio, determinare il dominio
- calcolare i limiti al finito in eventuali [punti di discontinuità](infinitesimal-calculus:continuous-fun:disc), e i limiti agli estremi del dominio
- fornire una stima asintotica dei limiti nel caso di infiniti o infinitesimi
- rappresentare il grafico $y = f(x)$ della funzione in un piano descritto dalle coordinate cartesiane $x$, $y$, tenendo in considerazione i risultati dei punti precedenti (prima rappresentare i punti di discontinuità e gli asintoti per aiutarsi nel disegno del grafico)
- stabilire se le funzioni sono pari, dispari, periodiche, o se esistono rette o punti di simmetria
- discutere l'esistenza degli zeri della funzione e darne una stima, facendo riferimento al [teorema degli zeri](infinitesimal-calculus:continuous-fun:thms:zeros) 

1.  $f(x) = x^4-4x^2+3 \qquad , \qquad x \in \mathbb{R}$ (md.8)
2.  $f(x) = \frac{x^2+12 x +20}{x+1} \qquad , \qquad x \in \mathbb{R}$ (md)
3.  $f(x) = \frac{x^2+2x-4}{x^2-4x+3} \qquad , \qquad x \in [0,2]$ (md)
4.  $f(x) = \ln \left[(x-1)(x-3)\right] $
5.  $f(x) = \frac{|x-2|}{x-2}$
6.  $f(x) = \frac{\sin x}{x}$
7.  $f(x) = \frac{\sin x}{x}$
8.  $f(x) = \frac{x^2 - 2}{e^x-1}$
9.  $f(x) = \begin{cases} e^x & x < 0 \\ 1 + x  & x \ge 0 \end{cases}$
10. $f(x) = \frac{x^2 - 1}{x^2 + 1}$
```

(infinitesimal-calculus:analysis:problems:applications)=
```{exercise} Limiti e applicazioni
:class: dropdown
<!--
**todo**
## Limiti e applicazioni
1. La posizione di una particella nel tempo è data da $s(t) = t^2 + 3t - 2$. Trova la velocità istantanea nel punto $t = 2$.  
2. Trova il tasso di cambiamento di $f(x) = e^x$ in $x = 0$.  
3. Calcola il limite che rappresenta la velocità istantanea di una particella al tempo $t=0$ se la sua posizione è data da $s(t) = \sin(t)$.  
4. Determina la derivata di $f(x) = \ln(x)$ nel punto $x = 1$.  
5. Trova la velocità istantanea della particella al tempo $t=1$ se la sua posizione è data da $s(t) = t^3$.  
6. Calcola $\lim_{x \to 0} \frac{\sin(x)}{x}$ per determinare la velocità istantanea di una particella.  
7. Trova la velocità istantanea di $f(x) = x^2 + 5x - 3$ in $x = 2$.  
8. Calcola $\lim_{x \to 0} \frac{e^x - 1}{x}$ per determinare il tasso di crescita di una funzione esponenziale.  
9. Trova la velocità istantanea della funzione $f(t) = 2t^2 + 3$ in $t = 1$.  
10. Calcola $\lim_{x \to 0} \frac{\cos(x) - 1}{x}$ come limite del tasso di cambiamento.  
-->
```

(infinitesimal-calculus:analysis:problems:bisection)=
## Metodo di bisezione
Si chiede di risolvere le sequenti equazioni nonlineari con il [metodo di bisezione](infinitesimal-calculus:continuous-fun:bisec) (è quindi necessario riformulare il problema come la ricerca degli zeri di una funzione), dopo aver impostato la soluzione con un metodo grafico. Il metodo grafico è necessario a farsi un'idea sul numero di soluzioni da cercare, e sui valori con cui iniziare il metodo di bisezione. Si chiede di concludere il procedimento a mano dopo 3 iterazioni, o quando si ottiene una soluzione con errore minore della tolleranza, qui scelta come $\tau = 0.01$. Si chiede infine di implementare il metodo con un linguaggio di programmazione a piacimento, per cercare una soluzione con tolleranza $\tau = 10^{-5}$.

Le stesse equazioni vengono affrontate [con il metodo di Newton come esercizio](infinitesimal-calculus:derivatives:problems:newton) nel capitolo sulle derivate.

```{exercise} Soluzione iterativa di equazioni nonlineari - bisezione
1. $x^2 - 4x + 1 = 0 $
2. $x^3 - 2x = 1$
3. $\ln x = - 2 x$
4. $e^{-x} \cos x = \frac{1}{2}$
```
```{dropdown} Soluzione 1.
**Inizializzazione del metodo.**

$$\begin{aligned}
  a_0 & = 0 \quad \rightarrow && f(0) = 0 + 0 + 1 =  1 > 0 \\
  b_0 & = 2 \quad \rightarrow && f(2) = 4 - 8 + 1 = -3 < 0
\end{aligned}$$

**Iterazione 0.** Il punto medio dell'intervallo e la funzione valutata nel punto sono

$$c_0 = \frac{a_0+b_0}{2} = 1 \quad \rightarrow \quad f(1) = 1 - 4 + 1 = -2$$

**Iterazione 1.** Il nuovo intervallo diventa $[a_1, b_1] = [a_0, c_0] = [0, 1]$. Il punto medio e la funzione valutata nel punto sono

$$c_1 = \frac{a_1 + b_1}{2} = \frac{1}{2} \quad \rightarrow \quad f\left(\frac{1}{2}\right) = \frac{1}{4} - 4 \frac{1}{2} + 1 = -\frac{3}{4} $$

Il valore assoluto della funzione in $c_1$ è maggiore della tolleranza, $|f(c_1)| > \tau$; il numero di iterazioni fatte è inferiore al numero di iterazioni massimo; quindi l'algoritmo procede.

**Iterazione 2.** Il nuovo intervallo diventa $[a_2, b_2] = [a_1, c_1] = \left[0, \frac{1}{2}\right]$. Il punto medio e la funzione valutata nel punto sono

$$c_2 = \frac{a_2 + b_2}{2} = \frac{1}{4} \quad \rightarrow \quad f\left(\frac{1}{4}\right) = \frac{1}{16} - 4 \frac{1}{4} + 1 = \frac{1}{16} $$

Il valore assoluto della funzione in $c_2$ è maggiore della tolleranza, $|f(c_2)| > \tau$; il numero di iterazioni fatte è inferiore al numero di iterazioni massimo; quindi l'algoritmo procede.

**Iterazione 3.** Il nuovo intervallo diventa $[a_3, b_3] = [c_2, b_2] = \left[\frac{1}{4}, \frac{1}{2}\right]$. Il punto medio e la funzione valutata nel punto sono

$$c_3 = \frac{a_2 + b_2}{2} = \frac{3}{8} \quad \rightarrow \quad f\left(\frac{3}{8}\right) = \frac{9}{64} - 4 \frac{3}{8} + 1 = \frac{9}{64} - \frac{1}{2} = \frac{9 - 32}{64} = - \frac{23}{64} $$

Il valore assoluto della funzione in $c_1$ è maggiore della tolleranza, $|f(c_1)| > \tau$; il numero di iterazioni ha raggiunto il numero massimo di iterazioni impostato. Quindi l'esecuzione dell'algoritmo si interrompe, senza aver trovato una soluzione con la tolleranza richiesta.

```


<!--
## Limiti e definizione di continuità (Definizione $\varepsilon$-$\delta$)
1. Usa la definizione di limite $\varepsilon$-$\delta$ per provare che $\lim_{x \to 2} (3x - 4) = 2$.  
2. Usa la definizione di limite per provare che $\lim_{x \to 0} \frac{1}{x^2}$ non esiste.  
3. Usa la definizione di limite per provare che $\lim_{x \to 1} \frac{1}{x} = 1$.  
4. Usa la definizione di limite per provare che $\lim_{x \to 0} \sin(x) = 0$.  
5. Usa la definizione di limite per dimostrare che $\lim_{x \to 0} \frac{e^x - 1}{x} = 1$.  
6. Usa la definizione di limite per provare che $\lim_{x \to 2} \frac{x^2 - 4}{x - 2} = 4$.  
7. Prova che $\lim_{x \to 1} \frac{x^3 - 1}{x - 1} = 3$ utilizzando la definizione di limite.  
8. Usa la definizione di limite per provare che $\lim_{x \to 0} x^2 = 0$.  
9. Usa la definizione di limite per provare che $\lim_{x \to 3} \frac{1}{x} = \frac{1}{3}$.  
10. Usa la definizione di limite per dimostrare che $\lim_{x \to 0} \ln(1+x) = 0$.  
-->

<!--
## Funzioni
```{exercise} Verifica continuità
Studiare la continuità delle seguenti funzioni con la definizione di continuità

1. $y = x$
2. $y = \frac{1}{x}$
3. ...

```


```{exercise}
Esercizi con parametro **todo**
```

## Riferimenti
- (md) Matematica Dolce
- (ym) YouMath

-->

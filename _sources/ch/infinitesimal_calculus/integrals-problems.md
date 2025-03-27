(infinitesimal-calculus:integrals:problems)=
# Problemi

## Calcolo integrali indefiniti
```{exercise}
:label: integral-ex-indefinite

Si chiede di calcolare i seguenti integrali indefiniti

$$\begin{aligned}
 & \mathbf{0.} \,  \int x^2 e^x \, dx & \text{R: } \\
 & \mathbf{1.} \,  \int x^3 e^{x^3} \, dx & \text{R: } \\
 & \mathbf{2.} \,  \int x \ln x \, dx & \text{R: } \\
 & \mathbf{3.} \,  \int x \cos x \, dx & \text{R: } \\
 & \mathbf{4.} \,  \int x^3 \cos 2x \, dx & \text{R: } \\
 & \mathbf{5.} \,  \int x^2 \ln x \, dx & \text{R: } \\
 & \mathbf{6.} \,  \int x^2 \sin x \, dx & \text{R: } \\
 & \mathbf{7.} \,  \int x \text{atan} x \, dx & \text{R: } \\
 & \mathbf{8.} \,  \int \frac{\ln x}{x^2} \, dx & \text{R: } \\
 & \mathbf{9.} \,  \int \sin 3x \, dx & \text{R: } \\
\end{aligned}$$
$$\begin{aligned}
 & \mathbf{10.} \,  \int \sin 3x \sin 2x \, dx & \text{R: } \\
 & \mathbf{11.} \,  \int \cos x \sin 2x \, dx & \text{R: } \\
 & \mathbf{12.} \,  \int \sqrt{1 - \sin x} \, dx & \text{R: } \\
 & \mathbf{13.} \,  \int \sqrt{x^2 + 1} \, dx & \text{R: } \\
 & \mathbf{14.} \,  \int \sqrt{x^2 - 3} \, dx & \text{R: } \\
 & \mathbf{15.} \,  \int \frac{1}{x^2 \sqrt{9+x^2}} \, dx & \text{R: } \\
 & \mathbf{16.} \,  \int \frac{1}{x^2 \sqrt{9-x^2}} \, dx & \text{R: } \\
 & \mathbf{17.} \,  \int \frac{x}{\sqrt{x^2-4}} \, dx & \text{R: } \\
 & \mathbf{18.} \,  \int \frac{1}{\sqrt{1 - \cos 2 x}} \, dx & \text{R: } \\
 & \mathbf{19.} \,  \int \sqrt{4 - 9 x^2} \, dx & \text{R: } \\
\end{aligned}$$
$$\begin{aligned}
 & \mathbf{21.} \,  \int \frac{\cos^2 x}{\sin^3 x} \, dx & \text{R: } \\
 & \mathbf{22.} \,  \int \frac{1}{(4+x^2)^3} \, dx & \text{R: } \\
 & \mathbf{23.} \,  \int \frac{1}{\sqrt{x^2 - 2x + 3}} \, dx & \text{R: } \\
 & \mathbf{24.} \,  \int \, e^x \, \sin x \, dx && \text{R: } \frac{1}{2} e^{x} \left( \sin x - \cos x \right) + C \\
 & \mathbf{25.} \,  \int \, e^x \, \cos x \, dx && \text{R: } \frac{1}{2} e^{x} \left( \sin x + \cos x \right) + C  \\
\end{aligned}$$
```

```{dropdown} Soluzione


**24.** Usando il metodo di integrazione per parti

$$\begin{aligned}
  \int \, e^x \, \sin x \, dx 
  & = e^x \sin x - \int \, e^x \cos x \, dx = \\
  & = e^x \sin x - \left( e^x \cos x + \int \, e^x \sin x \, dx \right) = \\
\end{aligned}$$

Riconoscendo che l'integrale desiderato compare da entrambe le parti dell'uguale, si può "portarne" uno dall'altra parte e scrivere

$$\int \, e^x \, \sin \, dx = \frac{1}{2} e^{x} \left( \sin x - \cos x \right) + C \ .$$

**25.** Usando il metodo di integrazione per parti

$$\begin{aligned}
  \int \, e^x \, \cos x \, dx 
  & = e^x \cos x + \int \, e^x \sin x \, dx = \\
  & = e^x \cos x + \left( e^x \sin x - \int \, e^x \cos x \, dx \right) = \\
\end{aligned}$$

Riconoscendo che l'integrale desiderato compare da entrambe le parti dell'uguale, si può "portarne" uno dall'altra parte e scrivere

$$\int \, e^x \, \sin \, dx = \frac{1}{2} e^{x} \left( \sin x - \cos x \right) + C \ .$$

```


## Integrali definiti
````{exercise}
:label: ex:integrals:definite

Risolvere i seguenti integrali. Nell'esercizio {ref}`ex:integrals:definite:attention` vengono riportati altri esercizi, nei quali si sottolinea l'importanza di prestare attenzione a quello che si fa, prima di farlo: inanzitutto controllare se la funzione è definita sull'intervallo; poi controllare se si possono rimuovere i valori assoluti, se si riconosce il segno dell'integrando nel dominio o in parte di esso.

**Obiettivi.** Metodi di integrazione: sostituzione, integrazione per parti,...; manipolazione dell'integranda: usando le proprietà delle funzioni trignonometriche o iperboliche, frazione come somma di frazioni con denominatore di ordine 1, 2, completamento quadrato,...; proprietà dll'integrale: additività sui domini di integrazione,...

```{dropdown} Suggerimenti
- L'operatore $\lfloor x \rfloor$ rappresenta la parte intera di $x$; l'operatore $\{ x \} := x - \lfloor x \rfloor$ ne re rappresenta la farte frazionaria; ad esempio: $\lfloor 3.2 \rfloor = 3$, $\{ 3.2 \} = 0.2$. Si consiglia di sfruttare la proprietà di additività sui domini di integrazione per gli integrali in cui compaiono questi operatori.
- Per il calcolo dell'integrale **13.** è necessario utilizzare il valore dell'[integrale $\int_{x=-\infty}^{+\infty} e^{-x^2} \, dx = \sqrt{\pi}$](integral-eTox2).
```

$$\begin{aligned}
 & \mathbf{1.} \,  \int_{x=0}^{+\infty} \, x^7 e^{-x^2} \, dx && \text{R: } 3 \\ 
 & \mathbf{2.} \,  \int_{x=0}^{\pi} \, \sin^5 x \, dx && \text{R: } \frac{16}{15} \\
 & \mathbf{3.} \,  \int_{x=0}^{1} \, \left( \sin (\ln x) + \cos(\ln x) \right) \, dx && \text{R: } 0 \\
 & \mathbf{4.} \,  \int_{x=-1}^{1} \, \frac{\cos x}{\text{atan} x} \, dx && \text{R: } 0 \\
 & \mathbf{5.} \,  \int_{x=\pi/2}^{\pi} \, \sqrt{1 + \cos x} \, dx && \text{R: }  \\
 & \mathbf{6.} \,  \int_{x=-\infty}^{0} \, e^{-\sqrt[6]{-x}} \, dx && \text{R: }  \\
 & \mathbf{7.} \,  \int_{x=1}^{+\infty} \, \frac{1}{2025^{\lfloor x \rfloor}} \, dx && \text{R: }  \\
 & \mathbf{8.} \,  \int_{x=4}^{5} \, \frac{2x+1}{(x-1)(x-2)(x-3)} \, dx && \text{R: }  \\ 
 & \mathbf{9.} \,  \int_{x=0}^{1} \, x \, e^{x^2 + e^{x^2}} \, dx && \text{R: }  \\
 & \mathbf{10.}\,  \int_{x=0}^{3/2} \, \lfloor x + \lfloor 2x \rfloor \rfloor \, dx && \text{R: }  \\
 & \mathbf{11.}\,  \int_{x=2024}^{2025} \, \ln \{ x \} \, dx && \text{R: }  \\
 & \mathbf{12.}\,  \int_{x=98}^{99} x^{-\frac{2}{\ln x}} \, dx && \text{R: }  \\
 & \mathbf{13.}\,  \int_{x=-\infty}^{+\infty} e^{-x^2 + 3x} \, dx && \text{R: }  \\
\end{aligned}$$



````

```{dropdown} Soluzione
:open:

**1.**
L'integrale viene risolto con l'applicazione ripetuta del metodo di integrazione per parti (integrando ripetutamente l'esponenziale $f(u) = e^{-u})$ che ha primitiva $F(u) = -e^{-u}$ e derivando la potenza $u^n$) e con la sostituzione $x^2 = u$, che comporta $2 x dx = du$,

$$\begin{aligned}
  \int_{x=0}^{+\infty} \, x^7 e^{-x^2} \, dx 
  & = \int_{x=0}^{+\infty} x^6 \, e^{-x^2} \, x \, dx = \\
  & = \frac{1}{2} \int_{u=0}^{+\infty} u^3 \, e^{-u} \, du = && \quad \text{IxP} \\
  & = \frac{1}{2} \left[ \underbrace{\left. - u^3 e^{-u} \right|_{u=0}^{+\infty}}_{=0} + \int_{u=0}^{+\infty} 3u^2 e^{-u} \right] = && \quad \text{IxP} \\
  & = \frac{3}{2} \left[ \underbrace{\left. - u^2 e^{-u} \right|_{u=0}^{+\infty}}_{=0} + \int_{u=0}^{+\infty} 2u   e^{-u} \right] = && \quad \text{IxP} \\
  & = 3 \left[ \underbrace{\left. - u e^{-u} \right|_{u=0}^{+\infty}}_{=0} + \int_{u=0}^{+\infty}  e^{-u} \right] = &&  \\
  & = - \left.3 e^{-u}\right|_{u=0}^{+\infty} = 3 \\
\end{aligned}$$

avendo usato il risultato {prf:ref}`limit:example:lim-xne-x` $\lim_{u \rightarrow + \infty} u^n e^{-u} = 0$ per ogni $n$.

**2.**
L'integrale viene calcolato usando le proprietà dellle funzioni trigonometriche...

$$\begin{aligned}
  I = \int_{x=0}^{\pi} \, \sin^5 x \, dx 
  & = \int_{x=0}^{\pi} \sin^2 x \, \underbrace{\sin^2 x}_{1-\cos^2 x} \, \underbrace{\sin x \, dx}_{- d \cos x} = \\
  & = - \int_{x=0}^{\pi} \left( 1-\cos^2 x \right)^2 \, d \cos x = \\
  & = - \int_{x=0}^{\pi} \left( 1- 2\cos^2 x + \cos^4 x \right) \, d \cos x = \\
  & = - \left.\left( \cos x - \frac{2}{3}\cos^3 x + \frac{1}{5}\cos^5 x \right) \right|_{x=0}^{\pi} = \\
  & = 2 \left( 1-\frac{2}{3}+\frac{1}{5} \right) = \frac{16}{15} \ .
\end{aligned}$$

**3.** Utilizzando la sostituzione $u = \ln x$, e quindi $x = e^{u}$, $du = \frac{1}{|x|} \, dx$, $dx = |x| \, du = e^{u} \, dx$ (si osservi che il modulo assoluto è ininfluente in questo esercizio, poiché il dominio di integrazione di $x$ è $[0,1]$, e quindi $|x| = x$ per ogni $x \in [0,1]$), si può riscrivere l'integrale come

$$ \int_{x=0}^{1} \, \left( \sin (\ln x) + \cos(\ln x) \right) \, dx  = \int_{u = -\infty}^{0} \left( \sin u + \cos u \right) \, e^{u} \, du$$

avendo cambiato gli estremi di integrazione in maniera coerente con il cambio di variabili, $x \rightarrow 0$: $u \rightarrow -\infty$, $x = 1$: $u = 0$. Questo integrale può essere calcolato come fatto nell'esercizio {ref}`integral-ex-indefinite` **24.**, **25.**

$$\begin{aligned}
  I
  & = \left.\left[ \frac{1}{2} e^{u} ( \sin u - \cos u ) + \frac{1}{2} e^{u} (\sin u + \cos u)  \right]\right|_{u=-\infty}^{0} = \\
  & = \left.\left[ e^{u} \sin u \right]\right|_{u=-\infty}^{0} = \\
  & = 0 - \lim_{u \rightarrow -\infty} e^{u} \sin u = 0 \ ,
\end{aligned}$$

poiché la funzione $\sin u$ è limitata, mentre $\lim_{u\rightarrow -\infty} e^{u} = 0$.

**4.**
**!!!** Questo integrale è un [integrale improprio](infinitesimal-calculus:integrals:improper), poiché l'integranda non è definita nel punto $x=0$ e tende a $-\infty$ per $x \rightarrow 0^-$ e $+\infty$ per $x \rightarrow 0^+$ , come facilmente verificabile, e come già calcolato nell'esercizio {ref}`ex-limits-lateral` **11.** Se si intende questo integrale come [valore principlae di Cauchy](infinitesimal-calculus:integrals:improper:cauchy), si può sfruttare le proprietà di simmetria della funzione senza indagare se l'integrale non sia la somma di due integrali divergenti.

Osservando che l'integranda è una [funzione dispari](math-hs:precalculus:real-functions:types) (poiché prodotto della funzione pari $\cos x$ e funzione dispari $\text{atan}(x)$) e il dominio di integrazione è simmetrico, si può concludere immediatamente che il valore dell'integrale è $0$.

**5.** Osservando l'argomento della radice, è lecito che venga il sospetto che sia utile usare qualche proprietà delle funzioni trigonometriche. In particolare, grazie alla relazione {eq}`eq:trigonometry:cosTo2x-sinTo2x`, si può scrivere per il generico angolo $1 + \cos (2a) = 2 \cos^2 a$. Questa relazione viene utilizzata per l'angolo $\frac{x}{2}$ per poter scrivere l'integranda come

$$\sqrt{1 + \cos x} = \sqrt{2 \cos^2 \left( \frac{x}{2} \right) } = \sqrt{2} \left|\cos \frac{x}{2} \right| \ ,$$

e potendo rimuovere il valore assoluto (necessario per la [definizione di radice quadrata sui numeri reali](math-hs:algebra:real:root)!!! Bene ricordarlo, ogni tanto) poiché $\cos \frac{x}{2} \ge 0$ per tutti i valori di $x$ appartenenti al dominio $x \in \left[\frac{\pi}{2}, \pi\right]$. Per integrali di questa funzione su altri domini nei quali occorre prestare attenzione al segno dell'integranda, si rimanda all'esercizio {ref}`ex:integrals:definite:attention` **1.**, **2.**. 

 $$\begin{aligned}
   \int_{x=\pi/2}^{\pi} \, \sqrt{1 + \cos x} \, dx 
   & = \int_{x=\pi/2}^{\pi} \sqrt{2} \cos \frac{x}{2} \, dx = \\
   & = 2 \sqrt{2} \int_{x=\pi/2}^{\pi} \cos \frac{x}{2} \, d \frac{x}{2} = \\
   & = 2 \sqrt{2} \left. \, \sin \frac{x}{2} \right|_{x={\pi/2}}^{\pi} = \\
   & = 2 \sqrt{2} \left[ 0 - (-1) \right] = 2 \sqrt{2} \ ,
 \end{aligned}$$

avendo fatto un fatto un cambio di variabili - senza introdurre un nuovo simbolo, come può essere conveniente per sintesi in questi casi semplici - da $x$ a $\frac{x}{2}$, solo riconoscendo che $dx = 2 d \frac{x}{2}$, per avere il differenziabile della stessa variabile che compare ad argomento della funzione coseno.

**6.** Prima di procedere a occhi chiusi nel calcolo dell'integrale, osserviamo che la funzione è ben definita, al contrario di quello che avviene nell'esercizio {ref}`ex:integrals:definite:attention` **3.**. Con il cambio di variabili $u = (-x)^{\frac{1}{6}}$, e quindi $du = - \frac{1}{6}(-x)^{-\frac{5}{6}} \, dx$, $dx = - (-x)^{\frac{5}{6}} \, du = 6 \, u^5 \, du$, $x \rightarrow -\infty:$ $u \rightarrow +\infty$, $x = 0:$ $u = 0$,  ci si può ricondurre a un integrale simile a all'integrale **1.** di questo stesso esercizio,
 
 $$\int_{x=-\infty}^{0} \, e^{-\sqrt[6]{-x}} \, dx = - 6 \int_{u=\infty}^{0} e^{-u} \, u^5 \, du = 6 \int_{u=0}^{\infty} e^{-u} \, u^5 \, du = 6 \cdot 5! \left. \left[ - e^{-u} \right]\right|_{u=0}^{+\infty} = 6 \cdot 5! = 6!$$

<!--
**6.** Prima di procedere a occhi chiusi nel calcolo dell'integrale, osserviamo che la funzione è ben definita, al contrario di quello che avviene nell'esercizio {prf:ref}`ex:integrals:definite:attention` **3.**. Con il cambio di variabili $u = (-x)^{\frac{1}{6}}$, e quindi $du = - \frac{1}{6}(-x)^{-\frac{5}{6}} \, dx$, $dx = - (-x)^{\frac{5}{6}} \, du = 6 \, u^5 \, du$, $x = \-infty:$ $u = +\infty$, $x = 0:$ $u = 0$,  ci si può ricondurre a un integrale simile a all'integrale **1.** di questo stesso esercizio,
 
 $$\int_{x=-\infty}^{0} \, e^{-\sqrt[6]{-x}} \, dx = - 6 \int_{u=\infty}^{0} e^{-u} \, u^5 \, du $$
-->

**7.**

**8.** L'integranda può essere scritta come somma di frazioni parziali nella forma

$$\frac{2x+1}{(x-1)(x-2)(x-3)} = \frac{A}{x-1} + \frac{B}{x-2} + \frac{C}{x-3} \ ,$$

con $A = \frac{3}{2}$, $B = -5$, $C = \frac{7}{2}$

$$\begin{aligned}
  \int_{x=4}^{5} \frac{2x+1}{(x-1)(x-2)(x-3)} \, dx
  & = \int_{x=4}^{5} \left( \frac{A}{x-1} + \frac{B}{x-2} + \frac{C}{x-3} \right) \, dx = \\
  & = \left( A \,\ln(x-1) + B \, \ln(x-2) + C \, \ln(x-3) \right)|_{x=4}^{5}  = \\
  & = \frac{3}{2} \ln 4 + \left( - \frac{3}{2} - 5  \right) \ln 3 + \left( 5 + \frac{7}{2} \right) \ln 2 - \frac{7}{2} \underbrace{\ln 1}_{=0} = \\
  & = - \frac{13}{2} \, \ln 3 + \frac{23}{2} \, \ln 2 \ .
\end{aligned}$$

Calcolo dei coefficienti $A$, $B$, $C$ **todo** *spostare in altro capitolo, usarlo come esercizio e fare riferimento*

$$\begin{aligned}
  1   & : \ 1 = 6A + 3B+ 2C \\ 
  x   & : \ 2 = -5A - 4B - 3C \\ 
  x^2 & : \ 0 = A + B + C \\ 
\end{aligned}$$


**9.**

**10.**

**11.**

**12.**

**13.**

```

```{exercise} Esempi di integrali in cui bisogna prestare particolare attenzione
:label: ex:integrals:definite:attention

I seguenti integrali necessitano un po' di attenzione prima di partire a testa bassa nel calcolo.

$$\begin{aligned}
 & \mathbf{1.} \,  \int_{x=0}^{\pi/2} \, \sqrt{1 + \cos x} \, dx && \text{R: }  \\
 & \mathbf{2.} \,  \int_{x=0}^{\frac{3}{2}\pi} \, \sqrt{1 + \cos x} \, dx && \text{R: }  \\
 & \mathbf{3.} \,  \int_{x=0}^{+\infty} \, e^{-\sqrt[6]{-x}} \, dx && \text{R: }  \\
\end{aligned}$$

```

```{dropdown}
**1.**

**2.**

**3.**
L'integranda non è definita nel dominio di integrazione (ad eccezione del punto $x=0$) poiché $\sqrt{-x}$ non lo è: $-x$ è non positiva per tutti i valori di $x$ nell'intervallo di integrazione $[0,+\infty)$.

```

### Integrali impropri
```{exercise}
<!-- :label: -->
Si chiede di:
 1. dimostrare che $\int_{1}^{+\infty} \frac{1}{x^p} \, dx$ converge per $p > 1$ e diverge a $+\infty$ per $p \le 1$.
 2. dimostrare che $\lim_{t \rightarrow 0^+} \int_{t}^{1} \frac{1}{x^p} \, dx$ converge per $p < 1$ e diverge a $+\infty$ per $p \ge 1$.
 3. dimostrare che $\int_{t}^{1} e^{a x} \, dx$ converge per $a \dots$ e diverge per $a \dots$.
 4. ...
```

```{exercise}
Si chiede di discutere e valutare i seguenti integrali impropri

$$\begin{aligned}
 & \mathbf{1.} \,  \int_{x=0}^{+\infty} \frac{1}{x^2 + 9} \, dx & \text{R: } \\
 & \mathbf{2.} \,  \int_{x=0}^{+\infty} e^{-x} \cos x \, dx & \text{R: } \\
 & \mathbf{3.} \,  \int_{x=2}^{+\infty} \frac{1}{2-x} \, dx & \text{R: } \\
 & \mathbf{4.} \,  \int_{x=0}^{3} \frac{1}{\sqrt{|x-2|}}\, dx & \text{R: } \\
 & \mathbf{4.} \,  \int_{x=0}^{3} \frac{1}{x-2}\, dx & \text{R: } \\
 & \mathbf{4.} \,  \int_{x=0}^{3} \frac{1}{(x-2)^2}\, dx & \text{R: } \\
 & \mathbf{5.} \,  \int_{x=0}^{\pi/2} \frac{\sin x}{\sqrt{1-\cos x}} \, dx & \text{R: } \\
 & \mathbf{6.} \,  \int_{}^{} \, dx & \text{R: **todo**} \\
 & \mathbf{7.} \,  \int_{}^{} \, dx & \text{R: } \\
\end{aligned}$$
```

## Problemi di geometria
### Area di superfici e lunghezza di curve
```{exercise}
Calcolare l'area della superficie chiusa tra la parabola $y = - x^2 + 1$ e l'asse $x$.
```
```{exercise}
Calcolare l'area della superficie chiusa tra la parabola $y = - x^2 + 1$ e la parabola $y = x^2 - 2 x$.
```
```{exercise}
Calcolare la lunghezza del ramo di parabola $y = x^2 - 2x + 1$ tra $x \in [0,2]$.
```

### Volumi e superficie di solidi di rotazione
```{exercise}
<!-- :class: dropdown -->
Calcolare il volume e la superficie del solido generato dalla rotazione del ramo di parabola $y = 2\, x^2$, $x \in [0,2]$ attorno all'asse $y$
```
```{exercise}
<!-- :class: dropdown -->
Calcolare il volume e la superficie del solido generato dalla rotazione del ramo di parabola $y = 2\, x^2$, $x \in [0,2]$ attorno all'asse $x$. 
```
```{exercise}
<!-- :class: dropdown -->
Calcolare il volume e la superficie di un cilindro di altezza $h$ e base di raggio $r$.
```
```{exercise}
<!-- :class: dropdown -->
Calcolare il volume e la superficie di un cono retto di altezza $h$ e base di raggio $r$.
```
```{exercise}
<!-- :class: dropdown -->
Calcolare il volume e la superficie di un tronco di cono retto ottenuto dalla rivoluzione attorno all'asse $x$ del segmento $y = x + 2$, per $x = [1,4]$.
```
```{exercise}
<!-- :class: dropdown -->
Calcolare il volume e la superficie della sfera generata dalla rivoluzione della semicirconferenza centrata nell'origine di raggio $R$, $x^2 + y^2 = R^2$.
```
```{exercise}
<!-- :class: dropdown -->
Calcolare il volume e la superficie della calotta sferica sfera generata dalla rivoluzione dell'arco di circonferenza centrata nell'origine di raggio $R$, $y = \sqrt{R^2 - x^2}$, con $x = [-R, a]$, $a \le R$.
```
```{exercise}
<!-- :class: dropdown -->
Calcolare il volume e la superficie di un toro generato dalla rivoluzione del cerchio $x^2 + (y-r_0)^2 = r_1^2$, with $r_0 \ge r_1$, attorno all'asse $x$.
```

<!--
## Calcolo integrali indefiniti

$$\int \dfrac{f'(x)}{f(x)} dx$$
$$\int \frac{\sin x}{\cos^2 x} dx$$
$$\int \dfrac{f'(x)}{f(x)} dx$$
$$\int \frac{1}{a x^2 + b x + c} dx \qquad \text{con } \Delta := b^2 - 4 bc > 0$$
$$\int \frac{1}{a x^2 + b x + c} dx \qquad \text{con } \Delta := b^2 - 4 bc < 0$$

$$\int f'(x) e^{f(x)} \, dx  = e^{f(x)} + C$$
$$\int f'(x) a^{f(x)} \, dx  = \frac{a^{f(x)}}{\ln a} + C$$

$$\int f'(x) \, \cos f(x) \, dx = \sin f(x) + C$$
$$\int f'(x) \, \sin f(x) \, dx =-\cos f(x) + C$$

$$\int \sin^2 x \, dx = \dots$$
$$\int \cos^2 x \, dx = \dots$$
-->

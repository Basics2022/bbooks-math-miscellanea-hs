(infinitesimal-calculus:derivatives:problems)=
# Problemi

(infinitesimal-calculus:derivatives:problems:eval)=
## Calcolo derivate
- derivate fondamentali, regole di derivazione
```{exercise} Calcolo derivate con definizione
Calcolare le derivate delle seguenti funzioni usando la definizione

1. $f(x) = x^2$
2. $f(x) = x^3+1$
3. $f(x) = e^x$
4. $f(x) = \ln(x)$
5. $f(x) = \sin(x)$
6. $f(x) = \sqrt{x}$
7. $f(x) = \frac{x+1}{x^2-2}$

*Essendo la derivata definita come limite di un rapporto incrementale, questi esercizi possono essere visti come ulteriori esercizi sui limiti.*

```

```{dropdown} Soluzioni

**1.**

$$\begin{aligned}
  f'(x) 
  & = \lim_{\varepsilon \to 0} \frac{(x+\varepsilon)^2 - x^2}{\varepsilon} = \\
  & = \lim_{\varepsilon \to 0} \frac{x^2+ 2 x \varepsilon + \varepsilon^2 - x^2}{\varepsilon} = \\
  & = \lim_{\varepsilon \to 0} \frac{2 x \varepsilon + \varepsilon^2}{\varepsilon} = \\
  & = \lim_{\varepsilon \to 0} \left( 2 x + \varepsilon^2 \right) = 2x  \ .
\end{aligned}$$

**2.**

$$\begin{aligned}
  f'(x) 
  & = \lim_{\varepsilon \to 0} \frac{(x+\varepsilon)^3+1 - x^3-1}{\varepsilon} = \\
  & = \lim_{\varepsilon \to 0} \frac{x^3+ 3 x^2 \varepsilon + 3 x \varepsilon^2 + \varepsilon^3 + 1 - x^3 - 1}{\varepsilon} = \\
  & = \lim_{\varepsilon \to 0} \frac{3 x^2 \varepsilon + 3 x \varepsilon^2 + \varepsilon^3}{\varepsilon} = \\
  & = \lim_{\varepsilon \to 0} \left( 3 x^2 + 3 x \varepsilon + \varepsilon^2 \right) = 3 x^2  \ .
\end{aligned}$$

**3.**

$$\begin{aligned}
  f'(x)
  & = \lim_{\varepsilon \to 0} \frac{e^{x+\varepsilon} - e^x}{\varepsilon} = \\
  & = \lim_{\varepsilon \to 0} \frac{e^{x} \left( e^{\varepsilon} - 1 \right)}{\varepsilon} = \\
  & = e^{x} \ ,
\end{aligned}$$

avendo usato il [limite fondamentale](infinitesimal-calculus:limits:fund), $\lim_{\varepsilon \to 0} \frac{e^\varepsilon-1}{\varepsilon} = 1$, o analogamente, il confronto tra infinitesimi $e^{\varepsilon} - 1 \sim \varepsilon$ per $\varepsilon \to 0$.

**4.** Vedi [dimostrazione delle derivate fondamentali](infinitesimal-calculus:derivatives:fund:notes)

**5.** Vedi [dimostrazione delle derivate fondamentali](infinitesimal-calculus:derivatives:fund:notes)

**6.** Per $x > 0$,

$$\begin{aligned}
 f'(x)
 & = \lim_{\varepsilon \to 0} \frac{\sqrt{x+\varepsilon} - \sqrt{x}}{\varepsilon} = \\
 & = \lim_{\varepsilon \to 0} \frac{\left(\sqrt{x+\varepsilon} - \sqrt{x}\right)\left(\sqrt{x+\varepsilon} + \sqrt{x}\right)}{\varepsilon\left(\sqrt{x+\varepsilon} + \sqrt{x}\right)} = \\
 & = \lim_{\varepsilon \to 0} \frac{x+\varepsilon - x}{\varepsilon\left(\sqrt{x+\varepsilon} + \sqrt{x}\right)} = \\
 & = \lim_{\varepsilon \to 0} \frac{1}{\left(\sqrt{x+\varepsilon} + \sqrt{x}\right)} = \frac{1}{2 \sqrt{x}} \ .
\end{aligned}$$

**7.** Per $x \ne 2$, dove la funzione non è nemmeno continua,

$$\begin{aligned}
  f'(x)
  & = \lim_{\varepsilon \to 0} \frac{1}{\varepsilon} \left[ \frac{x+\varepsilon+1}{(x+\varepsilon)^2-2} - \frac{x+1}{x^2-2} \right] = \\
  & = \lim_{\varepsilon \to 0} \frac{1}{\varepsilon} \frac{1}{x^2-2} \left[ (x^2-2) \frac{x+\varepsilon+1}{(x+\varepsilon)^2-2} - 1 \right] = \\
  & = \lim_{\varepsilon \to 0} \frac{1}{\varepsilon} \frac{1}{x^2-2} \left[ \frac{(x^2-2)(x+\varepsilon+1) - (x+1)( (x+\varepsilon)^2-2)}{( (x+\varepsilon)^2-2)} \right] = \\
  & = \lim_{\varepsilon \to 0} \frac{1}{\varepsilon} \frac{1}{x^2-2} \left[ \frac{x^3-2 x + x^2 -2 + \varepsilon(x^2-2) - x^3 - x^2 + 2 x + 2 - 2 \varepsilon x ( x+1) - \varepsilon^2 (x+1) }{ (x+\varepsilon)^2-2} \right] = \\
  & = \lim_{\varepsilon \to 0} \frac{1}{\varepsilon} \frac{1}{x^2-2} \left[ \frac{\varepsilon (x^2-2 - 2x^2-2x) - \varepsilon^2 (x+1) }{ (x+\varepsilon)^2-2} \right] = \\
  & = \frac{-x^2-2x-2}{(x^2-2)^2} \ ,
\end{aligned}$$

che coincide con il risultato ottenibile con la [regola di derivazione](infinitesimal-calculus:derivatives:rules) del rapporto di funzioni, {eq}`infinitesimal-calculus:derivatives:rules:division`,

$$\begin{aligned}
  \frac{d}{dx} \frac{f(x)}{g(x)} 
  & = \frac{f'(x) g(x) - f(x) g'(x)}{g^2(x)} = \\
  & = \frac{(x^2-2) - (x+1)\cdot 2 x}{(x^2-2)^2} = \\
  & = \frac{-x^2 - 2x - 2}{(x^2-2)^2} \ .
\end{aligned}$$

```

```{exercise} Verifica della derivabilità di funzioni
Verificare che le seguenti funzioni siano derivabili. Dove non indicato esplicitamente, si consideri $\mathbb{R}$ come dominio.


1. $f(x) = x^2$
2. $f(x) = \sqrt{x}, \, x > 0$
3. $f(x) = e^x$
4. $f(x) = \ln(x), \, x > 0$
5. $f(x) = \sin(x)$
6. $f(x) = \cos(x)$
7. $f(x) = x^3 + \sqrt{x}, \, x > 0$
8. $f(x) = e^{-x^2}$

*Essendo la derivata definita come limite di un rapporto incrementale, e venendo richiesto di controllare che questo limite esista, anche questi esercizi possono essere visti come ulteriori esercizi sui limiti.*
```
```{exercise} Calcolo delle derivate

1. $\frac{d}{dx} \left(x^3\right)$
2. $\frac{d}{dx} \left(\sqrt{x}\right)$
3. $\frac{d}{dx} \left(e^x\right)$
4. $\frac{d}{dx} \left(\ln(x)\right)$
5. $\frac{d}{dx} \left(\sin(x)\right)$
6. $\frac{d}{dx} \left(\cos(x)\right)$
7. $\frac{d}{dx} \left(\tan(x)\right)$
8. $\frac{d}{dx} \left(x^4 + 2x^2\right)$
9. $\frac{d}{dx} \left(\sqrt{x^2 + 1}\right)$
10. $\frac{d}{dx} \left(e^{-x}\right)$
11. $\frac{d}{dx} \left(\ln(x^2)\right)$
12. $\frac{d}{dx} \left(\sin^2(x)\right)$
13. $\frac{d}{dx} \left(\cos(x^2)\right)$
14. $\frac{d}{dx} \left(\tan(\sqrt{x})\right)$
15. $\frac{d}{dx} \left(\sinh(x)\right)$
16. $\frac{d}{dx} \left(\cosh(x)\right)$
17. $\frac{d}{dx} \left(\tanh(x)\right)$
18. $\frac{d}{dx} \left(e^{x^2}\right)$
19. $\frac{d}{dx} \left(\ln(x + \sqrt{x^2 + 1})\right)$
20. $\frac{d}{dx} \left(\sin(e^x)\right)$
21. $\frac{d}{dx} \left(\cos(\ln(x))\right)$
22. $\frac{d}{dx} \left(\tan(x^3)\right)$
23. $\frac{d}{dx} \left(x e^x\right)$
24. $\frac{d}{dx} \left(x^2 \ln(x)\right)$
25. $\frac{d}{dx} \left(\frac{\sin(x)}{x}\right)$
26. $\frac{d}{dx} \left(\frac{x^2 + 1}{x^3 - 1}\right)$
27. $\frac{d}{dx} \left(\frac{\ln(x)}{\sqrt{x}}\right)$
28. $\frac{d}{dx} \left(\sinh(x^2)\right)$
29. $\frac{d}{dx} \left(\cosh(\sqrt{x})\right)$
30. $\frac{d}{dx} \left(\tanh(x + 1)\right)$

```

```{exercise} Calcolo di limiti con la regola di de l'Hopital
forme indeterminate $\frac{f(x)}{g(x)}$

1. $\lim_{x \to 0} \frac{\sin(x)}{x}$
2. $\lim_{x \to 0} \frac{1 - \cos(x)}{x^2}$
3. $\lim_{x \to \infty} \frac{\ln(x)}{x}$
4. $\lim_{x \to 0^+} \frac{\ln(x)}{x}$
5. $\lim_{x \to 0} \frac{e^x - 1}{x}$
6. $\lim_{x \to 0} \frac{\sqrt{1 + x} - 1}{x}$
7. $\lim_{x \to \infty} \frac{x}{e^x}$
8. $\lim_{x \to \infty} \frac{\ln(x^2)}{\ln(x)}$
9. $\lim_{x \to 0^+} \frac{\sin(\sqrt{x})}{\sqrt{x}}$
10. $\lim_{x \to \infty} \frac{\sinh(x)}{e^x}$

```

(infinitesimal-calculus:derivatives:problems:taylor)=
## Serie di Taylor

```{exercise}
1. Espandere la funzione $f(x) = e^x$ in serie di Taylor attorno a $x = 0$ fino al termine di ordine 4.
2. Espandere la funzione $f(x) = \sin(x)$ in serie di Taylor attorno a $x = 0$ fino al termine di ordine 5.
3. Espandere la funzione $f(x) = \ln(1 + x)$ in serie di Taylor attorno a $x = 0$ fino al termine di ordine 3.
4. Calcolare l'errore di approssimazione della serie di Taylor di ordine 4 per $f(x) = \sqrt{x}$ attorno a $x = 1$.
5. Determinare l'ordine di accuratezza del metodo numerico basato su una formula di differenze finite centrata di ordine 2, e calcolare il primo errore per il calcolo della derivata prima.
6. Determinare se il punto $x = 1$ è un massimo, un minimo o un punto di flesso per la funzione $f(x) = x^4 - 4x^3 + 6x^2$ usando la serie di Taylor attorno a $x = 1$.
7. Determinare se il punto $x = 0$ è un massimo, un minimo o un punto di flesso per la funzione $f(x) = x^3 - 3x^2 + 2x$ utilizzando la serie di Taylor attorno a $x = 0$.
8. Verificare se il punto $x = 0$ è un punto di flesso per la funzione $f(x) = x^3 - 3x + 2$ utilizzando la serie di Taylor e analizzando il comportamento di $f'(x)$, $f''(x)$ e $f'''(x)$.
9. Determinare se il punto $x = 1$ è un massimo, un minimo o un punto di flesso per la funzione $f(x) = x^3 - 6x^2 + 12x - 8$ utilizzando la serie di Taylor attorno a $x = 1$.
10. Analizzare la funzione $f(x) = x^4 - 2x^2 + x$ per determinare la natura del punto critico $x = 0$ in base alla serie di Taylor di ordine 3, determinando se è un massimo, un minimo o un punto di flesso.

```

(infinitesimal-calculus:derivatives:problems:geom)=
## Problemi di geometria
```{exercise} Problemi di geometria
**todo**
- *rette tangenti a curve*
- *curve tangenti a curve: famiglie parametriche di curve*
```

(infinitesimal-calculus:derivatives:problems:fun)=
## Studio di funzione: massimi, minimi e flessi; concavità
Le derivate permettono di aggiungere dettagli allo studio di funzione, iniziato nel capitolo precedente. Grazie alle derivate, è possibile e studiarne la tendenza e la concavità, identificabili rispettivalemnte con $f'(x)$ e $f''(x)$); le condizioni di derivata prima e/o seconda nulla definiscono poi i punti di minimo e di massimo locali di una funzione (derivabile), i punti di flesso.

```{exercise}
Si completi lo studio di funzione delle funzioni elencate nell'{numref}`ex-limits-fun-study` nel capitolo precedente, con:
- lo studio del segno, della tendenza e della concavità della funzione
- i punti di minimo e massimo locale
- i punti di flesso

```

(infinitesimal-calculus:derivatives:problems:opt)=
## Problemi di ottimizzazione
(infinitesimal-calculus:derivatives:problems:opt:abstract)=
```{exercise}
Si chiede di trovare i punti di minimo e massimo, locali e assoluti, e disegnare il grafico delle funzioni delle seguenti funzioni all'interno del dominio indicato

$$\begin{aligned}
 & \mathbf{0.} \, f(x) = x^2 - \frac{1}{2} x^3 \quad , \quad x \in [-1,2] & \text{R: } \\
 & \mathbf{1.} \, f(x) = \frac{x}{\cos x + 1}  \quad , \quad x \in \left[ -\frac{\pi}{2}, \frac{\pi}{2} \right]  & \text{R: } \\
 & \mathbf{2.} \, f(x) = \frac{\sin{x}}{x} \quad , \quad x \in \mathbb{R} & \text{R: } \\
 & \dots 
\end{aligned}$$

**todo** *Aggiungere problemi*

```

(infinitesimal-calculus:derivatives:problems:opt:geom)=
```{exercise} Problemi di geometria
Si chiede di determinare il dominio e la quantità richiesta in funzione della quantità indipendente; si trovino poi i punti di minimo e massimo, locali e assoluti, e disegnare il grafico delle funzioni delle seguenti funzioni all'interno del loro dominio. In particolare
1. Data la famiglia di rettangoli di perimetro noto $p$, si chiede di studiare l'area $A$ in funzione della lunghezza di un lato $x$, $A(x)$.
2. Data la famiglia di triangoli rettangoli di area data $A$, si chiede di studiare il perimetro $p$ in funzione della lunghezza di un suo cateto
3. Data la regione di piano chiusa delimitata tra la parabola $y = -x^2+1$ e l'asse $x$, si chiede di studiare l'area del rettangolo inscritto in fuzione della semi-lunghezza del lato parallelo all'asse $x$
4. Data la regione di piano chiusa delimitata tra la parabola $y = -x^2+1$ e l'asse $x$, si chiede di studiare l'area triangolo isoscele con vertice nell'origine degli assi e la base parallela all'asse $x$
5. Data una sfera di raggio $R$, si chiede di studiare il volume e la superficie di un cilindro retto iscritto nella sfera.
```

(infinitesimal-calculus:derivatives:problems:opt:econ)=
```{exercise} Problemi di economia
**todo**
```

(infinitesimal-calculus:derivatives:problems:newton)=
## Metodo di Newton
Si chiede di risolvere le sequenti equazioni nonlineari con il [metodo di Newton](infinitesimal-calculus:derivatives:applications:newton) (è quindi necessario riformulare il problema come la ricerca degli zeri di una funzione), dopo aver impostato la soluzione con un metodo grafico. Il metodo grafico è necessario a farsi un'idea sul numero di soluzioni da cercare, e sui valori con cui iniziare il metodo di Newton. Si chiede di concludere il procedimento a mano dopo 3 iterazioni, o quando si ottiene una soluzione con errore minore della tolleranza, qui scelta come $\tau = 0.01$. Si chiede infine di implementare il metodo con un linguaggio di programmazione a piacimento, per cercare una soluzione con tolleranza $\tau = 10^{-5}$

Le stesse equazioni vengono affrontate [con il metodo di bisezione come esercizio](infinitesimal-calculus:analysis:problems:bisection) nel capitolo sull'introduzione all'analisi.

```{exercise} Soluzione iterativa di equazioni nonlineari - Newton
1. $x^2 - 4x + 1 = 0 $
2. $x^3 - 2x = 1$
3. $\ln x = - 2 x$
4. $e^{-x} \cos x = \frac{1}{2}$
```

```{dropdown} Soluzione 1.
Si cerca uno zero della funzione $f(x) = x^2 - 4x + 1$ con il metodo di Newton. La derivata della funzione è

$$f'(x) = 2 x - 4 \ .$$

**Inizializzazione del metodo.** 

$$x_0 = 0$$

**Iterazione 0.**

$$\begin{aligned}
   f(x_0)  & =  1 \\
  f'(x_0)  & = -4 \\
\end{aligned}$$

Il valore assoluto della funzione in $x_0$ è maggiore della tolleranza, $|f(x_0)| > \tau$; il numero di iterazioni fatte è inferiore al numero di iterazioni massimo; quindi l'algoritmo procede.

$$\Delta x_0 = - \frac{f(x_0)}{f'(x_0)} = -\frac{1}{-4} = \frac{1}{4}$$

$$x_1 = x_0 + \Delta x_0 = 0 + \frac{1}{4} = \frac{1}{4}$$

**Iterazione 1.**

$$\begin{aligned}
   f(x_1)  & = \frac{1}{16} - 4 \frac{1}{4} + 1 = \frac{1}{16} \\
  f'(x_1)  & = 2 \frac{1}{4} - 4 = - \frac{7}{2}  \\
\end{aligned}$$

Il valore assoluto della funzione in $x_1$ è maggiore della tolleranza, $|f(x_1)| > \tau$; il numero di iterazioni fatte è inferiore al numero di iterazioni massimo; quindi l'algoritmo procede.

$$\Delta x_1 = - \frac{f(x_1)}{f'(x_1)} = -\frac{\frac{1}{16}}{-\frac{7}{2}} = \frac{1}{56}$$

$$x_2 = x_1 + \Delta x_1 = \frac{1}{4} + \frac{1}{56} = \frac{15}{56}$$

**Iterazione 2.**

$$\begin{aligned}
   f(x_2) 
     & = \left(\frac{15}{56}\right)^2 - 4 \frac{15}{56} + 1 = \\
     & = \frac{15^2}{56^2} - \frac{15}{14} + 1 = \\
     & = \frac{15^2}{56^2} - \frac{1}{14} = 
     \frac{15^2 - 14 \cdot 16}{14 \cdot 14 \cdot 16} = \frac{1}{3136} = 3.1\overline{8} \cdot 10^{-4} \ .
\end{aligned}$$

Il valore assoluto della funzione in $x_2$ è minore della tolleranza, $|f(x_2)| < \tau$; l'algoritmo ha raggiunto la convergenza in 2 iterazioni con la tolleranza impostata a $\tau = 0.01$, trovando un valore approssimato di uno zero della funzione in 

$$x_2 = \frac{15}{56} \ .$$

```

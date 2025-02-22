(infinitesimal-calculus:analysis:problems)=
# Problemi

## Limiti

```{exercise} Verifica/calcolo con definizione
:class: dropdown
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

(infinitesimal-calculus:analysis:problems:limits-lateral)=
```{exercise} Limiti laterali
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
5. $\lim_{x \to \infty} \frac{\ln(x)}{x}$  
6. $\lim_{x \to 0} \sin\left(\frac{1}{x}\right)$  
7. $\lim_{x \to \pi^-} \tan(x)$  
8. $\lim_{x \to \infty} \cos(x)$  
9. $\lim_{x \to 0^+} \ln(1 + x)$  
10. $\lim_{x \to \infty} e^{-x^2}$  

1. Prova che $\lim_{x \to 0} x^2 \sin\left(\frac{1}{x}\right) = 0$  
2. Prova che $\lim_{x \to 0} \frac{\sin(x)}{x^2} = 0$  
3. Mostra che $\lim_{x \to 0} x \cos\left(\frac{1}{x}\right) = 0$  
4. Dimostra che $\lim_{x \to 0} x^2 \ln(x) = 0$  
5. Prova che $\lim_{x \to 0} \frac{x^2}{\sin(x)} = 0$  
6. Dimostra che $\lim_{x \to 0} x \sin\left(\frac{1}{x}\right) = 0$  
7. Mostra che $\lim_{x \to 0} x^2 \cos\left(\frac{1}{x}\right) = 0$  
8. Prova che $\lim_{x \to 0} x \ln(x) = 0$  
9. Mostra che $\lim_{x \to 0} \frac{\sin(x)}{x} = 1$  
10. Prova che $\lim_{x \to 0} \frac{x \cos(x)}{1 + x^2} = 0$ 
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

## Metodo di bisezione
Si chiede di risolvere le sequenti equazioni nonlineari con il [metodo di bisezione](infinitesimal-calculus:continuous-fun:bisec) (è quindi necessario riformulare il problema come la ricerca degli zeri di una funzione), dopo aver impostato la soluzione con un metodo grafico. Il metodo grafico è necessario a farsi un'idea sul numero di soluzioni da cercare, e sui valori con cui iniziare il metodo di bisezione. Si chiede di concludere il procedimento a mano dopo 3 iterazioni, o quando si ottiene una soluzione con errore minore della tolleranza, qui scelta come $\tau = 0.01$. Si chiede infine di implementare il metodo con un linguaggio di programmazione a piacimento, per cercare una soluzione con tolleranza $\tau = 10^{-5}$
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

(geometry:analytic:2d:conics-cartesian)=
# Equazioni in coordinate cartesiane

## Circonferenza
Una circonferenza è il luogo dei punti equidistanti da un punto $C$ dato, detto centro della circonferenza. La distanza tra i punti del circonferenza e il centro viene definito raggio della circonferenza.

$$|P - C| = R$$

Usando un sistema di riferimento cartesiano con origine nel centro della circonferenza, l'equazione in coordinate cartesiane della circonferenza è

$$x^2 + y^2 = R^2 \ .$$

```{dropdown} Dimostrazione.
Per ricavare l'equazione di una circonferenza in coordinate cartesiane, si usa la formula per il calcolo della distanza tra punti. Se si sceglie un sistema di coordinate cartesiane con origine in $C$ s.t. $(x_C, y_C) = (0,0)$, la condizione che identifica le coordinate cartesiane $(x,y)$ dei punti di una circonferenza di raggio $R$ centrata in $C$

$$R^2 = |P-C|^2 = x^2 + y^2 \ ,$$

cioè

$$x^2 + y^2 = R^2 \ .$$
```
<!--
**Equazione in coordinate polari.** Usando un sistema di coordinate polari $\{r, \theta\}$ con origine nel centro della circonferenza, la condizione che identifica una criconferenza di raggio $R$ è

$$r = R$$
-->

## Parabola
Una parabola è il luogo dei punti equidistanti da un punto $F$ dato, detto fuoco della parabola, e da una retta $d$ detta direttrice, non passante per $F$,

$$\text{dist}(P,d) = |P - F|$$

Usando un sistema di riferimento cartesiano con origine nel vertice di una parabola e asse $y$ coincidente con il suo asse, l'equazione in coordinate cartesiane della parabola è

$$y = a \ x^2 \ ,$$

con $a = \frac{1}{2 d}$. 

```{dropdown} Dimostrazione.
**Equazione in coordinate cartesiane.**
Sia $d$ la distanza del fuoco $F$ dalla retta direttrice $d$. Per la scelta del sistema di coordinate fatta, il vertice è nell'origine $V \equiv O$, il fuoco ha coordinate $F \equiv \left(0, \frac{d}{2} \right)$, e la retta direttrice ha equazione $r: \, y = - \frac{d}{2}$.
Si usa la formula della distanza tra punti per calcolare la distanza $\overline{PF}$ tra i punti della parabola e il fuoco, mentre la formula della distanza punto-retta nel caso di retta direttrice parallela all'asse $x$ si riduce alla differenza tra le coordinate $y$ del punto e della direttrice,

$$\left( \text{dist}(P,d) \right)^2 = |P-F|^2$$

$$\begin{aligned}
  \left(y+\dfrac{d}{2}\right)^2 & = x^2 + \left(y-\dfrac{d}{2}\right)^2 \\
  y^2 + d y + \dfrac{d^2}{4}    & = x^2 + y^2 - d y + \dfrac{d^2}{4}    \\
\end{aligned}$$

e semplificando i termini $y^2$, $\frac{d^2}{4}$, si ottiene l'equazione desiderata,

$$y = \frac{1}{2 d} x^2 =: a \, x^2 \ .$$

```

## Ellisse
Una ellisse è il luogo dei punti $P$ la cui somma delle distanze da due punti $F_1$, $F_2$ dati, detti fuochi, è costante (e uguale all'asse maggiore, $2 a$),

$$|P - F_1| + |P - F_2| = 2 a \ .$$

Usando un sistema di riferimento cartesiano con origine nel centro dell'ellisse (punto medio tra i due fuochi), e asse $x$ passante per i due fuochi, l'equazione in coordinate cartesiane dell'ellisse

$$\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1 \ .$$

avendo indicato con $a$, $b$ il semiasse maggiore e minore rispettivamente.

```{dropdown} Dimostrazione.
Definite le coordinate dei due fuochi, $F_1 \equiv (-c,0)$, $F_2 \equiv (c,0)$, si usa la formula della distanza tra punti per trovare l'equazione richiesta,

$$\begin{aligned}
  |P - F_1|  & = 2 a - |P - F_2| \\
  \sqrt{(x+c)^2 + y^2} & = 2a - \sqrt{(x-c)^2 + y^2} \\
\end{aligned}$$

sviluppando i quadrati

$$x^2 + 2 c x + c^2 + y^2 = 4 a^2 - 4a \sqrt{(x-c)^2 + y^2} + x^2 - 2 c x + c^2 + y^2$$

semplificando i termini, tenendo il termine con la radice separato dagli altri termini per elevare nuovamente al quadrato,

$$4a \sqrt{(x-c)^2 + y^2} = 4 a^2 - 4 c x$$

si ottiene,

$$\begin{aligned}
  a^2 x^2-2 a^2 c x + a^2 c^2 + a^2 y^2 & = a^4 - 2 a^2 c x + c^2 x^2 \\
  (a^2 - c^2)x^2 + a^2 y^2 & = a^2 ( a^2 - c^2 ) \\
\end{aligned}$$

Considerando i punti dell'ellisse sull'asse minore, $B_{\mp} \equiv (0, \mp b)$, è facile dimostrare usando il teorema di Pitagora che $a^2 = b^2 + c^2$. Si può quindi riconoscere il quadrato del semiasse minore nell'equazione dell'ellisse e, nel caso di ellissi non-degeneri, dividere per $a^2 b^2$ per ottenere l'espressione desiderata,

$$\dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} = 1 \ .$$

```

## Iperbole
Una iperbole è il luogo dei punti $P$ la cui differenza delle distanze da due punti $F_1$, $F_2$ dati, detti fuochi, presa in valore assoluto per comprendere entrambi i rami dell'iperbole, è costante (e uguale all'asse maggiore, $2 a$),

$$\big| |P - F_1| - |P - F_2| \big| = 2 a \ .$$

Usando un sistema di riferimento cartesiano con origine nel centro dell'iperbole (punto medio tra i due fuochi), e asse $x$ passante per i due fuochi, l'equazione in coordinate cartesiane dell'ellisse

$$\frac{x^2}{a^2} - \frac{y^2}{b^2} = 1 \ .$$

avendo indicato con $a$, $b$ il semiasse maggiore e minore rispettivamente.

```{dropdown} Dimostrazione.
Definite le coordinate dei due fuochi, $F_1 \equiv (-c,0)$, $F_2 \equiv (c,0)$, si usa la formula della distanza tra punti per trovare l'equazione richiesta. Rimuovendo il modulo e considerando entrambe le possibilità di segno,

$$\begin{aligned}
  |P - F_1| & = \mp 2 a + |P - F_2| \\
  \sqrt{(x+c)^2 + y^2} & = \mp 2a + \sqrt{(x-c)^2 + y^2}  
\end{aligned}$$

sviluppando i quadrati

$$x^2 + 2 c x + c^2 + y^2 = 4 a^2 \mp 4a \sqrt{(x-c)^2 + y^2} + x^2 - 2 c x + c^2 + y^2$$

semplificando i termini, tenendo il termine con la radice separato dagli altri termini per elevare nuovamente al quadrato,

$$\pm 4a \sqrt{(x-c)^2 + y^2} = 4 a^2 - 4 c x$$

si ottiene,

$$\begin{aligned}
  a^2 x^2-2 a^2 c x + a^2 c^2 + a^2 y^2 & = a^4 - 2 a^2 c x + c^2 x^2 \\  
  (a^2 - c^2)x^2 + a^2 y^2 & = a^2 ( a^2 - c^2 )
\end{aligned}$$

A differenza del caso dell'ellisse, per un'iperbole il termine $a^2 - c^2$ è negativo, e si può quindi scrivere

$$(c^2 - a^2) x^2 - a^2 y^2 = a^2 ( c^2 - a^2 ) \ .$$

Considerando l'andamento asintotico, si trovano le equazioni dei due asintoti,

$$u = \mp \frac{\sqrt{c^2-a^2}}{a} = \mp \frac{b}{a} \ ,$$

avendo definito $b^2 = c^2 - a^2$ il semiasse maggiore.
Nel caso di iperboli non-degeneri, si può dividere per $a^2 b^2$ per ottenere l'espressione desiderata,

$$\dfrac{x^2}{a^2} - \dfrac{y^2}{b^2} = 1 \ .$$

```

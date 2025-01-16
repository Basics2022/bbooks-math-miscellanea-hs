<!--
```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
-->

(math-hs:algebra:complex)=
# Algebra complessa

Esistono collegamenti a questo capitolo da:
- la sezione sui [numeri complessi](sets:numeric:c) nel capitolo sugli [insiemi numerici](sets:numeric)
- la sezione sull'[algebra sui numeri complessi](math-hs:algebra:complex:link) nel capitolo sull'[algebra](math-hs:algebra)


In questa sezione viene definito l'insieme dei numeri complessi e alcune operazioni su di essi che permettono di introdurre l'algebra complessa. L'insieme dei numeri complessi $\mathbb{C}$ è l'insieme di quei numeri che possono essere scritti come 

$$z = x + i y \ ,$$

dove $x, y \in \mathbb{R}$ e $i$ è l'unità immaginaria definita come $i = \sqrt{-1}$.

I numeri reali sono sottoinsieme dei numeri complessi, $\mathbb{R} \subset \mathbb{C}$, composto da quei numeri complessi con parte immaginaria nulla. La definizione di operazioni e funzioni - come l'esponenziale - sui numeri complessi viene costruita come **estensione ai numeri complessi** delle definizioni di tali operazioni e funzioni sui numeri reali. Quando le funzioni e le operazioni vengono definite per i numeri complessi vengono applicate a numeri reali, si ritrovano le definizioni e i risultati già noti sull'insieme dei numeri reali.

I numeri complessi risultano utili in molti ambiti della matematica e della scienza, dalla fisica all'ingegneria:
- teorema fondamentale dell'algebra
- rappresentazione efficace delle funzioni trigonometriche, grazie all'identità di Eulero
- soluzione di equazioni differenziali
- ...

<!--
**Argomenti**
- Definizioni e rappresentazioni
- Algebra:
  - operazioni
  - equazioni e disequazioni
  - teorema fondamentale dell'algebra
-->

(math-hs:algebra:complex:def)=
## Definizioni
I numeri complessi estendono il campo dei numeri reali, $\mathbb{R} \subset \mathbb{C}$. Viene inizialmente definita l'**unità immaginaria**, $i$, come la radice quadra di $-1$,

$$i := \sqrt{-1} \ ,$$

**todo** *discutere la definizione, facendo riferimento alle* **potenze**

```{prf:definition} Numeri complessi - rappresentazione cartesiana
L'insieme dei numeri complessi, indicato con $\mathbb{C}$, è l'insieme di quei numeri che possono essere scritti come 

$$z = x + i y \ ,$$

con $x, \ y \in \mathbb{R}$. Il numero $x$ viene definito *parte reale*, il numero $y$ *parte immaginaria*.
```

(math-hs:algebra:complex:operations-0)=
## Operazioni con i numeri complessi - in forma cartesiana

- somma: $z_1 + z_2 = (x_1 + i y_1) + (x_2 + i y_2) = (x_1 + x_2) + i (y_1 + y_2)$
- prodotto: $z_1 z_2 = (x_1 + i y_1)(x_2 + i y_2) = x_1 x_2 - y_1 y_2 + i (x_1 y_2 + x_2 y_1)$
- potenza con esponente naturale, $n \in \mathbb{N}$: $z^n = (x + i y)^n = \underbrace{(x+iy) \dots (x+iy)}_{n \text{ volte}}$
- complesso coniugato: $z^* := (x+iy)^* = x - i y$
- modulo: $|z| := \sqrt{z^* z} = \sqrt{x^2 + y^2}$


```{prf:example} Prime operazioni con i numeri complessi
:class: dropdown

Dati i due numeri complessi $z_1 = 3 - 2 i$, $z_2 = -1 + 3 i$,

- la loro somma è

   $$z_1 + z_2 = (3 - 2i) + (-1 + 3 i) = (3-1) +(-2+3)i = 2 + i$$

- il loro prodotto è

   $$\begin{aligned}
    z_1 \, z_2 = (3-2i)(-1+3i) & = ( 3 \cdot (-1) + 3 \cdot (3i) - 2i \cdot (-1) - 2i \cdot (3i) ) = \\
    & = (-3 + i ( 9 + 2 ) - 2 \cdot 3 \underbrace{i^2}_{-1} ) = 3 + 11 i
   \end{aligned}$$

- la potenza cubica di $z_1$ è

   $$z_1^3 = z_1 \, z_1 \, z_1 = (3-2i)(3-2i)(3-2i) = (5-12 i)(3-2i) = -9 - 46 i$$

- il complesso coniugato di $z_1$ è

   $$z_1^* = 3 + 2 i$$

- il modulo di $z_1$ è
   
   $$|z_1| = \sqrt{z_1^* z_1} = \sqrt{(3+2 i)(3-2i)} = \sqrt{9+4} = \sqrt{13} \ .$$

```

(math-hs:algebra:complex:demoivre-euler)=
## Formula di de Moivre, esponenziale complesso e formula di Eulero

La formula di **de Moivre** è la relazione

$$(\cos x + i \sin x)^n = \cos(nx) + i \sin(nx) \ , \quad n \in \mathbb{Z} \ ,$$ (complex:demoivre)

per $x \in \mathbb{R}$ e $n \in \mathbb{Z}$. In appendice la [dimostrazione della formula di de Moivre](math-hs:algebra:complex:notes:demoivre).

L'**esponenziale di un numero complesso**, $z \in \mathbb{C}$, è definito estendendo la definizione di esponenziale per i numeri reali ai numeri complessi

$$e^z = \sum_{n = 0}^{+\infty} \frac{z^n}{n!} = \lim_{n \rightarrow +\infty} \left( 1 + \frac{z}{n} \right)^n$$ (complex:complex-exp)

Data questa definizione di esponenziale complesso, si può dimostrare la **formula di Eulero**

$$e^{i \theta} = \cos \theta + i \sin \theta \ ,$$ (complex:euler)

con $\theta \in \mathbb{R}$. Vengono riportate in appendice due [dimostrazioni della formula di Eulero](math-hs:algebra:complex:notes:euler), una usando la definizione di esponenziale complesso e la formula di de Moivre, l'altra usando le serie di Taylor.

Grazie alla formula di Eulero e alle proprietà elementari delle funzioni trigonometriche, $\cos(-\theta) = \cos \theta$, $\sin(-\theta) = -\sin \theta$, con $\theta \in \mathbb{R}$, segue

$$\begin{aligned}
 \cos \theta & = \frac{e^{i\theta} + e^{-i\theta}}{2} \\
 \sin \theta & = \frac{e^{i\theta} - e^{-i\theta}}{2i} \\
\end{aligned}$$ (complex:cos-sin)


(math-hs:algebra:complex:complex-plane)=
## Rappresentazione dei numeri complessi nel piano complesso (Argand-Gauss)
Ogni numero complesso $z \subset \mathbb{C}$ può essere associato a un punto del piano complesso $\mathbb{C}$; l'uso di coordinate cartesiane o polari per la descrizione dei punti del piano $\mathbb{R}^2$ suggerisce due tipi di rappresentazioni per un numero complesso:

- la **rappresentazione cartesiana** associa l'asse delle ascisse alla parte reale $x$ e l'asse delle ordinate alla parte immaginaria $y$,

  $$z = x + i y$$

- la **rappresentazione polare**; usando la legge di trasformazione tra coordinate polari $(r, \theta)$ e coordinate cartesiante $(x,y)$

  $$\begin{cases}
    x = r \cos \theta \\
    y = r \sin \theta
  \end{cases}$$

  e la [formula di Eulero](math-hs:algebra:complex:notes:euler), $e^{i \theta} = \cos \theta + i \sin \theta$, è possibile scrivere un numero complesso in forma polare,

  $$z = x + i y = r \cos \theta + i r \sin \theta = r \left( \cos \theta + i \sin \theta \right) = r e^{i \theta} \ .$$


```{note}
Le due rappresentazioni non sono equivalenti. Mentre la rappresentazione cartesiana permette di creare una relazione biunivoca tra i numeri complessi $z = x + i \, y$ e i punti nel piano $(x, \ y)$, la rappresentazione polare assegna infiniti numeri complessi, seppur di uguale valore $r \, e^{i \theta} = r \, e^{i (\theta + n \, 2 \pi)}$, con $n \in \mathbb{Z}$ allo stesso punto nello spazio.
```

(math-hs:algebra:complex:operations)=
## Operazioni con i numeri complessi
Si rivisitano ora le operazioni già presentate, mostrando la convenienza della rappresentazione polare per prodotti e potenze.

### Somma e prodotto
**Somma.** La somma di due numeri complessi è il numero complesso

  $$z_1 + z_2 = (x_1 + x_2) + i(y_1 + y_2)$$

**Prodotto.** Il prodotto tra due numeri complessi $z_1 = x_1 + i y_1 = r_1 e^{i \theta_1}$, $z_2 = x_2 + i y_2 = r_2 e^{i \theta_2}$, è il numero complesso $z_1 \cdot z_2 \in \mathbb{C}$ che può essere calcolato usando la proprietà distributiva tra somma e prodotto e la proprietà degli esponenti,

  $$\begin{aligned}
    z_1 \, z_2 
    & = r_1 \, r_2 e^{i(\theta_1 + \theta_2)} = \\
    & = (x_1 + i y_1 ) (x_2 + i y_2) = (x_1 x_2 - y_1 y_2)+i(x_1 y_2 + y_1 x_2) \\
  \end{aligned}$$

### Complesso coniugato e modulo
**Complesso coniugato.** Il complesso coniugato $z^*$ di un numero compless $z \in \mathbb{C}$ è il numero complesso con stessa parte reale e parte immaginaria opposta. Analogamente ha stesso modulo e argomento (definito tra $-\pi$ e $\pi$) opposto

  $$z^* := x - i y = r e^{-i\theta} $$

E' immediato [verificare](math-hs:algebra:complex:problems:operations:cc:re-im) le seguenti identità

$$\begin{aligned}
  \text{re}\{ z \} & = x = \frac{z + z^*}{2} \\
  \text{im}\{ z \} & = y = \frac{z - z^*}{2i} \\
\end{aligned}$$ (complex:cc:re-im)

**Valore assoluto.** Il valore assoluto di un numero complesso è uguale a
  
  $$\begin{aligned}
    |z| & := \sqrt{z^* z} = \\
    & = \sqrt{(x-iy)(x+iy)} =  \sqrt{x^2 + y^2} = \\
    & = \sqrt{r e^{-i\theta} r e^{i\theta}} = r
  \end{aligned}$$

### Potenze e radici
**Potenza.** Si presenta l'elevamento a potenza di un numero complesso,

$$z = A e^{i (\alpha + 2 \pi n)} \ , \quad n \in \mathbb{Z} \ ,$$

ricordando l'arbitrarietà nella rappresentazione in forma polare. Si rimanda all'appendice per il caso generale, mentre qui si presentano i casi con:

#### Potenza intera, $p \in \mathbb{Z}$.

  $$z^p = A^p e^{i ( p \alpha + 2 \pi n p )} = A^{p} e^{i ( p \alpha + 2 \pi m )} \ , \quad m \in \mathbb{Z}$$

#### Radici o potenza $\frac{1}{p}, \ p \in \mathbb{Z}$
La radice $p$-esima intera, $p \in \mathbb{Z}$, di un numero complesso può essere interpretata come la potenza con esponente $\frac{1}{p}, \ p \in \mathbb{Z}$,

$$z^{\frac{1}{p}} = \left( r e^{i ( \theta + n 2 \pi ) } \right)^\frac{1}{p} = r^{\frac{1}{p}} e^{i \left(\frac{\theta}{p} + 2 \pi \frac{n}{p} \right)} \ , \quad n = \{ 0, 1, \dots, p-1\}$$

e quindi corrisponde ai $p$ numeri complessi con modulo $r^{\frac{1}{p}}$ e argomenti $\frac{\theta}{p} + 2 \pi \frac{n}{p}$.

#### Potenza razionale
La potenza con esponente razionale, $p, q \in \mathbb{Z}$, $q \ne 0$, $\frac{p}{q} = r + \frac{p'}{q}$, con $p' < q$ e $\frac{p'}{q}$ irriducibile, è ben definita per ogni numero complesso a differenza di quanto accade sui numeri reali.



  $$z^{\frac{p}{q}} = A^{\frac{p}{q}} e^{i \frac{p}{q} (\alpha + 2 \pi n)} = A^{\frac{p}{q}} e^{i (\frac{p}{q} \alpha + \frac{p'}{q} 2 \pi n)}$$

  Esistono quindi $q$ risultati distinti per $n \in \{ 0, 1, 2, \dots, q-1 \}$.

### Altre operazioni
**Potenza con esponente irrazionale.** La potenza di un numero complesso $z^p$ con esponente reale irrazionale $p \in \mathbb{R} \backslash \mathbb{Q}$ produce gli infiniti numeri complessi con modulo $r^p$ e *argomento $p \theta + 2 \pi n p$ qualsiasi, per $n \in \mathbb{Z}$*

**Potenza qualsiasi.** Per la discussione di una [potenza qualsiasi](math-hs:algebra:complex:notes:fun:power) di un numero complesso si rimanda alla sezione sulle funzioni di variabile complessa in appendice.

**Esponenziale.** Per la discussione dell'[esponenziale complesso](math-hs:algebra:complex:notes:fun:exp) si rimanda alla sezione sulle funzioni di variabile complessa in appendice.

**Logaritmo.** Per la discussione del [logaritmo complesso](math-hs:algebra:complex:notes:fun:log) si rimanda alla sezione sulle funzioni di variabile complessa in appendice.


(math-hs:algebra:complex:fund-thm)=
## Teorema fondamentale dell'algebra
Ogni polinomio a coefficienti reali (**todo** o anche complessi) di grado $n$, $p_n(x) = a_n x^n + a_{n-1} x^{n-1} + \dots a_1 x + a_0$ può essere fattorizzato come prodotto di $n$ binomi

$$p_n(x) = a_n ( x - z_1 )( x - z_2 )\dots( x - z_n) \ ,$$

e i numeri $z_k \in \mathbb{C}$, $k = 1:n$, sono chiamati **zeri** del polinomio.

Come diretta conseguenza, ogni equazione polinomiale di grado $n$, $p_n(x) = 0$, ammette $n$ soluzioni complesse coincidenti con gli zeri $z_k$ del polinomio $p_n(x)$.

(math-hs:algebra:complex:geometry-2d)=
## Numeri complessi e geometria nel piano euclideo
La [rappresentazione cartesiana]() dei numeri complessi $z = x + i y$ crea un legame biunivoco tra i numeri complessi e i punti di un piano. Quindi è possibile affrontare la geometria analitica nel piano usando i numeri complessi:

### Posizione di un punto nel piano
Una volta scelto un sistema di coordinate regolari, la posizione di un punto $P$ nel piano è identificata dai valori delle sue coordinate. Utilizzando un sistema di coordinate cartsiane o polari il punto $P$ è identificato dalle coppie di valori $x_P, y_P$ o $r_P, \theta_P$ rispettivamente. Associando l'asse $x$ all'asse dei numeri reali e l'asse $y$ all'asse dei numeri immaginari, si può associare il punto $P \equiv (x_P, y_P)$ in maniera biunivoca al numero complesso $z_P = x_P + i y_P$, mentre alle coordinate polari corrisponde la rappresentazione polare,

$$z_P = x_P + i y_P = r e^{i \theta} \ .$$

### Distanza tra punti
La distanza tra due punti nel piano può essere facilmente calcolata usando le coordiante cartesiane dei punti, tramite il teorema di Pitagora,

$$|P_2 - P_1|^2 = (x_2 - x_1)^2 + (y_2 - y_1)^2 \ ,$$

ed equivale al valore del numero complesso $z_2 - z_1$,

$$|z_2 - z_1|^2 = ((x_2-x_1) + i(y_2-y_1))^*((x_2-x_1) + i(y_2-y_1)) = (x_2 - x_1)^2 + (y_2 - y_1)^2 $$

### Curva nel piano
Una curva nel piano può essere rappresentata in forma esplicita, implicita o parametrica. Usando i numeri complessi, 
- la forma implicita dell'equazione di una curva è una relazione della forma $F(z)=0$, $F_c(x, y) = 0$ o $F_p(r, \theta) = 0$, ossia una funzione che lega i due parametri che definiscono un numero complesso, come per esempio parte reale e immaginaria o modulo e argomento; in alcuni casi, è possibile esprimere uno di questi parametri in funzione dell'altro nella forma esplicita
- la forma parametrica dell'equazione di una curva può essere espressa come un numero complesso funzione di un parametro, come ad esempio

   $$z(s) = x(s) + i y(s) =  r(s) e^{i \theta(s)} \ .$$

   Questo equivale a fornire l'espressione parametrica della curva in termini delle coordinate cartesiane o polari.

### Intersezioni di curve
Date due curve espresse in forma parametrica, $\gamma_1: z_1(s)$, $\gamma_2: z_2(r)$, gli eventuali punti di intersezione soddisfano la condizione $z_1(\bar{s}) = z_2(\bar{r})$, cioè si ricerca il valore dei parametri $s$, $r$ per i quali i punti delle curve hanno le stesse coordinate.

Se le curve sono espresse in forma implicita, $\gamma_1: F_1(z) = 0$, $\gamma_2: F_2(z) = 0$, il problema della ricerca delle intersezioni si riduce alla soluzione del sistema di due equazioni in due incognite (due incognite poiché un numero complesso $z$ è identificato da due parametri) per trovare il valore dei numeri complessi $\bar{z}$ tali che 

$$\begin{cases} F_1(\bar{z}) & = 0 \\ F_2(\bar{z}) & = 0 \end{cases}$$

### Retta nel piano
**Definizione 1 - Passaggio per un punto e una direzione.** E' facile definire la retta passante per un punto con una direzione data in forma parametrica,

 $$z(s) = z_0 + s v \ ,$$

 con $z_0 = x_0 + i y_0$ nummero complesso che identifica il punto $P_0$ e $v = v_x + i v_y$ numero complesso che identifica la direzione della retta $\vec{v} = v_x \hat{x} + v_y \hat{y}$.

**Definizione 2 - Luogo dei punti equidistante da due punti distinti.** La definizione può essere tradotta nell'equazione in forma implicita,

   $$|z - z_1| = |z - z_2| \ ,$$

l'uguaglianza della distanza dei punti della retta identificati dai numeri complessi $z$ dai due punti scelti, identificati dai numeri complessi $z_1$, $z_2$.

### Posizioni reciproche rette, distanza punto-retta, coniche ed altro
In questo capitolo non si continua lo studio in maniera sistematica della geometria nel piano usando i numeri complessi.

Ci si limita a:
- ricordare che le coordinate cartesiane e polari possono essere ricondotte a un numero complesso

  $$
  \begin{cases} x = r \cos \theta = \text{re}\{z\} \\ y = r \sin \theta = \text{im}\{z\} \end{cases}
  \quad , \quad
  \begin{cases} r = |z|            \\ \theta = \text{arg}\{z\} \end{cases}
  $$

- osservare che, dati i due numeri complessi $z_1 = x_1 + i y_1$, $z_2 = x_2 + i y_2$, il prodotto $z_1^* z_2$ contiene sia l'espressione del prodotto interno sia del prodotto vettore dei due vettori $\vec{v}_1 = x_1 \hat{x}_1 + y_1 \hat{y}_1$, $\vec{v}_2$,

  $$\begin{aligned}
    z_1^* z_2 & = (x_1 - i y_1) (x_2 + i y_2) = \\
              & = (x_1 x_2 + y_1 y_2) + i(x_1 y_2 - x_2 y_1) = \\
              & = \vec{v}_1 \cdot \vec{v}_2 + i \hat{z} \cdot \vec{v}_1 \times \vec{v}_2
  \end{aligned}$$

- le equazioni delle coniche possono essere ricavate:
  - dalle definizioni in termini di distanza di punti dai fuochi
    - circonferenza: $|z-z_0| = R$
    - parabola:      $|z-z_0| = | \text{im}\{z\} - y_d|$, con direttrice parallela ad asse $x$, $z_d = i y_d$
    - ellisse:       $|z-z_1| + |z-z_2| = 2a$
    - iperbole:      $||z-z_1| - |z-z_2|| = 2a$

  - in termini di eccentricità, $\frac{\text{dist}(P,F)}{\text{dist}(P,d)} = e$

    $$\frac{|z - z_F|}{|\text{re}(z) - x_d|} = e \ ,$$

    con fuoco in $F$ e direttrice parallela all'asse $y$, $d: x = x_d$.

**todo** *rimandare a esercizi*

(math-hs:algebra:complex:equations)=
## Equazioni e disequazioni con i numeri complessi
Le equazioni e le disequazioni con i numeri complessi possono essere ricondotti a problemi che coinvolgono una coppia di variabili reali, tipicamente le componenti reale e immaginaria, o il modulo e l'argomento, che descrivono il piano dei numeri complessi.

**todo**


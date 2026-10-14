<!--
```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
-->

(math-hs:algebra:vector:def)=
# Defizioni e operazioni

(math-hs:algebra:vector:def:vector-space)=
## Definizione di spazio vettoriale

Uno spazio vettoriale è una struttura algebrica formata da:
- un insieme $V$, i cui elementi sono chiamati **vettori**
- un campo $K$ (di solito quello dei numeri reali $\mathbb{R}$ o complessi $\mathbb{C}$), i cui elementi sono chiamati **scalari**
- due operazioni chiuse rispetto all'insieme $V$ chiamate:
  - somma vettoriale
  - moltiplicazione per uno scalare,
  che soddisfano determinate proprietà che verranno elencate in seguito. 

Un'**operazione** è **chiusa** rispetto a un'insieme, se il risultato delle operazioni è un elemento dell'insieme.

Nel seguito del capitolo verranno considerati solo campi vettoriali definiti sui numeri reali, per i quali $K = \mathbb{R}$.


(math-hs:algebra:vector:def:operations)=
## Operazioni sui vettori: definizione di spazio vettoriale

- La **somma** tra due vettori $\mathbf{v}$, $\mathbf{w} \, \in V$ è il vettore

$$\mathbf{v} + \mathbf{w} \in V$$

- La **moltiplicazione per uno scalare** di un vettore $\mathbf{v} \in V$ per uno scalare $\alpha \in K$ è il vettore 

$$\alpha \mathbf{v} \in V$$

Queste due operazioni sono **chiuse** rispetto all'insieme dei vettori $V$, cioè il loro risultato è ancora un vettore appartenente a $V$. Queste due operazioni hanno le seguenti proprietà.

```{dropdown} Proprietà delle operazioni

- proprietà commutativa della somma

$$\mathbf{u} + \mathbf{v} = \mathbf{v} + \mathbf{u} \qquad \forall \mathbf{u}, \mathbf{v} \in V$$

- proprietà associativa della somma

$$(\mathbf{u} + \mathbf{v}) + \mathbf{w} = \mathbf{u} + ( \mathbf{v} + \mathbf{w} ) \qquad \forall \mathbf{u}, \mathbf{v}, \mathbf{w} \in V$$

- esistenza dell'elemento neutro della somma

$$\exists \mathbf{0}_V \in V \qquad s.t. \qquad \mathbf{u} + \mathbf{0}_V = \mathbf{u} \qquad \forall \mathbf{u} \in V$$

- esistenza dell'elemento inverso della somma

$$\forall \mathbf{u} \in V \ \exists \mathbf{u}' \in V \qquad s.t. \qquad \mathbf{u} + \mathbf{u}' = \mathbf{0}$$

- proprietà associativa del prodotto scalare

$$(\alpha \beta) \mathbf{u} = \alpha ( \beta \mathbf{u} ) \qquad \forall \alpha, \beta \in K, \ \mathbf{u} \in V$$

- esistenza dell'elemento neutro della moltiplicazione per uno scalare

$$\exists 1 \in K \qquad s.t. \qquad 1 \, \mathbf{u} = \mathbf{u} \quad \forall \mathbf{u} \in V$$

- proprietà distributiva della moltiplicazione per uno scalare

$$(\alpha + \beta) \mathbf{u} = \alpha \mathbf{u} + \beta \mathbf{u}$$

$$\alpha (\mathbf{u} + \mathbf{v}) = \alpha \mathbf{u} + \alpha \mathbf{v} $$
```

(math-hs:algebra:vector:def:examples)=
## Esempi


**$n$-uple ordinata di numeri reali.** Gli elementi $\mathbf{u} = (u_1, u_2, \dots, u_N)$ formano uno spazio vettoriale sui numeri reali, con le operazioni di somma e moltiplicazione per uno scalare con la seguenti definizioni:

- somma:

$$
  \mathbf{u} + \mathbf{v} = (u_1, u_2, \dots, u_N) + (v_1, v_2, \dots, v_N) = (u_1+v_1, u_2+v_2, \dots, u_N+v_N)
$$ (eq:vector:operations:nuples:sum)

- moltiplicazione per uno scalare:

$$
  \alpha \mathbf{u}       = \alpha (u_1, u_2, \dots, u_N)                   = (\alpha u_1, \alpha u_2, \dots, \alpha u_N)
$$ (eq:vector:operations:nuples:mult)

```{prf:example} $n$-upla di numeri reali ordinati
:label: ex-vectors-nuple

...

```

**Vettori posizione di uno spazio euclideo.**
Fissato un punto $O$ in uno spazio euclideo, si può associare a ogni punto $P$ nello spazio il segmento orientato $\overrightarrow{OP}$. L'insieme dei segmenti orientati associati a ogni punto dello spazio forma uno spazio vettoriale di

* somma vettoriale
* moltiplicazione per uno scalare

discusse in ... 

```{prf:example} Vettori posizione in uno spazio euclideo.
:label: ex-vectors-euclidean-space

...

```

**Polinomi di grado minore o uguale a $n$.**
L'insieme dei polinomi di grado minore o uguale a $n$,

$$\mathbf{u} = u_n x^n + u_{n-1} x^{n-1} + \dots u_1 x + u_0 \ ,$$

forma uno spazio vettoriale con le usuali definizioni di somma e moltiplicazione per uno scalare valide per i polinomi.

```{prf:example} Polinomi di grado minore o uguale a $n$.
:label: ex-vectors-polynomials

```

```{prf:example} Spazio vettoriale delle traslazioni.
:label: ex-vectors-euclidean-space-translation

In uno spazio euclideo, l'insieme delle traslazioni forma uno spazio vettoriale. 

**todo**...

```


(math-hs:algebra:vector:def:basis)=
## Base di uno spazio vettoriale

**Combinazione lineare.** Una combinazione lineare di $D$ vettori $\{ \mathbf{u}_i \}_{i=1:D}$ è data dalla somma 

$$\alpha_1 \mathbf{u}_1 + \dots + \alpha_D \mathbf{u}_D \ ,$$

dove i coefficienti scalari $\alpha_i$ vengono definiti coefficienti della combinazione lineare.

**Vettori linearmente indipendenti.** Un insieme di vettori $\{ \mathbf{u}_i \}_{i=1:D}$ è linearmente indipendente se non è possibile esprimere uno di questi vettori in funzione degli altri. Un'altra definizione equivalente definisce un insieme di vettori linearmente indipendente se vale

$$\alpha_1 \mathbf{u}_1 + \dots + \alpha_D \mathbf{u}_D = \mathbf{0} \qquad \rightarrow \qquad \alpha_1 = \dots = \alpha_D = 0 \ ,$$

cioè una combinazione lineare di questi vettori è uguale al vettore nullo solo se tutti i coefficienti della combinazione lineare sono nulli.

**Base di uno spazio vettoriale.** In uno spazio vettoriale, ogni vettore può essere rappresentato come una combinazione lineare di un insieme di vettori dello spazio, opportunamente scelti. Il numero minimo di questi vettori è definita come **dimensione** dello spazio vettoriale.

```{prf:example} Vettori di una base. Base canonica delle terne ordinate di numeri

L'insieme 

$$\mathcal{B} = \{ (1,0,0), (0,1,0), (0,0,1) \}$$ 

forma una base dello spazio lineare delle terne ordinate di numeri reali, che ha quindi dimensione 3. Infatti, ogni terna puà essere rappresentata come una e una sola combinazione lineare delle tre terne. Ad esempio, usando le operazioni sulle terne {eq}`eq:vector:operations:nuples:sum` di somma di terne, e {eq}`eq:vector:operations:nuples:mult` di moltiplicazione di una terna per uno scalare, la terna $(2.5, 1.2, -3)$ può essere scritta come

$$(2.5, 1.2, -3) = 2.5 \, (1,0,0) + 1.2 \, (0,1,0) - 3 \, (0,0,1) \ .$$


```

```{prf:example} Vettori di una base. Base cartesiana in uno spazio euclideo 2-dimensionale

Una base cartesiana di uno spazio euclideo 2-dimensionale - ad esempio un piano, con un punto scelto come origine - è formata da due vettori di lunghezza unitaria tra di loro perpendicolari. Partendo da un sistema di coordinate cartesiane $Oxy$, è comune scegliere la base

$$\mathcal{B} = \{ \hat{\mathbf{x}}, \hat{\mathbf{y}} \} \ ,$$

formata dai due vettori di lunghezza unitaria allineati agli assi. Ogni punto $P$ del piano può quindi essere rappresentato con il vettore posizione

$$\mathbf{r}_P = x_P \hat{\mathbf{x}} + y_P \hat{\mathbf{y}} \ ,$$

con $x_P$, $y_P$ le coordinate cartesiane del punto $P$ nel sistema di coordinate cartesiane scelto. Queste coordinate non ci dicono altro che di quanto bisogna muoversi a destra dell'origine (se $x_P > 0$, altrimenti a sinistra), e verso l'alto (se $y_P > 0$, altrimenti verso il basso) per arrivare al punto $P$.


```

```{prf:example} Vettori di una base. Polinomi di grado minore o uguale a 2

L'insieme

$$\mathcal{B}_1 = \{ 1, x, x^2  \} $$

forma una base dello spazio lineare dei polinomi di grado minore o uguale a 2. L'insieme 

$$\mathcal{B}_2 = \{ 1+x, 1-x, x^2 \}$$

forma un'altra base dello stesso spazio lineare. Ad esempio, il polinomio $p(x) = 2 - 3 x + x^2$ può essere scritto

* usando la prima base come

   $$p(x) = 2 \cdot 1 - 3 \cdot x + 1 \cdot x^2 \ .$$

* usando la seconda base come
   
   $$\begin{aligned}
     p(x) = 2 - 3  x + x^2 = - \frac{1}{2} \cdot ( 1 + x ) + \frac{5}{2} \cdot ( 1 - x ) + 1 \cdot x^2
   \end{aligned}$$

   Il calcolo dei coefficienti viene mostrato nel seguente esercizio.

Lo stesso polinomio viene quindi rappresentato come combinazione lineare dei polinomi di due basi diverse. Cambiando la base, e non dovendo cambiare il polinomi $p(x)$, i coefficienti delle due rappresentazioni sono diverse. Questo è un altro esempio di **invarianza** dei vettori (qui il polinomio $p(x)$), alla scelta della base in cui vengono rappresentati.

```

````{exercise}
:label: ex-vectors-polynomials

Calcolare i coefficienti del polinomio $p(x) = 2 - 3 x + x^2$ espresso nella base $\mathcal{B}_2 = \{ 1+x, 1-x, x^2 \}$.

**Suggerimento.** Scrivere il polinomio $p(x) = 2 - 3 x + x^2 = a_1 ( 1 + x ) + a_2 ( 1 - x ) + a_3 x^2$, e confrontare i coefficienti dei monomi di grado diverso.

```{dropdown} Soluzione

$$\begin{aligned}
  p(x)
  & = 2 - 3 x + x^2 = \\
  & = a_1 ( 1 + x ) + a_2 ( 1 - x ) + a_3 x^2 = \\
  & = ( a_1 + a_2 ) + ( a_1 - a_2 ) x + a_3 x^2 \ 
\end{aligned}$$

Si può scrivere quindi il sistema lineare in tre equazioni in tre incognite

$$\left\{
\begin{aligned}
  & a_1 + a_2 = 2 \\
  & a_1 - a_2 = -3 \\
  & a_3 = 1 \ ,
\end{aligned} 
\right.$$

la cui soluzione è

$$a_1 = -\frac{1}{2} \quad , \quad a_2 = \frac{5}{2} \quad , \quad a_3 =  1 \ .$$

```

**R:** $a_1 = - \frac{1}{2}$, $a_2 = \frac{5}{2}$, $a_3 = 1$.

````

```{prf:example} Vettori che non formano una base - 1. Numero minimo di vettori non linearmente indipendenti

L'insieme di 2 vettori

$$\mathcal{I} = \{ \hat{\mathbf{x}}, 2 \hat{\mathbf{x}} \} \ , $$ 

non forma una base dello spazio euclideo 2-dimensionale - il piano - poiché non è possibile rappresentare nessun vettore che abbia una componente in direzione $y$. Ad esempio, non è possible rappresentare il vettore 

$$\mathbf{v} = 2 \hat{\mathbf{x}} + 5 \hat{\mathbf{y}} \ .$$

```

```{prf:example} Vettori che non formano una base - 2. Numero di eccessivo di vettori


L'insieme di 3 vettori

$$\mathcal{I} = \{ \mathbf{b}_1, \mathbf{b}_2, \mathbf{b}_3 \} = \{ \hat{\mathbf{x}}, \hat{\mathbf{x}} + \hat{\mathbf{y}}, \hat{\mathbf{x}} - \hat{\mathbf{y}} \} \ , $$ 

non forma una base dello spazio euclideo 2-dimensionale - il piano - poiché non è un insieme di 3 vettori, che quindi non possono essere linearmente indipendenti: non esiste una rappresentazione unica di ogni vettore del piano, ma ne esistono infinite.

Ad esempio, il vettore $\mathbf{v} = 3 \hat{\mathbf{x}} + 2 \hat{\mathbf{y}}$ può essere scritto come

$$\begin{aligned}
  \mathbf{v} 
  & = \mathbf{b}_1 + 2 \mathbf{b}_2 = \\
  & = 5 \mathbf{b}_1 - 2 \mathbf{b}_3 = \\
  & = 3 \mathbf{b}_1 + \mathbf{b}_2 - \mathbf{b}_3 = \\
  & = \dots
\end{aligned}$$

o in altre infinite maniere. Poiché non esiste un'unica rappresentazione dei vettori posizione $\mathbf{v}$ del piano come combinazione lineare dei vettori di $\mathcal{I}$, l'insieme $\mathcal{I}$ non è una base dello spazio.

Prendendo due qualsiasi dei tre vettori, si crea una base dello spazio. Si lascia come esercizio trovare la rappresentazione di $\mathbf{v}$ nelle tre basi possibili. L'esercizio {ref}`ex-vectors-euclidean-1` mostra il procedimento per la base $\mathcal{B} = \{ \mathbf{b}_1, \mathbf{b}_2 \}$.


```

````{exercise}
:label: ex-vectors-euclidean

Scrivere il vettore $\mathbf{b}_3$ come combinazione lineare dei vettori $\mathbf{b}_1$, $\mathbf{b}_2$.

**Suggerimento.** Scrivere il vettore $\mathbf{b}_3$ come combinazione lineare $\mathbf{b}_3 = a_1 \mathbf{b}_1 + a_2 \mathbf{b}_2$ e calcolare i coefficienti dal confronto delle componenti in $\hat{\mathbf{x}}$, $\hat{\mathbf{y}}$.

```{dropdown} Soluzione

Il confronto delle componenti $x$, $y$ della relazione

$$\begin{aligned}
  \mathbf{b}_3
  & = 1 \cdot \hat{\mathbf{x}} - 1 \cdot \hat{\mathbf{y}} = \\
  & = a_1 \mathbf{b}_1 + a_2 \mathbf{b}_2 = \\
  & = a_1 \cdot \hat{\mathbf{x}} + a_2 \cdot ( \hat{\mathbf{x}} + \hat{\mathbf{y}} ) = \\
  & = \hat{\mathbf{x}} ( a_1 + a_2 ) + \hat{\mathbf{y}} ( 0 + a_2 ) \ ,
\end{aligned}$$

produce il sistema lineare di due equazioni in due incognite

$$\left\{\begin{aligned}
  & a_1 + a_2 = 1 \\
  &       a_2 =-1 \ ,
\end{aligned}\right.$$

la cui soluzione è

$$a_1 = 2 \quad , \quad a_2 = - 1 \ .$$

Il vettore $\mathbf{b}_3$ può quindi essere scritto come $\mathbf{b}_3 = 2 \mathbf{b}_1 - \mathbf{b}_2$.

```

**R:** $\mathbf{b}_3 = 2 \mathbf{b}_1 - \mathbf{b}_2$.


````

```{tip}

L'esercizio {ref}`ex-vectors-euclidean` è identico all'esercizio {ref}`ex-vectors-polynomials`. Questa analogia dovrebbe suggerire che oggetti apparentemente molto diversi possono essere rappresentati nell'ambito degli spazi lineari (o vettoriali).

```

````{exercise}
:label: ex-vectors-euclidean-1

Calcolare l'espansione del vettore $\mathbf{v} = 3 \hat{\mathbf{x}} + 2 \hat{\mathbf{y}}$ usando i vettori della base - questa sì che è una base -

$$\mathcal{B} = \{  \mathbf{b}_1, \mathbf{b}_2 \} = \{ \hat{\mathbf{x}}, \hat{\mathbf{x}} + \hat{\mathbf{y}} \} \ .$$

```{dropdown} Soluzione

$$\begin{aligned}
  \mathbf{v} & = a_1 \mathbf{b}_1 + a_2 \mathbf{b}_2 \\
  3 \hat{\mathbf{x}} + 2 \hat{\mathbf{y}} & = a_1 \hat{\mathbf{x}} + a_2 (\hat{\mathbf{x}} + \hat{\mathbf{y}} ) \ ,
\end{aligned}$$

e confrontando le componenti $x$, $y$ si ottiene il sistema lineare

$$\left\{\begin{aligned}
  & 3 = a_1 + a_2 \\
  & 2 = a_2 \ ,
\end{aligned}\right.$$

la cui soluzione è

$$a_1 = 1 \quad , \quad a_2 = 2 \ .$$



```

**R:** $\mathbf{v} = 3 \hat{\mathbf{x}} + 2 \hat{\mathbf{y}} = 1 \hat{\mathbf{x}} + 2 (\hat{\mathbf{x}} +\hat{\mathbf{y}}) = \mathbf{b}_1 + 2 \mathbf{b}_2$.

````

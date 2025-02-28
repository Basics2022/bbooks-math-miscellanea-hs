
(math-hs:algebra:linear)=
# Algebra lineare

In questa sezione vengono presentati gli argomenti dell'algebra lineare che riguardano la soluzione di sistemi di equazioni lineari, per i quali si discutono le condizioni di esistenza e unicità della soluzione e dei quali viene fornita una rappresentazione grafica. Viene introdotto il formalismo matriciale, e le operazioni algebriche elementari sulle matrici; vengono date le definizioni  le matrici vengono interpretate come funzioni lineari (applicazioni lineari), e utilizzate per formulare le condizioni di esistenza e unicità delle soluzioni di sistemi lineari (teorema di Rouché-Capelli).

(math-hs:algebra:linear:intro)=
## Introduzione
<span style="color:red">L'algebra lineare è fondamentale per studiare matrici, sistemi lineari e trasformazioni geometriche. Questo capitolo esplora le matrici, i determinanti e la risoluzione dei sistemi.</span>

## Sistemi lineari e formalismo matriciale
Un sistema di $m$ equazioni lineari in $n$ incognite $\{ x_1 \}$,

$$\begin{cases}
 a_{11} x_1 + a_{12} x_2 + \dots + a_{1n} x_n & = b_1 \\
 \dots \\
 a_{m1} x_1 + a_{m2} x_2 + \dots + a_{mn} x_n & = b_m \\
\end{cases}$$

può essere riscritto usando il formalismo matriciale come

$$
\begin{bmatrix} a_{11} & a_{12} & \dots & a_{1n} \\ \dots & \dots & \dots & \dots \\ a_{m1} & a_{m2} & \dots & a_{mn} \end{bmatrix} \begin{bmatrix} x_1 \\ x_2 \\ \dots \\ x_n \end{bmatrix} = \begin{bmatrix} b_1 \\ \dots \\ b_m \end{bmatrix}
\qquad , \qquad
\mathbf{A} \mathbf{x} = \mathbf{b} \ ,
$$

avendo raccolto i coefficienti $a_{ij}$ nella matrice $\mathbf{A} \in \mathbb{R}^{m,n}$, una tabela di $m$ righe e $n$ colonne, le incognite $x_j$ nella $n$-upla $\mathbf{x} \in \mathbb{R}^n$ e i coefficienti $b_i$ nella $m$-upla $\mathbf{b} \in \mathbb{R}^m$, organizzate in un *vettore colonna*. Il prodotto matrice-vettore colonna $\mathbf{A} \mathbf{x}$ rimane definito dall'equivalenza delle diverse espressioni dello stesso sistema lineare.

(math-hs:algebra:linear:matrices)=
## Matrici

**Definizione.** Una matrice $\mathbf{A} \in \mathbb{R}^{m,n}$ è una tabella 2-dimensionale di numeri reali con $m$ righe e $n$ colonne,

$$
\mathbf{A} =
\begin{bmatrix}
a_{11} & a_{12} & \dots & a_{1n} \\
\dots  & \dots  & \dots & \dots  \\
a_{m1} & a_{m2} & \dots & a_{mn}
\end{bmatrix}
$$

(math-hs:algebra:linear:matrices:content)=
### Inteprepretazione del contenuto di una matrice
 Spesso risulta utile intepretare una matrice $\mathbf{A} \in \mathbb{R}^{m,n}$ come una tabella di $n$ colonne di $m$-tuple o *vettori colonna*, o come una tabella di $m$ righe di $n$-tuple o *vettori riga*,

$$\mathbf{A} =
\begin{bmatrix}
a_{11} & a_{12} & \dots & a_{1n} \\
\dots  & \dots  & \dots & \dots  \\
a_{m1} & a_{m2} & \dots & a_{mn}
\end{bmatrix} = 
\left[ \begin{array}{c|c|c|c}
                   &                    &       &                    \\
\mathbf{a}_{col,1} & \mathbf{a}_{col,2} & \dots & \mathbf{a}_{col,n} \\
                   &                    &       &                    \\
\end{array}
\right] = 
\begin{bmatrix} \quad \mathbf{a}^T_{row,1} \quad  \\ \hline \quad \dots \quad  \\ \hline \quad \mathbf{a}^T_{row,m} \quad \end{bmatrix} \ .
$$

In seguito si faranno cadere i pedici $col$ e $row$ per motivi di sintesi, usando il simbolo $^T$ per intendere un *vettore riga*, come vettore **trasposto** di un vettore colonna. Nel formalismo matriciale, un vettore colonna con $m$ elementi viene quindi intepretato come una matrice $\in \mathbb{R}^{m,1}$ di $m$ righe e una colonna; viceversa un vettore riga con $n$ elementi una matrice $\in \mathbb{R}^{1,n}$ di una riga e $n$ colonne.

(math-hs:algebra:linear:matrices:operations)=
### Operazioni
- **Somma.** La somma è possibile tra due matrici con le stesse dimensioni $\mathbf{A},\, \mathbf{B} \in \mathbb{R}^{m,n}$. La somma di due matrici $\mathbf{A}$, $\mathbf{B}$ è la matrice $\mathbf{A} + \mathbf{B} \in \mathbb{R}^{m,n}$ con componenti

  $$(\mathbf{A} + \mathbf{B})_{ij} = a_{ij} + b_{ij} \ ,$$

  o più esplicitamente,

$$ \mathbf{A} + \mathbf{B} = 
\begin{bmatrix}
  a_{11} & a_{12} & \dots & a_{1n} \\ \dots  & \dots  & \dots & \dots  \\ a_{m1} & a_{m2} & \dots & a_{mn}
\end{bmatrix}
+
\begin{bmatrix}
  b_{11} & b_{12} & \dots & b_{1n} \\ \dots  & \dots  & \dots & \dots  \\ b_{m1} & b_{m2} & \dots & b_{mn}
\end{bmatrix}
= 
\begin{bmatrix}
  a_{11}+b_{11} & a_{12}+b_{12} & \dots & a_{1n}+b_{1n} \\
  \dots  & \dots  & \dots & \dots  \\
  a_{m1}+b_{m1} & a_{m2}+b_{m2} & \dots & a_{mn}+b_{mn} \\
\end{bmatrix}
$$

- **Moltiplicazione per uno scalare.** La moltiplicazione di una matrice $\mathbf{A} \in \mathbb{R}^{m,n}$ per un numero reale $c \in \mathbf{R}$ è la matrice $c \mathbf{A} \in \mathbb{R}^{m,n}$ con componenti

  $$(c \mathbf{A})_{ij} = c \, a_{ij} \ ,$$

  o più esplicitamente,

$$ c A = \begin{bmatrix}
   c \cdot a_{11} & \dots & c \cdot a_{1n} \\
   \dots          & \dots & \dots          \\
   c \cdot a_{m1} & \dots & c \cdot a_{mn}
   \end{bmatrix} $$

- **Prodotto di matrici.** Il prodotto $\mathbf{A} \mathbf{B}$ tra matrici è possibile tra due matrici $\mathbf{A} \in \mathbb{R}^{m,p}$, $\mathbf{B} \in \mathbb{R}^{p,n}$, ed è la matrice $\mathbf{A} \mathbf{B} \in \mathbb{R}^{m,n}$ con le componenti

  $$(\mathbf{A}\mathbf{B})_{ij} = \sum_{k=1}^{n} a_{in} b_{nj} = \mathbf{a}_i^T \mathbf{b}_j \ .$$

  avendo usanto l'[intepretazione dei componenti di una matrice in vettori riga e colonna](math-hs:algebra:linear:matrices:content), per esprimere l'elemento $ij$ della matrice $\mathbf{A} \mathbf{B}$ come prodotto matriciale della $i$-esima riga di $\mathbf{A}$ con la $j$-esima colonna di $\mathbf{B}$.

  **Osservazione.** **Non** vale la **proprietà commutativa** per il prodotto di matrici. Per di più, in generale non è possibile formare il prodotto $\mathbf{B} \mathbf{A}$, se $m \ne n$.


```{prf:example} Non-commutatività del prodotto matriciale
:label: matrix-prod-noncomm
:class: dropdown

Date le matrici $\in \mathbf{R}^{2,2}$,

$$
\mathbf{A} = \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix} \qquad , \qquad
\mathbf{B} = \begin{bmatrix} 1 &-1 \\ 1 & 2 \end{bmatrix} 
$$

i prodotti $\mathbf{A}\mathbf{B}$ e $\mathbf{B} \mathbf{A}$ valgono

$$
\mathbf{A} \mathbf{B}
 = \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix} \begin{bmatrix} 1 &-1 \\ 1 & 2 \end{bmatrix} 
 = \begin{bmatrix}
 1 \cdot 1 + 2 \cdot 1 & 1 \cdot (-1) + 2 \cdot 2 \\
 0 \cdot 1 + 1 \cdot 1 & 0 \cdot (-1) + 1 \cdot 2 \\
 \end{bmatrix} =
 \begin{bmatrix}  3 & 3 \\  1 & 2 \end{bmatrix}
$$

$$
\mathbf{B}\mathbf{A} 
 = \begin{bmatrix} 1 &-1 \\ 1 & 2 \end{bmatrix}  \begin{bmatrix} 1 & 2 \\ 0 & 1 \end{bmatrix}
 = \begin{bmatrix}
 1 \cdot 1 - 1 \cdot 0 & 1 \cdot 2 - 1 \cdot 1 \\
 1 \cdot 1 + 2 \cdot 0 & 1 \cdot 2 + 2 \cdot 1 \\
 \end{bmatrix} =
 \begin{bmatrix}  1 & 1 \\  1 & 4 \end{bmatrix}
$$

```
<!--
```{prf:example}
**todo**
```
```{prf:example}
**todo**
```
-->


(math-hs:algebra:linear:matrices:linear-function)=
### Matrice come funzione lineare
Tramite il prodotto matrice vettore (colonna), una matrice $\mathbf{R}^{m,n}$ rappresenta la funzione lineare più generale $f_A: \mathbb{R}^n \rightarrow \mathbb{R}^m$, che prende un vettore colonna $\mathbf{x} \in \mathbb{R}^n$ come argomento e restituisce un vettore $\mathbf{y} \in \mathbb{R}^m$,

$$\mathbf{y} = f(\mathbf{x}) = \mathbb{A} \mathbf{x} \ .$$

Si lasciano dimostrare le proprietà di linearità di questa funzione come esercizio (*consiglio: utilizzare le [operazioni matriciali](math-hs:algebra:linear:matrices:operations)*)

(math-hs:algebra:linear:matrices:range-null)=
### Immagine e nucleo
Immagine e nucleo sono due insiemi[^range-null-vspace] sono due insiemi che caratterizzano le funzioni e quindi possono essere definiti anche per una matrice che rappresenta una funzione lineare.

Il **nucleo** di una matrice $\mathbf{A} \in \mathbb{R}^{m,n}$ è l'insieme dei vettori colonna $\mathbf{x} \in \mathbb{R}^n$ tali che $\mathbf{A} \mathbf{x} = \mathbf{0}_m$,

$$\text{N}(\mathbf{A}) = \{ \mathbf{x} \in \mathbb{R}^n \, | \, \mathbf{A} \mathbf{x} = \mathbf{0}_m \} \ .$$

L'**immagine** di una matrice $\mathbf{A} \in \mathbb{R}^{m,n}$ è l'insieme dei vettori colonna $\mathbf{y} \in \mathbb{R}^m$ per i quali esiste un vettore $\mathbf{x} \in \mathbb{R}^n$ tale che $\mathbf{A} \mathbf{x} = \mathbf{y}$,

$$\text{I}(\mathbf{A}) = \{ \mathbf{y} \in \mathbb{R}^m \, | \, \exists \mathbf{x} \in \mathbb{R}^n \, |  \, \mathbf{A} \mathbf{x} = \mathbf{y} \} \ .$$

**todo** fare riferimento alle definizioni per le funzioni, [immagine di una funzione](math-hs:fun:range), [nucleo di una funzione](math-hs:fun:null).

[^range-null-vspace]:Rango e nucleo non sono semplici insiemi, ma hanno qualche proprietà in più che li rende [spazi vettoriali](math-hs:algebra:vector:def). Per quello che ci serve qui, possiamo considerarli insiemi.

(math-hs:algebra:linear:matrices:det)=
### Determinante
Per una matrice quadrata $\mathbf{A} \in \mathbb{R}^{n,n}$ è possibile definire una grandezza scalare, definita **determinante**, il cui nome dovrebbe farne intuire la rilevanza: essa infatti riassume alcune caratteristiche della matrice e, tra le altre, determina un criterio di esistenza della matrice inversa e un criterio di esistenza e di unicità della soluzione di un sistema lineare, $\mathbf{A} \mathbf{x} = \mathbf{b}$.

La definizione e una discussione completa del determinante di una matrice vanno ben oltre (**todo** *probabilmente*) lo scopo di questo materiale.

**todo** *Rapporto con immagine e nucleo*

**todo** *Espressione del determinante per matrici 2x2, 3x3; mettere in evidenza la comparsa del determinante nei metodi di soluzione sotto*

(math-hs:algebra:linear:linear-system-sol)=
## Risoluzione di Sistemi
La soluzione dei sistemi lineari è una delle attività più frequenti nelle applicazioni di matematica, soprattutto negli algoritmi di calcolo numerico; non ci occuperemo qui dei metodi numerici di soluzione dei sistemi lineari, ma si discutono diversi approcci alla soluzione analitica "a manina" di sistemi lineari, utili per il calcolo analitico della soluzione esatta di sistemi lineari di dimensioni sufficientemente ridotte (3, salvo casi eccezionali...).

Come descritto dal [teorema di Rouché-Capelli](math-hs:algebra:linear:rouche-capelli), esistono 3 possibili situazioni: il sistema lineare ha 1. una sola soluzione; 2. un numero infinito di soluzioni; 3. nessuna soluzione.

I metodi presentati sono tra di loro equivalenti, intendendo che portano alla stessa soluzione. **todo** *Equivalenti nel caso esista una soluzione unica. Danno le stesse informazioni anche nel caso esistano infinite soluzioni o non esistano soluzioni? Riguardo il rango e/o il nucleo...*

**todo** Collegamento a [soluzione numerica di sistemi lineari](https://basics2022.github.io/bbooks-programming-hs/ch/numerics/linear.html), nel $$\texttt{bbook}$$ sull'[introduzione alla programmazione e al calcolo numerico](https://basics2022.github.io/bbooks-programming-hs)

(math-hs:algebra:linear:linear-system-sol:substitution)=
### Metodo di sostituzione
Il metodo di sostituzione consiste nell'usare in successione un'equazione per ricavare un'incognita in funzione delle altre incognite, e sostituire l'espressione ricavata nelle altre successioni, per ottenere un sistema lineare con al dimensione ridotta di 1. Si continua così fino a ottenere un'equazione in un'incognita, immediata da risolvere. Successivamente si trovano i valori delle altre incognite in funzione delle incognite già calcolate. Se esiste una soluzione del problema, l'algoritmo descritto permette di calcolare la soluzione. **todo** *Altrimenti, in caso di esistenza di infinite soluzioni si arriva a un'identità $0=0$; in caso di nessuna soluzione si arriva a una contraddizione $1=0$.* **todo** *vedi esempi sotto*

```{prf:example} Metodo di sostituzione per sistema quadrato determinato
:label: linsys-subs
:class: dropdown

Si vuole risolvere il sistema 

$$\begin{cases}
      x_1             - x_3 = 1 \\
                2 x_2 + x_3 =-1 \\
    3 x_1   +     x_2 - x_3 = 4 \\
\end{cases}$$

Applichiamo il metodo di sostituzione, usando la prima equazione per esprimere $x_1$ in funzione delle altre incognite,

$$\begin{cases}
  E1: \   x_1             - x_3 = 1  \qquad \rightarrow \qquad x_1 = x_3 + 1 \\
  E2: \             2 x_2 + x_3 =-1 \\
  E3: \ 3 x_1   +     x_2 - x_3 = 4 \\
\end{cases}$$

si può sostituire l'espressione trovata nelle altre due equazioni per ottenere un sistema di 2 equazioni nelle due incognite $x_2. x_3$, e usare l'equazione $E2$ per esprimere $x_3$ in funzione di $x_2$

$$
\begin{cases}
  E2: \             2 x_2 + x_3 =-1 \\
  E3: \ 3 (x_3 + 1) + x_2 - x_3 = 4 \\
\end{cases}
\qquad
\begin{cases}
  E2: \ 2 x_2 +   x_3 =-1 \qquad \rightarrow \qquad x_3 = -1 - 2 x_2 \\
  E3: \   x_2 + 2 x_3 = 1 \\
\end{cases}
$$

e ottenere un'unica equazione lineare $E3$ per l'unica incognita $x_2$, della quale è possibile calcolare il valore,

$$
E3: \ x_2 + 2 ( -1 - 2 x_2 ) = 1 \quad \rightarrow \quad x_2 = -1 \ .
$$

Una volta trovato il valore $x_2 = -1$, si "torna indietro" per calcolare $x_3 = - 1 - 2 x_2 = 1$ e $x_1 = x_3 + 1 = 2$. La soluzione del sistema quindi esiste, è unica ed è $\mathbf{x} = (x_1, x_2, x_3) = (2, -1, 1)$.

```

(math-hs:algebra:linear:linear-system-sol:gauss)=
### Metodo di eliminazione di Gauss
Il metodo di eliminazione di Gauss consiste nella combinazione lineare delle equazioni del sistema per ottenere una forma del sistema facilmente risolvibile, tipicamente una matrice dei coefficienti con forma triangolare.

```{prf:example} Metodo di eliminazione di Gauss per sistema quadrato
:label: linsys-gauss
:class: dropdown

Si vuole risolvere il sistema 

$$\begin{cases}
      x_1             - x_3 = 1 \\
                2 x_2 + x_3 =-1 \\
    3 x_1   +     x_2 - x_3 = 4 \\
\end{cases}$$

con il metodo di eliminazione di Gauss. E' comune (ma non obbligatorio, ognuno è libero di fare quello che gli pare, purché vengano seguiti procedimenti logici) applicare il metodo dopo aver riscritto il sistema con il fomralismo matriciale, 

$$
\begin{bmatrix} 1 & 0 & -1 \\ 0 & 2 & 1 \\ 3 &  1 & -1 \end{bmatrix} \begin{bmatrix} x_1 \\ x_2 \\ x_3 \end{bmatrix} =  \begin{bmatrix} 1 \\ -1 \\ 4 \end{bmatrix} \ ,
$$

e, sottintendendo il vettore delle incognite,

$$\left[\begin{array}{ccc|c} 1 & 0 & -1 & 1 \\ 0 & 2 & 1 & -1 \\ 3 & 1 & -1 & 4 \end{array} \right] \ .$$

Vogliamo ottenere una forma triangolare della matrice $\mathbf{A}$. La prima e la seconda riga soddisfano già questa struttura, mentre è necessario combinare le righe per annullare i primi 2 elementi della tera riga. Sottraendo la prima riga moltiplicata per 3, viene annullato il primo elemento

$$\left[\begin{array}{ccc|c} 1 & 0 & -1 & 1 \\ 0 & 2 & 1 & -1 \\ 0 & 1 &  2 & 1 \end{array} \right] \ ,$$

e successivamente sottraendo la seconda riga moltiplicata per $\frac{1}{2}$, viene annullato il secondo elemento,

$$\left[\begin{array}{ccc|c} 1 & 0 & -1 & 1 \\ 0 & 2 & 1 & -1 \\ 0 & 0 & \frac{3}{2} & \frac{3}{2} \end{array} \right] \ .$$

Ottenuta la forma triangolare desiderata, si fa ricomparire il vettore delle incognite

$$
\begin{bmatrix} 1 & 0 & -1 \\ 0 & 2 & 1 \\ 0 &  0 & \frac{3}{2} \end{bmatrix} \begin{bmatrix} x_1 \\ x_2 \\ x_3 \end{bmatrix} =  \begin{bmatrix} 1 \\ -1 \\ \frac{3}{2} \end{bmatrix} \ ,
$$

e si risolve il sistema triangolare partendo dall'ultima equazione 

 $$\frac{3}{2} x_3 = \frac{3}{2} \qquad \rightarrow \qquad x_3 = 1 \, $$

 a ritroso: questo ordine di soluzione permette di risolvere $n$ equazioni che contengono una sola incognita per volta, dopo aver sostituito il valore delle incognite già trovate,

$$\begin{aligned}
 2 x_2 + x_3 = - 1 \qquad & \rightarrow \qquad x_2 = -1 \\
   x_1 - x_3 =   1 \qquad & \rightarrow \qquad x_1 =  2 \\
\end{aligned}$$


```

(math-hs:algebra:linear:linear-system-sol:cramer)=
### Metodo di Cramer
**todo** *Per quale motivo discuterlo? E' scomodo, non dà grandi informazioni in caso di assenza o numero infinito di soluzioni...*

(math-hs:algebra:linear:rouche-capelli)=
## Teorema di Rouché-Capelli

(math-hs:algebra:linear:rouche-capelli:geometry)=
### Interpretazione geometrica

```{prf:example} Sistema quadrato determinato
:label: linsys-geo-1
```
```{prf:example} Sistema quadrato indeterminato
:label: linsys-geo-2
```
```{prf:example} Sistema quadrato sovradeterminato
:label: linsys-geo-3
```
```{prf:example} Sistema indeterminato
:label: linsys-geo-4
```

(math-hs:algebra:linear:problems)=
## Problemi

(math-hs:algebra:linear:problems:linear-fun)=
### Matrici come funzione lineare
```{exercise} Matrici e scalatura
:class: dropdown

Interpretando gli elementi di un vettore colonna $\mathbf{x} \in \mathbb{R}^2$ come le componenti cartesiane del vettore $\vec{x}$ in un piano, la matrice $\mathbf{A} \in \mathbb{R}^{2,2}$ 

$$\mathbf{A} = \begin{bmatrix} a & 0 \\ 0 & b \end{bmatrix} \ ,$$

rappresenta una scalatura non isotropa (diversa lungo le diverse direzioni) delle componenti dei vettori di un fattore $a$ in direzione $x$ e di un fattore $b$ in direzione $y$.

- Dimostrare questa frase, calcolando il prodotto $\mathbf{A} \mathbf{r}$ per il vettore colonna generico $\mathbf{r} = \begin{bmatrix} x \\ y \end{bmatrix}$ contenente le componenti cartesiane del vettore $\vec{r}$ nel piano
- Dare una rappresentazione grafica nel piano
- Dimostrare che il determinante della matrice è uguale a $ab$, $|\mathbf{A}| = ab$
- Dimostrare che la trasformazione inversa $\mathbf{A}^{-1}$ esiste per $a \ne 0 \land b \ne 0$, e vale $\mathbf{A}^{-1} = \begin{bmatrix} \frac{1}{a} & 0 \\ 0 & \frac{1}{b} \end{bmatrix}$
- Discutere il caso in cui $a = b$, dove la scalatura è isotropa.
- Dimostrare che questa trasformazione rappresenta la riflessione rispetto all'origine nel caso in cui $a = b = -1$

```
```{exercise} Matrici e riflessioni
:class: dropdown

Interpretando gli elementi di un vettore colonna $\mathbf{x} \in \mathbb{R}^2$ come le componenti cartesiane del vettore $\vec{x}$ in un piano, la matrice $\mathbf{A} \in \mathbb{R}^{2,2}$ 

$$\mathbf{A} = \begin{bmatrix} 1 - 2 n_x^2 & - 2 n_x n_y \\  - 2 n_x n_y & 1 - 2 n_y^2 \end{bmatrix} \ ,$$

rappresenta una riflessione di vettori del piano rispetto a una retta passante per l'origine e perpendicolare al vettore $\vec{n}$ con componenti $n_x$, $n_y$, $n_x^2 + n_y^2 = 1$.

- Dimostrare questa frase, calcolando il prodotto $\mathbf{A} \mathbf{r}$ per il vettore colonna generico $\mathbf{r} = \begin{bmatrix} x \\ y \end{bmatrix}$ contenente le componenti cartesiane del vettore $\vec{r}$ nel piano
- Dare una rappresentazione grafica nel piano
- Dimostrare che il determinante della matrice è uguale a -1, $|\mathbf{A}| = -1$
- Dimostrare che la trasformazione inversa $\mathbf{A}^{-1}$ esiste ed è uguale alla trasformazione originale, $\mathbf{A}^{-1} = \mathbf{A}$

```
```{exercise} Matrici e rotazioni
:class: dropdown

Interpretando gli elementi di un vettore colonna $\mathbf{x} \in \mathbb{R}^2$ come le componenti cartesiane del vettore $\vec{x}$ in un piano, la matrice $\mathbf{A} \in \mathbb{R}^{2,2}$ 

$$\mathbf{A} = \begin{bmatrix} \cos\theta & \sin \theta \\ -\sin\theta & \cos\theta \end{bmatrix} \ ,$$

rappresenta una rotazione dei vettori attorno all'origine di un angolo $\theta$.

<!--
$$\mathbf{A} = \begin{bmatrix} \cos\theta & \sin \theta \\ -\sin\theta & \cos\theta \end{bmatrix} \ ,$$

con $a^2 + b^2 = 1$ rappresenta una rotazione dei vettori attorno all'origine.
-->

- Dimostrare questa frase, calcolando il prodotto $\mathbf{A} \mathbf{r}$ per il vettore colonna generico $\mathbf{r} = \begin{bmatrix} x \\ y \end{bmatrix}$ contenente le componenti cartesiane del vettore $\vec{r}$ nel piano
- Dare una rappresentazione grafica nel piano
- Dimostrare che il determinante della matrice è uguale a 1, $|\mathbf{A}| = 1$
- Dimostrare che la trasformazione inversa $\mathbf{A}^{-1}$ esiste ed è uguale alla trasposta della trasformazione, $\mathbf{A}^{-1} = \mathbf{A}^T$

**todo** Si può sostituire $\cos \theta = a$, $\sin \theta = b$ con $a^2 + b^2 = 1$

**todo** Dipendenza logica di questo esercizio dalle basi di [trigonometria](math-hs:trigonometry). Stabilire un ordine consigliato di accesso a questo $\texttt{bbook}$
```

```{exercise} Proiezione ortogonale lungo una direzione data
:class: dropdown
:label: matrix-projection-parallel

Interpretando gli elementi di un vettore colonna $\mathbf{x} \in \mathbb{R}^2$ come le componenti cartesiane del vettore $\vec{x}$ in un piano, la matrice $\mathbf{A} \in \mathbb{R}^{2,2}$ 

$$\mathbf{A} = \mathbf{n}^T \mathbf{n} = \begin{bmatrix} n_x^2 & n_x n_y \\  n_x n_y & n_y^2 \end{bmatrix} \ ,$$

rappresenta una proiezione ortogonale dei punti del piano sulla retta passante per l'origine con direzione determinata dal vettore $\vec{n}$ con componenti $n_x$, $n_y$, $n_x^2 + n_y^2 = 1$.

- Dimostrare questa frase, calcolando il prodotto $\mathbf{A} \mathbf{r}$ per il vettore colonna generico $\mathbf{r} = \begin{bmatrix} x \\ y \end{bmatrix}$ contenente le componenti cartesiane del vettore $\vec{r}$ nel piano
- Dare una rappresentazione grafica nel piano
- Dimostrare che il determinante della matrice è uguale a 0, $|\mathbf{A}| = 0$
- Dimostrare che l'immagine della trasformazione è formato dai vettori colonna $a \mathbf{n}$
- Dimostrare che il nucleo della trasformazione è formato dai vettori colonna $\mathbf{x}$ per i quali vale $\mathbf{x}^T \mathbf{a}=0$

```

```{exercise} Proiezione ortogonale nella direzione perpendicolare a una direzione data
:class: dropdown
:label: matrix-projection-perpendicular

Interpretando gli elementi di un vettore colonna $\mathbf{x} \in \mathbb{R}^2$ come le componenti cartesiane del vettore $\vec{x}$ in un piano, la matrice $\mathbf{A} \in \mathbb{R}^{2,2}$ 

$$\mathbf{A} = \mathbf{I} - \mathbf{n}^T \mathbf{n} = \begin{bmatrix} 1- n_x^2 & -n_x n_y \\ - n_x n_y & 1 - n_y^2 \end{bmatrix} \ ,$$

rappresenta una proiezione ortogonale dei punti del piano sulla retta passante per l'origine e perpendicolare al vettore $\vec{n}$ con componenti $n_x$, $n_y$, $n_x^2 + n_y^2 = 1$.

- Dimostrare questa frase, calcolando il prodotto $\mathbf{A} \mathbf{r}$ per il vettore colonna generico $\mathbf{r} = \begin{bmatrix} x \\ y \end{bmatrix}$ contenente le componenti cartesiane del vettore $\vec{r}$ nel piano
- Dare una rappresentazione grafica nel piano
- Dimostrare che il determinante della matrice è uguale a 0, $|\mathbf{A}| = 0$
- Dimostrare che l'immagine della trasformazione è formato dai vettori colonna $\mathbf{x}$ per i quali vale $\mathbf{x}^T \mathbf{a}=0$
- Dimostrare che il nucleo della trasformazione è formato dai vettori colonna $a \mathbf{n}$
```

```{exercise} Scomposizione di una matrice - somma di parte simmetrica e antisimmetrica
:class: dropdown

Ogni matrice può essere scritta come la somma di una parte simmetrica e una parte antisimmetrica.

```
```{exercise} Scomposizione di una matrice - ...
:class: dropdown

```

(math-hs:algebra:linear:problems:linear-sys)=
### Soluzione di sistemi lineari

Viene chiesto di stabilire se i seguenti problemi hanno soluzione, di calcolare le eventuali soluzioni, fornire una rappresentazione grafica del problema algebrico, e - per sistemi con uguale numero di equazioni ed incognite - calcolare il determinante delle matrici del sistema lineare.

1. 

$$
   \begin{cases}
   x + y = 4 \\
   \frac{3}{2}x + y = 5
   \end{cases}
$$


2. 

$$
    \begin{cases}
    x - y = 2 \\
    x + y = -1
    \end{cases}
$$

3. 

$$
   \begin{cases}
   x + 2y = 5 \\
   2x + 2y = 11
   \end{cases}
$$

4. 

$$
   \begin{cases}
   x + y = 3 \\
   x - y = 1
   \end{cases}
$$

5. 

$$
   \begin{cases}
   x - y + z = 0 \\
   2x - 2y + 2z = 0 \\
   -x + y - z = 0
   \end{cases}
$$


6. 

$$
   \begin{cases}
   x + y + z = 2 \\
   x + 2y + z = 4 \\
   x + y + 2z = 6
   \end{cases}
$$

7. 

$$
   \begin{cases}
   x + y + z = 3 \\
   2x + 2y + z = 8 \\
   \end{cases}
$$

8. 

$$
   \begin{cases}
   x + y + z = 7 \\
   x + y - z = 3
   \end{cases}
$$

9. 

$$
   \begin{cases}
   3x + 2y = 6 \\
   x - y = 1
   \end{cases}
$$

10. 

$$
    \begin{cases}
    x + y = 2 \\
    3x + 2y = 6
    \end{cases}
$$

11. 

$$
    \begin{cases}
    x - y = 1 \\
    x - 3y + z = 3
    \end{cases}
$$

12. 

$$
    \begin{cases}
    x + y = 5 \\
    2x - y = 1
    \end{cases}
$$

13. 

$$
    \begin{cases}
    x + y = 1 \\
    x + y + z = 3 \\
    2x + 2y + z = 4
    \end{cases}
$$

14. 

$$
    \begin{cases}
    x + y + z = 5 \\
    2x - 2y + 2z = 10 \\
    3x - y + 3z = -5
    \end{cases}
$$

15. 

$$
    \begin{cases}
    x + y = 4 \\
    2x + 2y = 8
    \end{cases}
$$

16. 

$$
    \begin{cases}
    x + 2y = 8 \\
    3x - 4y = -2
    \end{cases}
$$

17. 

$$
    \begin{cases}
    x + y = 3 \\
    2x + 2y = 6 \\
    x + 3y = 4
    \end{cases}
$$

18. 

$$
    \begin{cases}
    x + y - z = 3 \\
    2x - y + z = 2 \\
    -x + y + 2z = 4
    \end{cases}
$$


19. 

$$
   \begin{cases}
   x + y + z = 6 \\
   x - y + z = 4 \\
   2x + y - z = 7
   \end{cases}
$$


20. 

$$
    \begin{cases}
    x + y + 3z = 6 \\
    2x + 4y + 6z = 12 \\
    -x - 2y - 3z = -6
    \end{cases}
$$

Viene chiesto di ripetere la discussione degli esercizi precedenti, al variare dei parametri nel sistemi.

1. 

$$
   \begin{cases}
   x + ky = 2 \\
   x - 2y = 1
   \end{cases}
$$


2. 

$$
   \begin{cases}
   x + y = b \\
   ax + y = 2
   \end{cases}
$$

3. 

$$
   \begin{cases}
   x - y + mz = 3 \\
   mx + 2y + z = 4 \\
   x + y - z = 1
   \end{cases}
$$

4. 

$$
   \begin{cases}
   kx + y = 4 \\
   2x + ky = 3 p
   \end{cases}
$$

5. 
$$
   \begin{cases}
   px + y      = 1 \\
   2x + y +  z = 2 \\
        y + qz = p
   \end{cases}
$$

**todo** *Qualche esercizio con disequazioni*


<!--

## Esercizi
1. Calcola il determinante:

$$
\begin{bmatrix}
1 & 2 \\
3 & 4
\end{bmatrix}
$$

2. 

$$
\begin{cases}
x + 2y = 5 \\
3x - y = 4
\end{cases}
$$

-->

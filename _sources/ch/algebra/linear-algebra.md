
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

(math-hs:algebra:linear:intro:matrices)=
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

(math-hs:algebra:linear:intro:matrices:content)=
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

(math-hs:algebra:linear:intro:matrices:operations)=
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

  avendo usanto l'[intepretazione dei componenti di una matrice in vettori riga e colonna](math-hs:algebra:linear:intro:matrices:content), per esprimere l'elemento $ij$ della matrice $\mathbf{A} \mathbf{B}$ come prodotto matriciale della $i$-esima riga di $\mathbf{A}$ con la $j$-esima colonna di $\mathbf{B}$.

  **Osservazione.** **Non** vale la **proprietà commutativa** per il prodotto di matrici. Per di più, in generale non è possibile formare il prodotto $\mathbf{B} \mathbf{A}$, se $m \ne n$.


```{prf:example}
```
```{prf:example}
```
```{prf:example}
```

### Determinante
Per una matrice quadrata $\mathbf{A} \in \mathbb{R}^{n,n}$ è possibile definire una grandezza scalare, definita **determinante**, il cui nome dovrebbe farne intuire la rilevanza: essa infatti riassume alcune caratteristiche della matrice e, tra le altre, determina un criterio di esistenza della matrice inversa e un criterio di esistenza e di unicità della soluzione di un sistema lineare, $\mathbf{A} \mathbf{x} = \mathbf{b}$.

La definizione e una discussione completa del determinante di una matrice vanno ben oltre (**todo** *probabilmente*) lo scopo di questo materiale.

**todo** *Espressione del determinante per matrici 2x2, 3x3; mettere in evidenza la comparsa del determinante nei metodi di soluzione sotto*


### Rango e nucleo
**todo** ...


## Risoluzione di Sistemi
La soluzione dei sistemi lineari è una delle attività più frequenti nelle applicazioni di matematica, soprattutto negli algoritmi di calcolo numerico; non ci occuperemo qui dei metodi numerici di soluzione dei sistemi lineari, ma si discutono diversi approcci alla soluzione analitica "a manina" di sistemi lineari, utili per il calcolo analitico della soluzione esatta di sistemi lineari di dimensioni sufficientemente ridotte (3, salvo casi eccezionali...).

Come descritto dal [teorema di Rouché-Capelli](), esistono 3 possibili situazioni: il sistema lineare ha 1. una sola soluzione; 2. un numero infinito di soluzioni; 3. nessuna soluzione.

I metodi presentati sono tra di loro equivalenti, intendendo che portano alla stessa soluzione. **todo** *Equivalenti nel caso esista una soluzione unica. Danno le stesse informazioni anche nel caso esistano infinite soluzioni o non esistano soluzioni? Riguardo il rango e/o il nucleo...*

### Metodo di sostituzione
Il metodo di sostituzione consiste nell'usare in successione un'equazione per ricavare un'incognita in funzione delle altre incognite, e sostituire l'espressione ricavata nelle altre successioni, per ottenere un sistema lineare con al dimensione ridotta di 1. Si continua così fino a ottenere un'equazione in un'incognita, immediata da risolvere. Successivamente si trovano i valori delle altre incognite in funzione delle incognite già calcolate. Se esiste una soluzione del problema, l'algoritmo descritto permette di calcolare la soluzione. **todo** *Altrimenti, in caso di esistenza di infinite soluzioni si arriva a un'identità $0=0$; in caso di nessuna soluzione si arriva a una contraddizione $1=0$.* **todo** *vedi esempi sotto*

```{prf:example} Metodo di sostituzione per sistema quadrato determinato
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

### Metodo di eliminazione di Gauss
Il metodo di eliminazione di Gauss consiste nella combinazione lineare delle equazioni del sistema per ottenere una forma del sistema facilmente risolvibile, tipicamente una matrice dei coefficienti con forma triangolare.

```{prf:example} Metodo di sostituzione per sistema quadrato determinato
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

### Metodo di Cramer
**todo** *Per quale motivo discuterlo? E' scomodo, non dà grandi informazioni in caso di assenza o numero infinito di soluzioni...*

(math-hs:algebra:linear:rouche-capelli)=
## Teorema di Rouché-Capelli

### Interpretazione geometrica



```{prf:example} Sistema quadrato determinato
```
```{prf:example} Sistema quadrato indeterminato
```
```{prf:example} Sistema quadrato sovradeterminato
```
```{prf:example} Sistema indeterminato
```


## Problemi
Viene chiesto di stabilire se i seguenti problemi hanno soluzione, di calcolare le eventuali soluzioni, fornire una rappresentazione grafica del problema algebrico, e - per sistemi con uguale numero di equazioni ed incognite - calcolare il determinante delle matrici del sistema lineare.

1. Risolvi il sistema:

   $$
   \begin{cases}
   x + y = 4 \\
   \frac{3}{2}x + y = 5
   \end{cases}
   $$


2. Risolvi il sistema:

    $$
    \begin{cases}
    x - y = 2 \\
    x + y = -1
    \end{cases}
    $$

3. Risolvi il sistema:

   $$
   \begin{cases}
   x + 2y = 5 \\
   2x + 2y = 11
   \end{cases}
   $$

4. Risolvi il sistema:

   $$
   \begin{cases}
   x + y = 3 \\
   x - y = 1
   \end{cases}
   $$

5. Risolvi il sistema:

   $$
   \begin{cases}
   x - y + z = 0 \\
   2x - 2y + 2z = 0 \\
   -x + y - z = 0
   \end{cases}
   $$


6. Risolvi il sistema:

   $$
   \begin{cases}
   x + y + z = 2 \\
   x + 2y + z = 4 \\
   x + y + 2z = 6
   \end{cases}
   $$

7. Risolvi il sistema:

   $$
   \begin{cases}
   x + y + z = 3 \\
   2x + 2y + z = 8 \\
   \end{cases}
   $$

8. Risolvi il sistema:

   $$
   \begin{cases}
   x + y + z = 7 \\
   x + y - z = 3
   \end{cases}
   $$

9. Risolvi il sistema:

   $$
   \begin{cases}
   3x + 2y = 6 \\
   x - y = 1
   \end{cases}
   $$

10. Risolvi il sistema:

    $$
    \begin{cases}
    x + y = 2 \\
    3x + 2y = 6
    \end{cases}
    $$

11. Risolvi il sistema:

    $$
    \begin{cases}
    x - y = 1 \\
    x - 3y + z = 3
    \end{cases}
    $$

12. Risolvi il sistema:

    $$
    \begin{cases}
    x + y = 5 \\
    2x - y = 1
    \end{cases}
    $$

13. Risolvi il sistema:

    $$
    \begin{cases}
    x + y = 1 \\
    x + y + z = 3 \\
    2x + 2y + z = 4
    \end{cases}
    $$

14. Risolvi il sistema:

    $$
    \begin{cases}
    x + y + z = 5 \\
    2x - 2y + 2z = 10 \\
    3x - y + 3z = -5
    \end{cases}
    $$

15. Risolvi il sistema:

    $$
    \begin{cases}
    x + y = 4 \\
    2x + 2y = 8
    \end{cases}
    $$

16. Risolvi il sistema:

    $$
    \begin{cases}
    x + 2y = 8 \\
    3x - 4y = -2
    \end{cases}
    $$

17. Risolvi il sistema:

    $$
    \begin{cases}
    x + y = 3 \\
    2x + 2y = 6 \\
    x + 3y = 4
    \end{cases}
    $$

18. Risolvi il sistema:

    $$
    \begin{cases}
    x + y - z = 3 \\
    2x - y + z = 2 \\
    -x + y + 2z = 4
    \end{cases}
    $$


19. Risolvi il sistema:

   $$
   \begin{cases}
   x + y + z = 6 \\
   x - y + z = 4 \\
   2x + y - z = 7
   \end{cases}
   $$


20. Risolvi il sistema:

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

2. Risolvi il sistema:

$$
\begin{cases}
x + 2y = 5 \\
3x - y = 4
\end{cases}
$$

-->


(math-hs:algebra:linear)=
# Algebra lineare

In questa sezione vengono presentati gli argomenti dell'algebra lineare che riguardano la soluzione di sistemi di equazioni lineari, per i quali si discutono le condizioni di esistenza e unicità della soluzione e dei quali viene fornita una rappresentazione grafica. Viene introdotto il formalismo matriciale, e le operazioni algebriche elementari sulle matrici; vengono date le definizioni  le matrici vengono interpretate come funzioni lineari (applicazioni lineari), e utilizzate per formulare le condizioni di esistenza e unicità delle soluzioni di sistemi lineari (teorema di Rouché-Capelli).

## Introduzione
<span style="color:red">L'algebra lineare è fondamentale per studiare matrici, sistemi lineari e trasformazioni geometriche. Questo capitolo esplora le matrici, i determinanti e la risoluzione dei sistemi.</span>

## Sistemi lineari
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

avendo raccolto i coefficienti $a_{ij}$ nella matrice $\mathbf{A}$, una tabela di $m$ righe e $n$ colonne, le incognite $x_j$ nella $n$-upla $\mathbf{x} \in \mathbb{R}^n$ e i coefficienti $b_i$ nella $m$-upla $\mathbf{b} \in \mathbb{R}^m$.

## Matrici

Una matrice è una tabella rettangolare di numeri:

$$
A = \begin{bmatrix}
a_{11} & a_{12} \\
a_{21} & a_{22}
\end{bmatrix}
$$

### Operazioni
- **Addizione**:
   $ A + B = \begin{bmatrix}
   a_{11} + b_{11} & a_{12} + b_{12} \\
   a_{21} + b_{21} & a_{22} + b_{22}
   \end{bmatrix} $
- **Moltiplicazione per uno scalare**:
   $ c \cdot A = \begin{bmatrix}
   c \cdot a_{11} & c \cdot a_{12} \\
   c \cdot a_{21} & c \cdot a_{22}
   \end{bmatrix} $

---

## Determinanti

Il determinante di una matrice quadrata è dato da:

$$
\text{det}(A) = a_{11}a_{22} - a_{12}a_{21}
$$

---

## Risoluzione di Sistemi

- **Metodo di Cramer**:
   $ x_i = \frac{\text{det}(A_i)}{\text{det}(A)} $
- **Metodo della matrice inversa**:
   $ \mathbf{x} = A^{-1} \mathbf{b} $

---

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


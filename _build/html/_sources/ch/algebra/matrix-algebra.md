
(math-hs:algebra:matrix)=
# Algebra matriciale

## Introduzione
L'algebra lineare è fondamentale per studiare matrici, sistemi lineari e trasformazioni geometriche. Questo capitolo esplora le matrici, i determinanti e la risoluzione dei sistemi.

---

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


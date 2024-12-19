(math-hs:algebra:complex:problems)=
# Problemi - soluzioni

(math-hs:algebra:complex:problems:def)=
## Definizioni

(math-hs:algebra:complex:problems:complex-plane:sol)=
## Rappresentazione dei numeri complessi nel piano complesso (Argand-Gauss)

(math-hs:algebra:complex:problems:operations:sol)=
## Operazioni con i numeri complessi

Soluzione degli [esercizi sulle operazioni con i numeri complessi](math-hs:algebra:complex:problems:operations:cc:re-im).

(math-hs:algebra:complex:fund-thm:sol)=
## Teorema fondamentale dell'algebra

Soluzione degli [esercizi sul teorema fondmaentale dell'algebra](math-hs:algebra:complex:fund-thm:ex).

(math-hs:algebra:complex:problems:geometry-2d:sol)=
## Numeri complessi e geometria nel piano euclideo
Soluzione degli [esercizi sui numeri complessi e la geometria nel piano euclideo](math-hs:algebra:complex:problems:geometry-2d:ex).


(math-hs:algebra:complex:problems:equations:sol)=
## Equazioni e disequazioni con i numeri complessi

### Equazioni
Soluzione degli [esercizi su equazioni con i numeri complessi](math-hs:algebra:complex:problems:equations:sys)

````{only} html

**1.** Risolvere $|z| = 2$

```{dropdown} Soluzione

Esistono infinite soluzioni del problema, e sono tutti i numeri complessi con modulo $2$ e argomento arbitrario,

$$z = 2 e^{i \theta} \quad \forall \theta \in \mathbb{R} \ .$$

**Interpretazione grafica.** L'equazione corrisponde all'equazione di una circonferenza di raggio 2 centrata nell'origine. 

![](../../media/tikz/complex/ex-eq-01.svg)
<!-- *Didascalia, se necessaria* -->

```

2. Trova i numeri complessi $z$ che soddisfano $z + \overline{z} = 2$.
3. Risolvi $z^2 - 2z + 5 = 0$ e calcola il modulo delle soluzioni.
4. Risolvi $|z - 3| = 5$ e rappresenta graficamente le soluzioni.
5. Trova i valori di $z$ per cui $z^3 = 27$.
6. Risolvi $z^4 + 16 = 0$ e rappresenta graficamente le soluzioni nel piano complesso.
7. Risolvi $|z - 1| = |z + 1|$ e descrivi il luogo geometrico delle soluzioni.
8. Trova le soluzioni di $z^5 - 32 = 0$ e rappresentale in forma polare.
9. Determina i numeri complessi $z$ per cui $|z|^2 + |z - 2|^2 = 8$.
10. Risolvi $|z + i| = 3$ per $z \in \mathbb{C}$.
11. $z^2 + 4 = 0$
12. $z^2 - 2z + 5 = 0$
13. $z^3 + 8 = 0$
14. $|z-2-i| = 2$
15. $|z-2-i| = |z-1|$
16. $z + \bar{z} = 1$

````

````{only} latex

**1.** Risolvere $|z| = 2$.

$$
\begin{minipage}[t]{.55\textwidth}
Esistono infinite soluzioni del problema, e sono tutti i numeri complessi con modulo $2$ e argomento arbitrario,
%
\begin{equation} z = 2 e^{i \theta} \quad \forall \theta \in \mathbb{R} \ .\end{equation}
%
\textbf{Interpretazione grafica.} L'equazione corrisponde all'equazione di una circonferenza di raggio 2 centrata nell'origine. 
\end{minipage}
\hspace{.05\textwidth}
\begin{minipage}[t]{.40\textwidth}
  \vspace{0pt}
  \includegraphics[width=.95\textwidth]{../../media/tikz/complex/ex-eq-01.pdf}
\end{minipage}
$$

**2.** Trova i numeri complessi $z$ che soddisfano $z + \overline{z} = 2$.

**3.** Risolvi $z^2 - 2z + 5 = 0$ e calcola il modulo delle soluzioni.

**4.** Risolvi $|z - 3| = 5$ e rappresenta graficamente le soluzioni.

**5.** Trova i valori di $z$ per cui $z^3 = 27$.

**6.** Risolvi $z^4 + 16 = 0$ e rappresenta graficamente le soluzioni nel piano complesso.

**7.** Risolvi $|z - 1| = |z + 1|$ e descrivi il luogo geometrico delle soluzioni.

**8.** Trova le soluzioni di $z^5 - 32 = 0$ e rappresentale in forma polare.

**9.** Determina i numeri complessi $z$ per cui $|z|^2 + |z - 2|^2 = 8$.

**10.** Risolvi $|z + i| = 3$ per $z \in \mathbb{C}$.

**11.** $z^2 + 4 = 0$

**12.** $z^2 - 2z + 5 = 0$

**13.** $z^3 + 8 = 0$

**14.** $|z-2-i| = 2$

**15.** $|z-2-i| = |z-1|$

**16.** $z + \bar{z} = 1$

````

### Disequazioni
Soluzione degli [esercizi su disequazioni con i numeri complessi](math-hs:algebra:complex:problems:equations:ineq)

```` {only} html
````

```` {only} latex
**1.** Trova i numeri complessi $z$ che soddisfano $|z| < 3$.

**2.** Determina $z$ per cui $|z - 2| \geq 4$.

**3.** Risolvi $|z + i| \leq 2$.

**4.** Trova $z$ tali che $\text{Re}(z) > \text{Im}(z)$.

**5.** Risolvi $|z - 1| > |z + 1|$.

**6.** Determina il luogo geometrico di $z$ per cui $|z| - |z-2| \leq 3$.

**7.** Risolvi $\text{Re}(z) + \text{Im}(z) \leq 2$.

**8.** Trova $z$ tali che $|z| + |z - 1| \leq 5$.

**9.** Trova $z$ tali che $|z+i| + |z - 1| \leq 5$.

**10.** Risolvi $|z - 2i| \geq |z + 2|$.

````

### Sistemi
Soluzione degli [esercizi su sistemi di equazioni con i numeri complessi](math-hs:algebra:complex:problems:equations:sys)

````{only} html
**1.** Risolvere $\begin{cases} z + \bar{z} = 6 \\ |z| = 5 \end{cases}$

```{dropdown} Soluzione

La prima equazione si riduce a $2 \text{re}\{z\} = 6$. Usando la rappresentazione cartesiana, $z = x + i y$, il sistema può essere riscritto come

$$\begin{cases}
  x = 3 \\
  \sqrt{x^2 +y^2} = 5
\end{cases}$$

Sostituendo la prima nella seconda si trova $\sqrt{9 + y^2} = 5$; elevando al quadrato i due numeri positivi, $y^2 = 25-9=16$ e quindi $y = \mp 4$. Il problema ha quindi due soluzioni

$$\begin{aligned}
  z_1 & = 3 - i 4 \\
  z_2 & = 3 + i 4
\end{aligned}$$

**Interpretazione grafica.** Le due equazioni corrispondono all'equazione della retta di equazione $x = 3$ e della circonferenza centrata nell'origine di raggio $5$. La soluzione del sistema coincide con la ricerca dei punti di intersezione di queste due curve.

![](../../media/tikz/complex/ex-sy-01.svg)
<!-- *Didascalia, se necessaria* -->

```

**2.** Trova $z_1$ e $z_2$ che soddisfano il sistema:  
   $\begin{cases} 
   |z_1| = 3 \\
   z_1 z_2 = 9 
   \end{cases}$

```{dropdown} Soluzione
```

**3.** Risolvi il sistema:  
   $\begin{cases} 
   z^2 + w^2 = 5 \\
   z w = 4 
   \end{cases}$

```{dropdown} Soluzione
```

**4.** Determina le soluzioni del sistema:  
   $\begin{cases} 
   |z| = 4 \\
   z + \overline{z} = 6 
   \end{cases}$

```{dropdown} Soluzione
```

**5.** Risolvi il sistema:  
   $\begin{cases} 
   z^3 + w = 1 \\
   z w^3 = -1 
   \end{cases}$

```{dropdown} Soluzione
```

**6.** Trova $z$ e $w$ per il sistema:  
   $\begin{cases} 
   z^2 + w^2 = 7 \\
   z + w = 3 
   \end{cases}$

```{dropdown} Soluzione
```

**7.** Risolvi il sistema:  
   $\begin{cases} 
   |z| = 2 \\
   z + w = 0 
   \end{cases}$

```{dropdown} Soluzione
```

**8.** Trova $z$ e $w$ che soddisfano il sistema:  
   $\begin{cases} 
   z w = 1 \\
   z - w = i 
   \end{cases}$

```{dropdown} Soluzione
```

**9.** Determina le soluzioni del sistema:  
   $\begin{cases} 
   z^2 + \overline{z}^2 = 8 \\
   z \cdot \overline{z} = 9 
   \end{cases}$

```{dropdown} Soluzione
```

**10.** Risolvi il sistema:  
    $\begin{cases} 
    z + w = 5 + i \\
    z \cdot w = 6 - i 
    \end{cases}$

```{dropdown} Soluzione
```

````

````{only} latex

**1.** Risolvere $\begin{cases} z + z^* = 6 \\ |z| = 5 \end{cases}$

$$
\begin{minipage}[t]{.55\textwidth}
  \vspace{0pt}
La prima equazione si riduce a $2 \text{re}\{z\} = 6$. Usando la rappresentazione cartesiana, $z = x + i y$, il sistema può essere riscritto come
%
\begin{equation}\begin{cases}
  x = 3 \\
  \sqrt{x^2 +y^2} = 5
\end{cases}\end{equation}
%
Sostituendo la prima nella seconda si trova $\sqrt{9 + y^2} = 5$; elevando al quadrato i due numeri positivi, $y^2 = 25-9=16$ e quindi $y = \mp 4$. Il problema ha quindi due soluzioni
%
\begin{equation}\begin{aligned}
  z_1 & = 3 - i 4 \\
  z_2 & = 3 + i 4
\end{aligned}\end{equation}
%
\textbf{Interpretazione grafica.} Le due equazioni corrispondono all'equazione della retta di equazione $x = 3$ e della circonferenza centrata nell'origine di raggio $5$. La soluzione del sistema coincide con la ricerca dei punti di intersezione di queste due curve.
%
\end{minipage}
\hspace{.05\textwidth} %
\begin{minipage}[t]{.40\textwidth}
  \vspace{0pt}
  \includegraphics[width=.95\textwidth]{../../media/tikz/complex/ex-sy-01.pdf}
\end{minipage}
$$

**2.** Trova $z_1$ e $z_2$ che soddisfano il sistema:  
   $\begin{cases} 
   |z_1| = 3 \\
   z_1 z_2 = 9 
   \end{cases}$

**3.** Risolvi il sistema:  
   $\begin{cases} 
   z^2 + w^2 = 5 \\
   z w = 4 
   \end{cases}$

**4.** Determina le soluzioni del sistema:  
   $\begin{cases} 
   |z| = 4 \\
   z + \overline{z} = 6 
   \end{cases}$

**5.** Risolvi il sistema:  
   $\begin{cases} 
   z^3 + w = 1 \\
   z w^3 = -1 
   \end{cases}$

**6.** Trova $z$ e $w$ per il sistema:  
   $\begin{cases} 
   z^2 + w^2 = 7 \\
   z + w = 3 
   \end{cases}$

**7.** Risolvi il sistema:  
   $\begin{cases} 
   |z| = 2 \\
   z + w = 0 
   \end{cases}$

**8.** Trova $z$ e $w$ che soddisfano il sistema:  
   $\begin{cases} 
   z w = 1 \\
   z - w = i 
   \end{cases}$

**9.** Determina le soluzioni del sistema:  
   $\begin{cases} 
   z^2 + \overline{z}^2 = 8 \\
   z \cdot \overline{z} = 9 
   \end{cases}$

**10.** Risolvi il sistema:  
    $\begin{cases} 
    z + w = 5 + i \\
    z \cdot w = 6 - i 
    \end{cases}$

````

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

````

````{only} latex

$$
\begin{minipage}[t]{.55\textwidth}
  \vspace{0pt}
La prima equazione si riduce a $2 \text{re}\{z\} = 6$. Usando la rappresentazione cartesiana, $z = x + i y$, il sistema può essere riscritto come
\begin{equation}\begin{cases}
  x = 3 \\
  \sqrt{x^2 +y^2} = 5
\end{cases}\end{equation}
Sostituendo la prima nella seconda si trova $\sqrt{9 + y^2} = 5$; elevando al quadrato i due numeri positivi, $y^2 = 25-9=16$ e quindi $y = \mp 4$. Il problema ha quindi due soluzioni
\newline
\textbf{Interpretazione grafica.} Le due equazioni corrispondono all'equazione della retta di equazione $x = 3$ e della circonferenza centrata nell'origine di raggio $5$. La soluzione del sistema coincide con la ricerca dei punti di intersezione di queste due curve.
\end{minipage}
\hspace{.05\textwidth}
\begin{minipage}[t]{.40\textwidth}
  \vspace{0pt}
  \includegraphics[width=.95\textwidth]{../../media/tikz/complex/ex-eq-01.pdf}
\end{minipage}
$$

````

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

$\begin{aligned}
  z_1 & = 3 - i 4 \\
  z_2 & = 3 + i 4
\end{aligned}$

**Interpretazione grafica.** Le due equazioni corrispondono all'equazione della retta di equazione $x = 3$ e della circonferenza centrata nell'origine di raggio $5$. La soluzione del sistema coincide con la ricerca dei punti di intersezione di queste due curve.

![](../../media/tikz/complex/ex-sy-01.svg)
<!-- *Didascalia, se necessaria* -->

```
````

````{only} latex

$$
\begin{minipage}[t]{.55\textwidth}
  \vspace{0pt}
\end{minipage}
\hspace{.05\textwidth} %
\begin{minipage}[t]{.40\textwidth}
  \vspace{0pt}
  \includegraphics[width=.95\textwidth]{../../media/tikz/complex/ex-sy-01.pdf}
\end{minipage}
$$

````

Soluzione degli [esercizi su disequazioni con i numeri complessi](math-hs:algebra:complex:problems:equations:ineq)

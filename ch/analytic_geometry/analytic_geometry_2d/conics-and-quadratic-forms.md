(geometry:analytic:2d:conics-and-quadratic-forms)=
# Coniche e forme quadratiche simmetriche

L'equazione polinomiale di secondo grado in due incognite può rappresentare le coniche &mdash; regolari e degeneri &mdash; in un piano, interprentando le due incognite $x$, $y$ come una coppia di coordinate cartesiane, che descrivono i punti del piano. In alcuni casi particolari, questa equazione non rappresenta una curva, ma un singolo punto oppure &mdash; in assenza di soluzioni dell'equazione &mdash; nessun ente geometrico.

Per motivi di comodità e di sintesi, in questa sezione viene usato il formalismo matriciale: questo permette una scrittura più sintetica delle equazioni e l'utilizzo naturale di alcuni concetti e risultati di algebra lineare riguardanti le trasformazioni di coordinate, la diagonalizzazione di una matrice (decomposizione spettrale), e il determinante di matrice.

In particolare, l'equazione di secondo grado viene scritta come

$$\begin{aligned}
0 
  & = A x^2 + B x y + C y^2 + D x + E y + F = \\
  & = \begin{bmatrix} x \\ y \\ 1 \end{bmatrix} \begin{bmatrix} A & B/2 & D/2 \\ B/2 & C & E/2 \\ D/2 & E/2 & F \end{bmatrix} \begin{bmatrix} x \\ y \\ 1 \end{bmatrix} = \\
  & = \mathbf{z}^T \begin{bmatrix} \mathbf{A} & \frac{1}{2}\mathbf{d} \\ \frac{1}{2} \mathbf{d}^T & F \end{bmatrix} \mathbf{z} = \\
  & = \mathbf{z}^T \mathbf{M} \mathbf{z} \ .
\end{aligned}$$

La natura delle coniche può essere determinata tramite gli autovalori della matrice $\mathbf{A}$ e il determinante della matrice $\mathbf{M}$.

```{dropdown} Riassunto dei risultati
:open:

Se:
- $s_{1,2}(\mathbf{A}) \ne 0$ e concordi (si sceglie la convenzione $s_{1,2} > 0$ - è sufficiente cambiare segno a tutti i termini dell'equazione in caso contrario). Se:
  - $\text{det}(\mathbf{M}) < 0$: ellisse regolare
  - $\text{det}(\mathbf{M}) = 0$: punto singolo (ellisse degenera in un punto singolo)
  - $\text{det}(\mathbf{M}) > 0$: non esiste soluzione
- $s_{1,2}(\mathbf{A}) \ne 0$ e discordi (si sceglie la convenzione $s_1 > 0$). Se:
  - $\text{det}(\mathbf{M}) \ne 0$: iperbole regolare
  - $\text{det}(\mathbf{M}) = 0$: coppia di rette incidenti (l'iperbole degenera in una coppia di rette incidenti)
- $s_{1}(\mathbf{A}) \ne 0$, $s_2(\mathbf{A}) = 0$. Se:
   - $|\mathbf{M}| \ne 0$: parabola regolare
   - $|\mathbf{M}| = 0$. Se:
     - ...
     - ...
- $s_{1,2}(\mathbf{A}) = 0$, l'equazione si riduce all'equazione lineare $D x + E y + F = 0$.


```

$(1)$ **Equazione generale di secondo grado.**

$$\begin{aligned}
0 
  & = A x^2 + B x y + C y^2 + D x + E y + F = \\
  & = \mathbf{x}^T \mathbf{A} \mathbf{x} + \mathbf{d}^T \mathbf{x} + F = \\
  & = \begin{bmatrix} \mathbf{x}^T & 1 \end{bmatrix} \begin{bmatrix} \mathbf{A} & \frac{1}{2} \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T & F \end{bmatrix} \begin{bmatrix} \mathbf{x} \\ 1 \end{bmatrix} = \\
  & = \mathbf{z}^T \mathbf{M} \mathbf{z} \ ,
\end{aligned}$$

con

$$\mathbf{A} = \begin{bmatrix} A & B/2 \\ B/2 & C \end{bmatrix} \quad , \quad \mathbf{d} = \begin{bmatrix} D \\  E \end{bmatrix} \quad , \quad \mathbf{M} = \begin{bmatrix} A & B/2 & D/2 \\ B/2 & C & E/2 \\ D/2 & E/2 & F \end{bmatrix} = \begin{bmatrix} \mathbf{A} & \frac{1}{2}\mathbf{d} \\ \frac{1}{2} \mathbf{d}^T & 0 \end{bmatrix} \ .$$

$(2)$ **Rotazione delle coordinate.** In generale, esiste una rotazione delle coordinate $\mathbf{x} = \mathbf{R} \mathbf{x}_1$, the permette di eliminare il termine misto di secondo grado, $x_1 y_1$, dall'equazione diagonalizzando la matrice $\mathbf{A}$, $\mathbf{A}_d := \text{diag}\{ s_1, s_2 \} = \mathbf{R}^T \mathbf{A} \mathbf{R}$, dove $\mathbf{R}$ è una matrice di rotazione.

- La matrice $\mathbf{A}$ è simmetrica, ed è sempre diagonalizzabile (**todo** *aggiungere un box con la dimostrazione/discussione*) con una base di autovettori ortogonali, anche nel caso di autovalori coincidenti.

- In termini del vettore esteso $\mathbf{z} = \begin{bmatrix} \mathbf{x} \\ 1 \end{bmatrix}$, si può scrivere la trasformazione delle coordinate come

   $$\mathbf{z} = \begin{bmatrix} \mathbf{x} \\ 1 \end{bmatrix} = \begin{bmatrix} \mathbf{R} & \mathbf{0} \\ \mathbf{0}^T & 1 \end{bmatrix} \begin{bmatrix} \mathbf{x}_1 \\ 1 \end{bmatrix} = \widetilde{\mathbf{R}} \mathbf{z}_1 \ .$$

   In seguito a questa trasformazione di coordinate, l'equazione diventa

   $$\begin{aligned}
     0
     & = \mathbf{z}^T \mathbf{M} \mathbf{z} = \\
     & = \mathbf{z}^T_1 \widetilde{\mathbf{R}}^T \mathbf{M} \widetilde{\mathbf{R}} \mathbf{z}_1 = \\
     & = \mathbf{z}^T_1 \begin{bmatrix} \mathbf{A}_d & \frac{1}{2}\mathbf{R}^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T \mathbf{R} & F \end{bmatrix}  \mathbf{z}_1 \ .
   \end{aligned}$$

$(3)$ **Discussione casi a seconda di $\ \mathbf{A}_d$.** La matrice $\mathbf{A}_d = \begin{bmatrix} s_1 & 0 \\ 0 & s_2 \end{bmatrix}$, può avere
1. entrambi gli autovalori uguali a zero: in questi casi la matrice $\mathbf{A}_d = \mathbf{0}$ e la matrice di partenza $\mathbf{A} = \mathbf{0}$ identicamente: in questo caso l'espressione iniziale è al massimo di primo grado $D x + E y + F = 0$
2. un autovalore nullo. In questo caso, la matrice $\mathbf{A}_d = \begin{bmatrix} s_1 & 0 \\ 0 & 0 \end{bmatrix}$, è singolare e non invertibile
3. entrambi gli autovalori diversi da zero. In questo caso, la matrice $\mathbf{A}_d = \begin{bmatrix} s_1 & 0 \\ 0 & 0 \end{bmatrix}$, è non singolare, invertibile e la sua inversa è $\mathbf{A}_d^{-1} = \begin{bmatrix} \frac{1}{s_1} & 0 \\ 0 & \frac{1}{s_2} \end{bmatrix}$

$(3.1)$ ...

$(3.2)$ **Parabola e casi degeneri.**  **todo** *Calcolare in maniera esplicita il valore di autovalori e autovettori in questo caso. Questa espressione può essere utilizzata in seguito nella discussione dei risultati.*

```{dropdown} Decomposizione spettrale di $\ \mathbf{A}$

La matrice $\mathbf{A}$ ha un autovalre nullo se $B^2 = 4 AC$. Questo segue immediatamente dal calcolo degli zeri del determinante di $\mathbf{A} - s \mathbf{I}$,

$$0 = |\mathbf{A} - s \mathbf{I}| = ( A - s ) ( C - s ) - \frac{B^2}{4} = s^2 - ( A + C ) s + A C - \frac{B^2}{4} \ .$$

Per avere un autovalore uguale a zero, $s_2 = 0$, il termine di grado zero deve essere nullo per poter fattorizzare il polinomio e ottenere il risultato desiderato

$$0 = s ( s - ( A + C ) ) \quad , \quad s_1 = A + C \ , \quad s_2 = 0 \ .$$

Gli autovettori diventano quindi

$$\mathbf{0} = \begin{bmatrix} - C & \text{sgn}(B) \sqrt{AC} \\ \text{sgn}(B)\sqrt{AC} & - A \end{bmatrix} \begin{bmatrix} x_1 \\ y_1 \end{bmatrix} \quad \rightarrow \quad \mathbf{r}_1 \propto \begin{bmatrix} \text{sgn}(B)\sqrt{A} \\ \sqrt{C} \end{bmatrix}$$

$$\mathbf{0} = \begin{bmatrix} A & \text{sgn}(B)\sqrt{AC} \\ \text{sgn}(B)\sqrt{AC} & C \end{bmatrix} \begin{bmatrix} x_2 \\ y_2 \end{bmatrix} \quad \rightarrow \quad \mathbf{r}_2 \propto \begin{bmatrix} \text{sgn}(B)\sqrt{C} \\ -\sqrt{A} \end{bmatrix}$$

e la matrice di trasformazione di rotazione (dopo la normalizzazione degli autovettori)

$$\mathbf{R} = \frac{1}{\sqrt{A+C}}\begin{bmatrix} \text{sgn}(B) \sqrt{A} & \text{sgn}(B) \sqrt{C} \\ \sqrt{C} & - \sqrt{A} \end{bmatrix} \ .$$

```

**todo** *Se necessario, utilizzare l'espressione della matrice $\widetilde{\mathbf{R}}^T \mathbf{M} \widetilde{\mathbf{R}}$*,

$$\widetilde{\mathbf{R}}^T \mathbf{M} \widetilde{\mathbf{R}} = \begin{bmatrix} s_1 & 0 & \frac{1}{2} \mathbf{r}_1^T \mathbf{d} \\ 0 & 0 & \frac{1}{2} \mathbf{r}_2^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T \mathbf{r}_1 & \frac{1}{2} \mathbf{d}^T \mathbf{r}_2 & F \end{bmatrix} \ ,$$

*e del suo determinante, $| \widetilde{\mathbf{R}}^T \mathbf{M} \widetilde{\mathbf{R}} | = | \mathbf{M} | = - \frac{1}{4} \left( \mathbf{d}^T \mathbf{r}_2 \right)^2 s_1$.*

Nel caso $(3.2)$ l'espressione diventa

$$\begin{aligned}
  0 
  & = s_1 x_1^2 + \mathbf{d}^T \mathbf{R} \mathbf{x}_1 + F = \\
  & = s_1 x_1^2 + \mathbf{d}^T \begin{bmatrix} \mathbf{r}_1 & \mathbf{r}_2 \end{bmatrix} \mathbf{x}_1 + F = \\
  & = s_1 x_1^2 + \mathbf{d}^T \mathbf{r}_1 x_1 + \mathbf{d}^T \mathbf{r}_2 y_1 + F \ .
\end{aligned}$$

1. Se $\mathbf{d}^T \mathbf{r}_2 \ne 0$, si ottiene l'espressione di una parabola. In questo caso $|\mathbf{M}| \ne 0$.
2. Altrimenti, si ottengono $(a)$ due rette parallele distinte, $(b)$ due rette parallele coincidenti, $(c)$ nessuna soluzione a seconda delle soluzioni dell'equazione 

   $$s_1 x_1^2 + \mathbf{d}^T \mathbf{r}_1 x_1 + F = 0 \ .$$

```{dropdown} Calcolo di $\ \mathbf{d}^T \mathbf{r}_2$ in funzione dei coefficienti originali dell'equazione

$$\begin{aligned}
  \left(\mathbf{d}^T \mathbf{r}_2 \right)^2
  & = \left( \text{sgn}(B) D \sqrt{C} - E \sqrt{A} \right)^2 = \\
  & = D^2 C + E^2 A - 2 \text{sgn}(B) DE \sqrt{AC} = && ( 2 \text{sgn}(B) \sqrt{AC} = B ) \\
  & = D^2 C + E^2 A - B D E \ .
\end{aligned}$$

Nel caso in cui $AC - \frac{B^2}{4} = 0$ in analisi, questa espressione coincide con il determinante della matrice $\mathbf{M}$

$$\begin{aligned}
  |\mathbf{M}|
  & = \left| \begin{bmatrix} A & B/2 & D/2 \\ B/2 & C & E/2 \\ D/2 & E/2 & F \end{bmatrix} \right| = \\
  & = F \underbrace{\left(( AC - \frac{B^2}{4} \right)}_{=0} + \frac{E}{2} \left( \frac{D}{2} \frac{B}{2} - \frac{E}{2} A \right) + \frac{D}{2} \left( \frac{B}{2} \frac{E}{2} - \frac{D}{2} C \right) = \\
  & = \frac{1}{4} \left( BDE - AE^2 - CD^2 \right) = - \frac{1}{4} \left( \mathbf{d}^T \mathbf{r}_2 \right)^2 \ ,
\end{aligned}$$

cioè si ottiene un'espressione alternativa ed equivalente a quella trovata in precedenza del determinante di $\mathbf{M}$.

```

```{dropdown} Casi degeneri
:open:

I casi di parabola degenere si verificano quando sono soddisfatte le condizioni

$$\begin{aligned}
  0 & = \text{det}(\mathbf{A}) && 0 = A C - \frac{B^2}{4} && B = 2 \text{sgn}(B) \sqrt{AC} \\
  0 & = \text{det}(\mathbf{M}) && 0 = C D^2 + A E^2 - BDE \\
\end{aligned}$$

In questo caso $s_1 = A + C$, $\mathbf{r}_1 = \frac{1}{\sqrt{A+C}} \begin{bmatrix} \text{sgn}(B) \sqrt{A} \\ \sqrt{C} \end{bmatrix}$. L'equazione di secondo grado

$$s_1 x_1^2 + \mathbf{d}^T \mathbf{r}_1 x_1 + F = 0 \ ,$$

ha 2 soluzioni reali distinte, 2 soluzioni reali coincidenti, o nessuna soluzione reale, a seconda del valore del discriminante 

$$\begin{aligned}
  \Delta 
  & = b^2 - 4 a c = \\
  & = \left( \mathbf{d}^T \mathbf{r}_1 \right)^2 - 4 s_1 F = \\
  & = \frac{1}{A+C} \left( \text{sgn}(B) D \sqrt{A} + E \sqrt{C} \right)^2 - 4 (A+C) F = \\
  & = \frac{1}{A+C} \left( A D^2 + C E^2 + 2 \text{sgn}(B) DE \sqrt{AC} \right) - 4 (A+C) F = \\
  & = \frac{1}{A+C} \left( A D^2 + C E^2 + BDE \right) - 4 (A+C) F = \\
  & = \frac{1}{A+C} \left( A D^2 + C E^2 + C D^2 + A E^2 \right) - 4 (A+C) F = \\
  & = \frac{1}{A+C} ( A + C ) ( D^2 + E^2 ) - 4 (A+C) F = \\
  & = D^2 + E^2 - 4 ( A + C ) F \ .
\end{aligned}$$

```

$(3.3)$ **Ellissi/iperboli e casi degeneri.** In questo caso si può completare il quadrato &mdash; che coincide ad applicare una traslazione come trasformazione delle coordinate &mdash; per eliminare i termini del primo grado. La traslazione $\mathbf{x}_1 = \mathbf{x}_2 + \mathbf{x}_{1,C}$, o equivalentemente sul vettore

$$\mathbf{z}_1 = \begin{bmatrix} \mathbf{x}_1 \\ 1 \end{bmatrix} = \begin{bmatrix} \mathbf{I} & \mathbf{x}_{1,C} \\ \mathbf{0}^T & 1 \end{bmatrix} \begin{bmatrix} \mathbf{x}_2 \\ 1 \end{bmatrix} = \begin{bmatrix} \mathbf{I} & \mathbf{x}_{1,C} \\ \mathbf{0}^T & 1 \end{bmatrix} \mathbf{z}_2  \ .$$

L'equazione diventa

$$
0 = \mathbf{z}_2^T \begin{bmatrix} \mathbf{A}_d & \mathbf{A}_d \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{R}^T \mathbf{d} \\ \mathbf{x}_{1,C}^T \mathbf{A}_d + \frac{1}{2} \mathbf{d}^T \mathbf{R} & \mathbf{x}_{1,C}^T \mathbf{A}_d \mathbf{x}_{1,C} + \mathbf{x}^T_{1,C} \mathbf{R}^T \mathbf{d} + F \end{bmatrix} \mathbf{z}_2
$$

La traslazione che rende nulli i termini di primo grado, è la traslazione che rende nulli i coefficienti fuori dalla diagonale a blocchi,

$$\mathbf{A}_d \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{R}^T \mathbf{d} = \mathbf{0} \ ,$$

cioè, poiché la matrice $\mathbf{A}_d$ è invertibile,

$$\mathbf{x}_{1,C} = - \frac{1}{2} \mathbf{A}_d^{-1} \mathbf{R}^T \mathbf{d} \ ,$$

e quindi

$$\begin{aligned}
  0 
  & = \mathbf{z}_2^T \begin{bmatrix} \mathbf{A}_d & \mathbf{0} \\ \mathbf{0}^T & F - \frac{1}{4} \mathbf{d}^T \mathbf{R} \mathbf{A}_d^{-1} \mathbf{R}^T \mathbf{d} \end{bmatrix} \mathbf{z}_2 = \\
  & = \mathbf{z}_2^T \begin{bmatrix} \mathbf{A}_d & \mathbf{0} \\ \mathbf{0}^T & F - \frac{1}{4} \mathbf{d}^T \mathbf{A}^{-1} \mathbf{d} \end{bmatrix} \mathbf{z}_2 = \\
  & = \mathbf{z}_2^T \begin{bmatrix} \mathbf{A}_d & \mathbf{0} \\ \mathbf{0}^T & f \end{bmatrix} \mathbf{z}_2 = \\
  & = s_1 x_2^2 + s_2 y_2^2 + f \ .
\end{aligned}$$

Nel caso in cui:
- $s_1 > 0$, $s_2 > 0$:
  - se $f < 0$: ellisse regolare, $\frac{x_2^2}{\left( \sqrt{\frac{-f}{s_1}} \right)^2} + \frac{y_2^2}{\left( \sqrt{\frac{-f}{s_2}} \right)^2} = 1$
  - se $f = 0$: punto $x_2 = y_2 = 0$
  - se $f > 0$: nessuna soluzione

- $s_1 \cdot s_2 < 0$, con $s_1 > 0$:
  - se $f \ne 0$ iperbole regolare, $\frac{x_2^2}{\left( \sqrt{\frac{|f|}{s_1}} \right)^2} - \frac{y_2^2}{\left( \sqrt{\frac{|f|}{-s_2}} \right)^2} = - \text{sgn}(f)$
  - se $f = 0$, iperbole degenere in due rette coincidenti, 

    $$0 = |s_1| x_2^2 - |s_2| y_2^2 = \left( \sqrt{|s_1|} x_2 - \sqrt{|s_2|} y_2 \right)\left( \sqrt{|s_1|} x_2 + \sqrt{|s_2|} y_2 \right) \ .$$

Quando $f = 0$, allora $| \mathbf{M} | = 0$, poichè $f = \frac{|\mathbf{M}|}{|\mathbf{A}|}$ se $|\mathbf{A}| \ne 0$. (**todo** *vedi dimostrazione sotto*).

```{dropdown} Determinante di $\ \widetilde{\mathbf{R}}$
:open:

La matrice 

$$\widetilde{\mathbf{R}} = \begin{bmatrix} \mathbf{R} & \mathbf{x}_{1,C} \\ \mathbf{0}^T & 1 \end{bmatrix} \ ,$$

è una matrice triangolare a blocchi (quadrati) e quindi il suo determinante è uguale al prodotto dei determinanti dei blocchi. Il determinante di una matrice di rotazione è uguale a $1$, il determinante del blocco $1 \times 1$, $\begin{bmatrix} \ 1 \  \end{bmatrix}$ è uguale a $1$. Segue quindi che

$$|\widetilde{\mathbf{R}}| = |\mathbf{R}| \, | \begin{bmatrix} \ 1 \ \end{bmatrix} | = 1 \cdot 1 = 1 \ .$$

In maniera più esplicita, la generica matrice di rotazione $2 \times 2$ può essere scritta in funzione di un angolo di rotazione $\theta$,

$$\mathbf{R} = \begin{bmatrix} \cos \theta & \sin \theta \\ -\sin \theta & \cos \theta \end{bmatrix} \ ,$$

così che la matrice $\mathbf{M}$ diventa

$$\mathbf{M} = \begin{bmatrix} \cos \theta & \sin \theta & x_{1,C} \\ -\sin\theta & \cos \theta & y_{1,C} \\ 0 & 0 & 1 \end{bmatrix}$$

e il suo determinante diventa quindi

$$|\mathbf{M}| = \cos \theta \cdot \cos \theta \cdot 1 - 1 \cdot ( - \sin \theta ) \cdot \sin \theta = 1 \ .$$

```

```{dropdown} $f = \text{det}(\mathbf{M}) / \text{det}(\mathbf{A})$

La trasformazione $\widetilde{\mathbf{R}}$ ha determinante unitario. La matrice $\widetilde{\mathbf{R}}^T \mathbf{M} \widetilde{\mathbf{R}}$ è diagonale a blocchi. Segue che 

$$|\mathbf{M}| = |\widetilde{\mathbf{R}}^T \mathbf{M} \widetilde{\mathbf{R}}| = | \mathbf{A}_d | \, | \begin{bmatrix} \ f \ \end{bmatrix} | = | \mathbf{A}| \cdot f \ ,$$

e quindi

$$f = \frac{\text{det}(\mathbf{M})}{\text{det}(\mathbf{A})} \ .$$

```

```{dropdown} Un po$'$ di algebra: $\ \widetilde{\mathbf{R}}^T \mathbf{M} \widetilde{\mathbf{R}}$
:open:

$$\begin{aligned}
 \widetilde{\mathbf{R}}^T \mathbf{M} \widetilde{\mathbf{R}}
 & = \begin{bmatrix}  \mathbf{R}^T & \mathbf{0} \\ \mathbf{0}^T & 1  \end{bmatrix} \begin{bmatrix} \mathbf{A} & \frac{1}{2} \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T & F \end{bmatrix} \begin{bmatrix} \mathbf{R} & \mathbf{0} \\ \mathbf{0}^T & 1 \end{bmatrix} = \\
 & = \begin{bmatrix} \mathbf{R}^T \mathbf{A} & \frac{1}{2}\mathbf{R}^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T & F \end{bmatrix} \begin{bmatrix} \mathbf{R} & \mathbf{0} \\ \mathbf{0}^T & 1 \end{bmatrix} = \\ 
 & = \begin{bmatrix} \mathbf{R}^T \mathbf{A} \mathbf{R} & \frac{1}{2}\mathbf{R}^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T \mathbf{R} & F \end{bmatrix} = \\ 
 & = \begin{bmatrix} \mathbf{A}_d & \frac{1}{2}\mathbf{R}^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T \mathbf{R} & F \end{bmatrix} \ .
\end{aligned}$$

$$\begin{aligned}
 & \begin{bmatrix} \mathbf{I} & \mathbf{0} \\ \mathbf{x}_{1,C}^T & 1 \end{bmatrix} \begin{bmatrix} \mathbf{A}_d & \frac{1}{2} \mathbf{R}^T \mathbf{d} \\ \frac{1}{2} \mathbf{d}^T \mathbf{R} & F \end{bmatrix} \begin{bmatrix} \mathbf{I} & \mathbf{x}_{1,C} \\ \mathbf{0}^T & 1 \end{bmatrix} = \\
 & = \begin{bmatrix} \mathbf{A}_d & \frac{1}{2} \mathbf{R}^T \mathbf{d} \\ \mathbf{x}_{1,C}^T \mathbf{A}_d + \frac{1}{2} \mathbf{d}^T \mathbf{R} & \frac{1}{2} \mathbf{x}_{1,C}^T \mathbf{R}^T \mathbf{d} + F \end{bmatrix} \begin{bmatrix} \mathbf{I} & \mathbf{x}_{1,C} \\ \mathbf{0}^T & 1 \end{bmatrix} = \\ 
 & = \begin{bmatrix} \mathbf{A}_d & \mathbf{A}_d \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{R}^T \mathbf{d} \\ \mathbf{x}_{1,C}^T \mathbf{A}_d + \frac{1}{2} \mathbf{d}^T \mathbf{R} & \mathbf{x}_{1,C}^T \mathbf{A}_d \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{d}^T \mathbf{R} \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{x}^T_{1,C} \mathbf{R}^T \mathbf{d} + F \end{bmatrix} \\
 & = \begin{bmatrix} \mathbf{A}_d & \mathbf{A}_d \mathbf{x}_{1,C} + \frac{1}{2} \mathbf{R}^T \mathbf{d} \\ \mathbf{x}_{1,C}^T \mathbf{A}_d + \frac{1}{2} \mathbf{d}^T \mathbf{R} & \mathbf{x}_{1,C}^T \mathbf{A}_d \mathbf{x}_{1,C} + \mathbf{x}^T_{1,C} \mathbf{R}^T \mathbf{d} + F \end{bmatrix} \ .
\end{aligned}$$

```


## Esercizi



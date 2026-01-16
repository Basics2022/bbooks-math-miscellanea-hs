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

<!--
```{dropdown} Casi degeneri

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
-->

```{dropdown} Rango della matrice nel caso di parabola degenere
:open:

Nel caso di $\mathbf{d}^T \mathbf{r}_2 = 0$, la matrice $\widetilde{\mathbf{M}}$ è singolare e quindi ha rango $\le 2$. Facendo riferimento all'equazione

$$s_1 x_1^2 + \mathbf{d}^T \mathbf{r}_1 x_1 + F = 0 \ ,$$

si possono riconoscere diversi casi a seconda del valore del **discriminante** $\Delta_1 = \left( \mathbf{d}^T \mathbf{r}_1 \mathbf{r}_1 \right)^2 - 4 s_1 F$.
- $\Delta_1 > 0$: esistono due soluzioni $x_{1,a,b} = - \frac{\mathbf{d}^T}{2 s_1} \mp \frac{\sqrt{\Delta_1}}{2 s_1}$ reali distinte, che corrispondono alle due rette parallele di equazione $x_1 = x_{1,a}$ e $x_1 = x_{1,b}$
- $\Delta_1 = 0$: esistono due soluzioni reali coincidenti, $x_{1,a} = x_{1,b} = - \frac{\mathbf{d}^T \mathbf{r}_1}{2 s_1}$, che corrispondono entrambe alla retta di equazione $x_1 = x_{1,a}$
- $\Delta_1 < 0$: non esistono soluzioni reali dell'equazione, cioè l'espressione non rappresenta nessun punto nel piano

Si possono ritrovare gli stessi risultati tramite **completamento del quadrato**

$$\begin{aligned}
  0
  & = s_1 x_1^2 + \mathbf{d}^T \mathbf{r}_1 x_1 + F = \\
  & = s_1 \left[ x_1^2 + 2 \frac{\mathbf{d}^T \mathbf{r}_1}{2 s_1} x_1 + \left( \frac{\mathbf{d}^T \mathbf{r}_1}{2 s_1} \right)^2 \right] + F - \frac{\left(\mathbf{d}^T \mathbf{r}_1\right)^2}{4 s_1} = \\
  & = s_1 \left\{ \left( x_1 + \frac{\mathbf{d}^T \mathbf{r}_1}{2 s_1} \right)^2 + \frac{1}{4 s_1^2} \left( 4 s_1 F - \left(\mathbf{d}^T \mathbf{r}_1\right)^2 \right) \right\} = \\
  & = s_1 \left\{ \left( x_1 + \frac{\mathbf{d}^T \mathbf{r}_1}{2 s_1} \right)^2 - \frac{\Delta_1}{4 s_1^2} \right\} \ .
\end{aligned}$$

Poiché $s_1 \ne 0$, questo è equivalente ad annullare il fattore contenuto nella parentesi graffa. La **fattorizzazione del polinomio** di secondo grado dipende dal valore del discriminante
- $\Delta_1 < 0$, il polinomio di secondo grado può essere fattorizzato come prodotto di due polinomi di primo grado, usando l'identità $a^2 - b^2 = (a+b)(a-b)$

   $$x_1^2 + \frac{\mathbf{d}^T \mathbf{r}_1}{s_1} + \frac{F}{s_1} = \left( x_1 + \frac{\mathbf{d}^T \mathbf{r}_1}{2 s_1} + \frac{\sqrt{\Delta_1}}{2 s_1} \right) \left( x_1 + \frac{\mathbf{d}^T \mathbf{r}_1}{2 s_1} - \frac{\sqrt{\Delta_1}}{2 s_1} \right) $$

- $\Delta_1 = 0$, il polinomio di secondo grado può essere fattorizzato come quadrato di un polinomio di primo grado

   $$x_1^2 + \frac{\mathbf{d}^T \mathbf{r}_1}{s_1} + \frac{F}{s_1} = \left( x_1 + \frac{\mathbf{d}^T \mathbf{r}_1}{2 s_1} \right)^2 $$

- $\Delta_1 < 0$, il polinomio di secondo grado non può essere fattorizzato come prodotto di polinomi a coefficienti reali di primo grado, poiché si otteiene un polinomio nella forma $a^2 + b^2$

Gli stessi risultati possono essere discussi anche in termini di **rango della matrice $\mathbf{M}$**, o equivalentemente della matrice $\widetilde{\mathbf{M}} = \widetilde{\mathbf{R}}^T \mathbf{M} \widetilde{\mathbf{R}}$. Nel caso in analisi con $\mathbf{d}^T \mathbf{r}_2 = 0$, la matrice diventa

$$\widetilde{\mathbf{M}} = \begin{bmatrix} s_1 & 0 & \frac{1}{2} \mathbf{r}_1^T \mathbf{d} \\ 0 & 0 & 0 \\ \frac{1}{2} \mathbf{d}^T \mathbf{r}_1 & 0 & F \end{bmatrix} \ ,$$

e il polinomio $\mathbf{z}_1^T \widetilde{\mathbf{M}} \mathbf{z}_1$. La matrice $\widetilde{\mathbf{M}}$ ha una colonna identicamente nulla, quindi ha al massimo rango di dimensione uguale a $2$: ha rango di dimensione uguale a $2$ se le altre sue colonne sono linearmente indipendenti, rango uguale a $1$ se sono linearmente indipendenti, rango uguale a $0$ se tutti i termini sono nulli (ipotesi da escludere, poiché si è ipotizzato che $s_1 \ne 0$).

Usando il formalismo matriciale, il completamento del quadrato può essere scritto come

$$\begin{aligned}
  \mathbf{z}_1^T \frac{\widetilde{\mathbf{M}}}{s_1} \mathbf{z}_1 
  & = \mathbf{z}_1^T \left( \begin{bmatrix} 1 & \cdot & \frac{\mathbf{r}_1^T \mathbf{d}}{2 s_1} \\ \cdot & \cdot & \cdot \\ \frac{\mathbf{d}^T \mathbf{r}_1}{2 s_1} & \cdot & \left( \frac{\mathbf{d}^T \mathbf{r}_1}{2 s_1} \right)^2 \end{bmatrix} + \begin{bmatrix} \cdot & \cdot & \cdot \\ \cdot & \cdot & \cdot \\ \cdot & \cdot & \frac{F}{s_1} - \frac{\left(\mathbf{d}^T\mathbf{r}_1\right)^2}{4 s_1^2} \end{bmatrix} \right) \mathbf{z}_1 = \\
  & = \mathbf{z}_1^T \left( \begin{bmatrix} 1 \\ \cdot \\ \frac{\mathbf{r}_1^T \mathbf{d}}{2 s_1} \end{bmatrix} \begin{bmatrix} 1 & \cdot & \frac{\mathbf{r}_1^T \mathbf{d}}{2 s_1} \end{bmatrix} - \text{sgn}(\Delta_1) \begin{bmatrix} \cdot \\ \cdot \\ |\sqrt{|\Delta_1|}| \end{bmatrix} \begin{bmatrix} \cdot & \cdot & \sqrt{|\Delta_1|} \end{bmatrix} \right) \mathbf{z}_1 = \\
  & = \mathbf{z}_1^T \left( \mathbf{u} \mathbf{u}^T - \text{sgn}(\Delta_1) \mathbf{v} \mathbf{v}^T \right) \mathbf{z}_1 = \\
\end{aligned}$$

Nel caso in cui 

- $\Delta_1 > 0$, il rango della matrice ha dimensione uguale a $2$ e la fattorizzazione della matrice diventa $\frac{\widetilde{\mathbf{M}}}{s_1} = ( \mathbf{u} + \mathbf{v})(\mathbf{u} - \mathbf{v})^T$, poiché

  $$\mathbf{z}_1^T ( \mathbf{u} + \mathbf{v})(\mathbf{u} - \mathbf{v})^T \mathbf{z}_1 = \mathbf{z}_1^T \left( \mathbf{u} \mathbf{u} + \mathbf{v}\mathbf{u}^T - \mathbf{u}\mathbf{v}^T - \mathbf{v}\mathbf{v}^T \right) \mathbf{z}_1 = \mathbf{z}_1^T \left( \mathbf{u} \mathbf{u} - \mathbf{v}\mathbf{v}^T \right) \mathbf{z}_1 \ ,$$

  poiché $\mathbf{z}_1^T \mathbf{v} \mathbf{u}^T \mathbf{z}_1 = \mathbf{z}_1^T \mathbf{u} \mathbf{v}^T \mathbf{z}_1$. La forma quadratica può essere scritta in forma simmetrica e quindi la matrice può essere riscritta come matrice simmetrica, $\widetilde{\mathbf{M}} = \frac{1}{2} \left( \widetilde{\mathbf{u}} \widetilde{\mathbf{v}}^T + \widetilde{\mathbf{v}} \widetilde{\mathbf{u}}^T  \right)$, con $\widetilde{\mathbf{u}} := \mathbf{u} + \mathbf{v}$, $\widetilde{\mathbf{v}} := \mathbf{u} - \mathbf{v}$ linearmente indipendenti. Esplicitando le componenti della matrice ridotta a $2 \times 2$ rimuovendo per ragioni di sintesi la colonna e la riga identicamente nulla, le componenti della matrice $\widetilde{\mathbf{M}}$ sono

  $$\frac{\widetilde{\mathbf{M}}}{s_1} = \begin{bmatrix}
    \frac{1}{2}\left( \widetilde{u}_1 \widetilde{v}_1 + \widetilde{u}_1 \widetilde{v}_1 \right) & 
    \frac{1}{2}\left( \widetilde{u}_2 \widetilde{v}_1 + \widetilde{u}_1 \widetilde{v}_2 \right) \\
    \frac{1}{2}\left( \widetilde{u}_1 \widetilde{v}_2 + \widetilde{u}_2 \widetilde{v}_1 \right) & 
    \frac{1}{2}\left( \widetilde{u}_2 \widetilde{v}_2 + \widetilde{u}_2 \widetilde{v}_2 \right)  
  \end{bmatrix} =
  \begin{bmatrix}
    \frac{1}{2} \left( \widetilde{u}_1 \widetilde{\mathbf{v}} + \widetilde{v}_1 \widetilde{\mathbf{u}} \right) &
    \frac{1}{2} \left( \widetilde{u}_2 \widetilde{\mathbf{v}} + \widetilde{v}_2 \widetilde{\mathbf{u}} \right) 
  \end{bmatrix} \ ,
  $$

  cioé ha due colonne linearmente indipendenti se $\widetilde{\mathbf{u}} \ne \lambda \widetilde{\mathbf{v}}$, cioé se $\widetilde{\mathbf{u}}$, $\widetilde{\mathbf{v}}$ sono linearmente indipendenti, condizione verificata dall'indipendenza di $\mathbf{u}$, $\mathbf{v}$,

- $\Delta_1 = 0$, il rango della matrice ha dimensione uguale a $1$ e la fattorizzazione diventa

   $$\begin{aligned}
     \mathbf{z}_1^T \frac{\widetilde{\mathbf{M}}}{s_1} \mathbf{z}_1 
     & = \mathbf{z}_1^T \left( \mathbf{u} \mathbf{u}^T  \right) \mathbf{z}_1  \ .
   \end{aligned}$$

- $\Delta_1 < 0$, il rango della matrice ha dimensione $2$. Infatti si può scrivere

   $$\begin{aligned}
     \mathbf{z}_1^T \frac{\widetilde{\mathbf{M}}}{s_1} \mathbf{z}_1 
     & = \mathbf{z}_1^T \left( \mathbf{u} \mathbf{u}^T + \mathbf{v} \mathbf{v}^T \right) \mathbf{z}_1 \ ,
   \end{aligned}$$

   o esplicitando - sempre in maniera simbolica - le componenti della matrice,

   $$\begin{aligned}
     \frac{\widetilde{\mathbf{M}}}{s_1} 
     & = \begin{bmatrix} u_1 \mathbf{u} + v_1 \mathbf{v} & u_2 \mathbf{u} + v_2 \mathbf{v} \end{bmatrix} \ .
   \end{aligned}$$

   Poiché $\Delta_1 \ne 0$, i vettori $\mathbf{u}$ e $\mathbf{v}$ sono linearmente indipendenti. Le colonne della matrice quindi sono linearmente indipendenti. Infatti, per essere linearmente dipendenti devono essere proporzionali, cioè dovrebbe esistere un coefficiente $\lambda$ tale che 

   $$\mathbf{c}_1 = \lambda \mathbf{c}_2$$

   e quindi

   $$\mathbf{0} = \mathbf{u}\left( u_1 - \lambda u_2\right) + \mathbf{v} \left( v_1 - \lambda v_2 \right) \ ,$$

   e - per l'indipendenza di $\mathbf{u}$, $\mathbf{v}$ - si devono annullare entrambi i coefficienti, $u_1 = \lambda u_2$, $v_1 = \lambda v_2$ e i due vettori risulterebbero tra di loro proporzionali, o linearmente dipendenti, $\mathbf{u} = u_2 \begin{bmatrix} \lambda \\ 1 \end{bmatrix}$, $\mathbf{v} = v_2 \begin{bmatrix} \lambda \\ 1 \end{bmatrix}$, condizione esclusa in partenza dalla condizione $\Delta_1 \ne 0$.

```

<!--

```{dropdown} Rango della matrice $\ \mathbf{M}$

Il rango di una matrice è lo spazio generato dalle sue colonne

```
-->
<!--
   ...

- $\Delta = 0$, esistono due soluzioni reali coincidenti

   $$s_1 F = \frac{1}{4} \left( \mathbf{d}^T \mathbf{r}_1 \right)^2 \ ,$$
   
   e quindi, poiché $s_1 \ne 0$,
   
   $$F = \frac{1}{4 s_1} \left( \mathbf{d}^T \mathbf{r}_1 \right)^2 \ .$$
   
   La matrice $\widetilde{\mathbf{M}}$ ha una colonna - la seconda - identicamente nulla, e la prima e la terza colonna linearmente dipendenti: il rango della matrice ha dimensione uguale a $1$,
   
   $$\mathcal{R}(\mathbf{A}) = \left\{ \begin{bmatrix} s_1 \\ 0 \\ \frac{1}{2} \mathbf{d}^T \mathbf{r}_1 \end{bmatrix} \right\} \ ,$$
   
   e la matrice diventa
   
   $$\widetilde{\mathbf{M}} = \begin{bmatrix} s_1 & 0 & \frac{1}{2} \mathbf{d}^T \mathbf{r}_1 \\ 0 & 0 & 0 \\ \frac{1}{2} \mathbf{d}^T \mathbf{r}_1 & 0 & \frac{1}{4 s_1}\left( \mathbf{d}^T \mathbf{r}_1 \right)^2 \end{bmatrix} = s_1 \begin{bmatrix} 1 \\ 0 \\ \frac{1}{2 s_1} \mathbf{d}^T \mathbf{r}_1 \end{bmatrix} \begin{bmatrix} 1 & 0 & \frac{1}{2 s_1} \mathbf{d}^T \mathbf{r}_1 \end{bmatrix} \ .$$

   L'espressione dell'equazione può quindi essere riscritta dopo aver fattorizzato il polinomio come

   $$0 = s_1 \left( x_1 + \frac{1}{2 s_1} \mathbf{d}^T \mathbf{r}_1 \right)^2 \ .$$

- $\Delta < 0$, non esistono soluzioni

   ...
-->



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



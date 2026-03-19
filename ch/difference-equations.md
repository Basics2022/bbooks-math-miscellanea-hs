(math-hs:difference-equations)=
# Equazioni alle differenze

```{dropdown} Osservazioni

* Le equazioni alle differenze possono essere viste come la controparte discreta di [equazioni differenziali](ode-hs). Questo risulta ancor più evidente nella risoluzione numerica delle equazioni differenziali.

* *I capitoli dovrebbero avere più o meno la stessa organizzazione, per evidenziale queste similitudini. Questo dovrebbe essere fatto però dopo che si sia acquisita una sufficiente dimestichezza con il calcolo infinitesimale*

```

(math-hs:difference-equations:def)=
## Prime definizioni

(math-hs:difference-equations:types)=
## Classificazione, esempi e tecniche risolutive

(ode-hs:types:linear-const)=
### Equazioni lineari a coefficienti constanti

(ode-hs:types:linear-const:ex)=
#### Examples

La soluzione di equazioni lineari omogenee ha la forma

$$y_n = c \cdot A^n \ .$$

````{dropdown} Equazione lineare omogenea del primo ordine
:open:

$$\begin{aligned}
  y_{n+1} & = a y_n \\
  y_0     & = y^{(0)}
\end{aligned}$$

```{dropdown} Soluzione
:open:

**Soluzione.** Inserendo la forma generale della soluzione nell'equazione e nella condizione iniziale, si ottiene il sistema di equazioni

$$\begin{cases}
  c \cdot A^{n} ( A - a ) = 0 \\
  c A^0 = y^{(0)} \ .
\end{cases}$$

Il caso $A = 0$ viene escluso da condizioni iniziali non-nulle: in questi casi $A^0 = 1$ e il sistema si riduce a 

$$\begin{cases}
  A - a = 0 \\
  c  = y^{(0)} \ .
\end{cases}$$

La soluzione del sistema, $c = y^{(0)}$ e $A = a$, porta alla soluzione dell'equazione lineare del primo ordine

$$y_{n} = y^{(0)} a^{n} \ .$$

**Discussione del risultato in base al valore di $a$.**

* Per $|a| > 1$ la soluzione diverge. Per $a > 1$ diverge in maniera monotona verso $\mp \infty$ a seconda che la condizione iniziale sia negativa o positiva rispettivamente. Per $a < 1$ la soluzione diverge con oscillazioni di ampiezza sempre crescente, alternando un valore positivo a uno negativo
* Per $|a| < 1$ la soluzione converge a $0$. Per $a \in (0,1)$ la convergenza è monotona, per $a \in (-1,0)$ la convergenza alterna valori positivi e negativi, ma con valore assoluto sempre decresente.
* Per $|a| = 0$ la soluzione diventa $y_n = 0$, per ogni $n \ge 1$, per qualsiasi condizione iniziale $y^{(0)}$
* Per $ a  = 1$ la soluzione è costante $y_n = y^{(0)}$.
* Per $ a  =-1$ la soluzione è oscillante, $y_n = (-1)^n y^{(0)}$.

```
````

````{dropdown} Equazione lineare non-omogenea del primo ordine, con forzante costante
:open:

$$\begin{aligned}
  y_{n+1} & = a y_n + f \\
  y_0     & = y^{(0)}
\end{aligned}$$

```{dropdown} Soluzione
:open:

**Soluzione.** La soluzione può essere scritta come somma di una soluzione dell'equazione omogenea e di una soluzione particolare dell'equazione non omogenea.

La soluzione dell'omogenea è stata ricavata in precedenza, $y^o_n = c a^n$. Per analogia con la forzante - tecnica usata anche nella soluzione delle equazioni differenziali - si cerca una soluzione particolare costante: inserendo un valore costante al posto di $y_n$, $y_{n+1}$, si ottiene $y^p_n = \frac{f}{1-a}$, definita per $a \ne 1$. Il caso in cui $a = 1$ viene discusso in seguito. La soluzione dell'equazione non omogenea ha espressione $y_n = c a^n + \frac{f}{1-a}$, che dopo aver inserito le condizioni iniziali, diventa

$$y_n = y^{(0)} a^n + \frac{f}{1-a} \left( 1 -  a^n \right) \ .$$

**Caso in cui $a = 1$.** In questo caso, la soluzione dell'equazione omogenea è costante e quindi la soluzione particolare dell'equazione non-omogenea non è una soluzione linearmente indipendente. In questo caso, si cerca una soluzione particolare dell'equazione non-omogenea nella forma $y_n = A n$[^footnote-magic]. Inserendo questa espressione nell'equazione non omogenea si ottiene

$$A ( n + 1 ) = A n + f \ .$$

Quindi $A = f$, e la soluzione particolare è $y^{p}_n = f n$. La soluzione completa diventa

$$y_{n} = y^{(0)} + f n \ .$$

[^footnote-magic]: Sembra magia, ma non lo è...**todo** toccherà scrivere due parole. Intanto si rimanda al box **Radici multiple - dimostrazione** per la [soluzione dell'equazione omogenea](ode-hs:types:linear-const:sol:homo), per le equazioni differenziali lineari a coefficienti costanti. Il procedimento è simile, con le dovute differenze tra il caso continuo e discreto). 

```

````

````{dropdown} Equazione lineare omogenea del secondo ordine
:open:

$$\begin{aligned}
  y_{n+1} & = a_n y_n + a_{n-1} y_{n-1}  \\
  y_0     & = y^{(0)} \\
  y_1     & = y^{(1)}
\end{aligned}$$

```{dropdown} Soluzione
:open:

Si cerca la soluzione dell'omogena inserendo l'espressione $y_n = c A^n$ nell'equazione. Scartando la soluzione banale - che deve essere concorde con condizioni iniziali identicamente nulle - si ottiene l'equazione di secondo grado

$$A^{2} - a_n A - a_{n-1} A = 0 \ , $$

Se le radici sono distinte, queste costituiscono la base delle due soluzioni linearmente indipendenti dell'equazione, che diventa

$$y_n = c_1 A_1^n + c_2 A_2^n \ .$$

Se le radici sono uguali,...[^footnote-magic]





```

````

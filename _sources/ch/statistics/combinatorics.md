(math-hs:statistics:combinatorics)=
# Calcolo combinatorio

Il calcolo combinatorio si occupa di contare i diversi modi possibili per organizzare un insieme finito di elementi.

## Permutazioni

Una permutazione di un insieme $I = \{ a_i \}_{i=1:n}$ di $n$ elementi è una configurazione ordinata dei suoi elementi 

$$\left( a_{p_1}, a_{p_2}, \dots, a_{p_n} \right) \ ,$$

nella quale ogni elemento viene presentato **una e una sola volta**. Si definiscono le **permutazioni semplici**, se l'insieme $I$ non ha elementi ripetuti, e le **permutazioni con ripetizioni** se l'insieme $I$ può avere elementi uguali.

### Permutazioni semplici
Il numero di permutazioni semplici di un insieme di $n$ elementi è

$$P_n = n (n-1) \dots 2 \cdot 1 = n! \ ,$$

poichè ci sono $n$ modi di scegliere il primo elemento, $n-1$ modi di scegliere il secondo elemento una volta scelto il primo, $n-2$ modi di scegliere il terzo elemento della sequenza una volta scelti i primi due, e così via fino all'ultimo elemento per il quale esiste un solo modo,

### Permutazioni con ripetizioni
Il numero di permutazioni con ripetizione distinte di un insieme di $n$ elementi è

$$P_{n, \mathbf{r}} = \frac{n!}{n_1! n_2! \dots n_r!} \ ,$$

essendoci $r$ elementi distinti nell'insieme $I$ e l'elemento $i$ ripetuto $n_i$ volte, e quindi $n = \sum_{r} n_r$. Supponendo che tutti gli elementi siano distinguibili, data una permutazione, esistono $n_1!$ modi di disporre gli $n_1$ elementi $a_1$ ripetuti, $n_2!$ modi di disporre gli $n_2$ elementi $a_2$ ripetuti,...e quindi il numero di sequenze distinte nel quale gli elementi uguali non sono distinguibili è uguale al numero di tutte le permutazioni semplici diviso il prodotto degli $r$ fattoriali $n_i!$.


## Disposizioni

### Disposizioni semplici
Dato un insieme $I$ di $n$ elementi distinti, una disposizione di $k$ elementi è una **configurazione ordinata** di $k \le n$ elementi nella quale non si possono avere ripetizioni degli elementi di $I$. Il numero di disposizioni semplici è quindi

$$D_{n,k} = n (n-1) \dots (n-k+1) = \frac{n!}{(n-k)!} \ ,$$

seguendo lo stesso ragionamento con il quale si è ricavato il numero di permutazioni semplici, ma fermandosi alla scelta di $k \le n$ elementi.

**Osservazione.** Se $k = n$, le disposizioni semplici corrispondono alle permutazioni semplici.

### Disposizioni con ripetizioni
Dato un insieme $I$ di $n$ elementi distinti, una disposizione di $k$ elementi è una **configurazione ordinata** di $k \le n$ elementi nella quale si possono avere ripetizioni degli elementi di $I$. Ogni elemento distinto dell'insieme $I$ può essere scelto più volte. Il numero di disposizioni semplici è

$$D'_{n,k} = \underbrace{n \cdot n \cdot \dots \cdot n}_{\text{$k $ volte}} = n^k \ ,$$

poiché ognuno degli $n$ elementi distinti dell'insieme di partenza può essere scelto ogni volta.

## Combinazioni

### Combinazioni semplici
Dato un insieme $I$ di $n$ elementi distinti, una combinazione semplice di $k$ elementi è una **configurazione non ordinata** di $k \le n$ elementi dell'insieme $I$, nella quale non si possono ripetere gli elementi di $I$. Il numero di permutazioni semplici di $k$ elementi è uguale al numero $D_{n,k}$ delle disposizioni semplici di $k$ oggetti di un insieme di $n$ elementi (per le quali l'ordine è importante), diviso il numero di permutazioni semplici di $k$ elementi (che è uguale al numero di modi di configurazioni ordinate dei $k$ elementi di una disposizione),

$$C_{n,k} = \frac{D_{n.k}}{P_k} = \frac{n!}{(n-k)! k!} = \left( \begin{matrix} n \\ k \end{matrix} \right) \ .$$


### Combinazioni con ripetizioni
Dato un insieme $I$ di $n$ elementi distinti, una combinazione con ripetizione di $k$ elementi è una **configurazione non ordinata** di $k$ elementi dell'insieme $I$, nella quale ogni elemento può essere ripetuto $k$ volte.

Il numero di combinazioni di $k$ elementi con ripetizione degli elementi di un insieme $I$ di $n$ elementi distinti è uguale al numero di permutazioni con ripetizioni di $k + n - 1$ elementi di un insieme di partenza con due elementi, uno ripetuto $n-1$ volte, l'altro $k$ volte, cioè

$$C'_{n,k} = P_{n+k-1, (n-1,k)} = \frac{(n+k-1)!}{(n-1)! k!} \ ,$$

e quindi $C'_{n,k} = \left( \begin{matrix} n+k-1 \\ k \end{matrix} \right)$.

Una dimostrazione può essere svolta rappresentando gli elementi della combinazione come una sequenza $k$ di $\ast$, separati da $n-1$ divisori $|$: gli $n-1$ divisori separano la sequenza di $k$ $\ast$ in $n$ regioni (ordinate) associabili con una corrispondenza biunivoca agli elementi (ordinati) dell'insieme di partenza; il numero di $\ast$ nella $i$-esima regione rappresenta il numero di volte che l'elemento $a_i$ è ripetuto nella sequenza. Così ad esempio, le combinazioni con ripetizione di $k=4$ elementi di un insieme $I = \{ 1,2,3 \}$ di $n=3$ elementi possono essere rappresentate come

$$\begin{aligned}
  &    \ast    \ast   \ast    \ast || && \left\{  1,1,1,1 \right\} \\
  &    \ast    \ast   \ast |  \ast |  && \left\{  1,1,1,2 \right\} \\
  &    \ast    \ast | \ast    \ast |  && \left\{  1,1,2,2 \right\} \\
  &    \ast |  \ast   \ast    \ast |  && \left\{  1,2,2,2 \right\} \\
  & |  \ast    \ast   \ast    \ast |  && \left\{  2,2,2,2 \right\} \\
  &    \ast    \ast   \ast || \ast    && \left\{  1,1,1,3 \right\} \\
  & \dots \\
  & || \ast    \ast   \ast    \ast    && \left\{  3,3,3,3 \right\} \\
\end{aligned}$$


```{prf:example} Combinazioni con ripetizione di $k=3$ elementi di un insieme di $n=2$ elementi
:class: dropdown
Il numero di combinazioni con ripetizione di $k=3$ elementi dell'insieme $I = \left\{ 1, 2 \right\}$ di $n=2$ elementi è

$$C'_{n,k} = \frac{(n+k-1)!}{(n-1)! k!} = \frac{(3+2-1)!}{1!3!} = 4 \ ,$$

e le possibili combinazioni sono

$$\begin{aligned}
  &    \ast   \ast    \ast |  && \left\{  1,1,1 \right\} \\
  &    \ast   \ast |  \ast    && \left\{  1,1,2 \right\} \\
  &    \ast | \ast    \ast    && \left\{  1,2,2 \right\} \\
  & |  \ast   \ast    \ast    && \left\{  2,2,2 \right\} \\
\end{aligned}$$
```

```{prf:example} Combinazione con ripetizioni di $k=2$ elementi di un insieme di $n=3$ elementi
:class: dropdown
Il numero di combinazioni con ripetizione di $k=2$ elementi dell'insieme $I = \left\{ 1, 2, 3 \right\}$ di $n=3$ elementi è

$$C'_{n,k} = \frac{(n+k-1)!}{(n-1)! k!} = \frac{(2+3-1)!}{2!2!} = 6 \ ,$$

e le possibili combinazioni sono

$$\begin{aligned}
  &    \ast    \ast ||  && \left\{  1,1 \right\} \\
  &    \ast |  \ast |   && \left\{  1,2 \right\} \\
  &    \ast || \ast     && \left\{  1,3 \right\} \\
  &  | \ast    \ast |   && \left\{  2,2 \right\} \\
  &  | \ast |  \ast     && \left\{  2,3 \right\} \\
  & || \ast    \ast     && \left\{  3,3 \right\} \\
\end{aligned}$$
```

```{prf:example} Caramelle uguali a bambini diversi
In quanti modi si possono distribuire $5$ caramelle indistinguibili a $3$ bambini distinguibili? Il numero è uguale al numero di combinazioni con ripetizione di $k=5$ elementi di un gruppo di $n=3$ elementi, e cioè

$$C'_{3,5} = \frac{7!}{2! 5!} = \frac{6 \cdot 7}{2} = 21 \ .$$

```

```{prf:example} Bose-Einstein
```

```{note}
- esistenza librerie
- nel calcolo delle configurazioni in problemi di grosse dimensioni si possono incontrare limiti dell'aritmetica finita: **overflow** con i fattoriali; se compare un rapporto tra fattoriali, meglio non calcolare l'intero numeratore e l'intero denominatore prima di fare il rapporto...
```

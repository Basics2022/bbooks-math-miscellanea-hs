```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(vectors:high-school:algebra-hs)=
# Algebra vettoriale

**Necessità dei vettori.** In vari ambiti della matematica e della fisica, i numeri scalari non sono sufficienti a rappresentare correttamente alcune grandezze. Un esempio di queste grandezze possono essere una velocità o una forza in fisica, o la posizione di un punto in uno spazio euclideo in geometria. **TODO**

La caratteristica fondamentale di questi oggetti matematici è la loro indipendenza - **invarianza**, assolutezza - rispetto alle scelte che si possono fare per rappresentarli: scelte diverse possono essere più o meno convenienti, ma non cambiano la natura di un vettore.

**Intuizione di vettore.** Un vettore è un oggetto matematico necessario a rappresentare grandezze che sono caratterizzate da intensità, direzione e verso.

$$\vec{v}, \vec{w} \in \mathscr{V} \quad , \quad a, b \in \mathbb{R}$$

**Operazioni sui vettori: definizione di spazio vettoriale.**

$$a \vec{v} \in \mathscr{V}$$

$$\vec{v} + \vec{w} \in \mathscr{V}$$

$$a \vec{v} + b \vec{w} \in \mathscr{V}$$

**Base di uno spazio** In uno spazio vettoriale, ogni vettore può essere rappresentato come una combinazione lineare di un insieme di vettori dello spazio, opportunamente scelti. Il numero minimo di questi vettori è definita come dimensione dello spazio vettoriale.

**Prodotto scalare - o prodotto interno.**

$$\vec{v} \cdot \vec{w}: \mathscr{V} \times \mathscr{V} \rightarrow \mathbb{R}$$

$$\vec{v} \cdot \vec{w} = |\vec{v}| |\vec{w}| \cos \theta_{\vec{v} \vec{w}}$$

**Prodotto vettoriale.**

$$\vec{v} \times \vec{w}: \mathscr{V} \times \mathscr{V} \rightarrow \mathscr{V}$$

$$\vec{v} \times \vec{w} = \hat{k} |\vec{v}| |\vec{w}| \sin \theta_{\vec{v} \vec{w}}$$

**Base cartesiana.** $\{ \hat{e}_i \}_{i=1:n^d}$, $\{ \hat{x}, \hat{y}, \hat{z} \}$,

$$\begin{aligned}
  \hat{x} \cdot  \hat{x} & = \hat{y} \cdot  \hat{y} = \hat{z} \cdot  \hat{z} = 1 \\
  \hat{x} \cdot  \hat{y} & = \hat{y} \cdot  \hat{z} = \hat{z} \cdot  \hat{x} = 0
\end{aligned}$$

e usando il prodotto vettore per definire l'orientazione dei 3 vettori,

$$\begin{aligned}
  \hat{x} \times \hat{y} & = \hat{z} \\
  \hat{y} \times \hat{z} & = \hat{x} \\
  \hat{z} \times \hat{x} & = \hat{y} \\
\end{aligned}$$

Un vettore può essere scritto in una base cartesiana come

$$\vec{v} = v_x \hat{x} + v_y \hat{y} + v_z \hat{z}$$

Una coordinata del vettore è semplicemente

$$v_x = \hat{x} \cdot \vec{v} \ .$$

Somma di vettori e moltiplicazione per uno scalare

$$\begin{aligned}
   \vec{v} + \vec{w} & =   (v_x \hat{x} + v_y \hat{y} + v_z \hat{z}) + (w_x \hat{x} + w_y \hat{y} + w_z \hat{z}) = \\
                     & =   (v_x + w_x) \hat{x} + (v_y + w_y) \hat{y} + (v_z + w_z) \hat{z} \\ \\
 a \vec{v}           & = a (v_x \hat{x} + v_y \hat{y} + v_z \hat{z}) = \\
                     & =   ( a v_x ) \hat{x} + ( a v_y ) \hat{y} + ( a v_z ) \hat{z}
\end{aligned}$$

Il prodotto scalare diventa quindi

$$\begin{aligned}
  \vec{v} \cdot \vec{w}
  & = (v_x \hat{x} + v_y \hat{y} + v_z \hat{z}) \cdot (w_x \hat{x} + w_y \hat{y} + w_z \hat{z}) = \\
  & = v_x w_x + v_y w_y + v_z w_z
\end{aligned}$$

mentre il prodotto vettoriale

$$\begin{aligned}
  \vec{v} \times \vec{w}
  & = (v_x \hat{x} + v_y \hat{y} + v_z \hat{z}) \times (w_x \hat{x} + w_y \hat{y} + w_z \hat{z}) = \\
  & = (v_y w_z - v_z w_y) \hat{x} + (v_z w_x - v_x w_z) \hat{y} + (v_x w_y - v_y w_x) \hat{z} = \\
\end{aligned}$$

## Calcolo vettoriale in spazi euclidei, usando coordinate cartesiane






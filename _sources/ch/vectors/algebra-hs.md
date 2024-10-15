```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(vectors:high-school:algebra-hs)=
# Algebra vettoriale

**Definizione.** Uno spazio vettoriale è una struttura algebrica formata da:
- un insieme $\mathscr{V}$, i cui elementi sono chiamati **vettori**
- un campo $\mathscr{K}$ (di solito quello dei numeri reali $\mathbb{R}$ o complessi $\mathbb{C}$), i cui elementi sono chiamati **scalari**
- due operazioni chiuse rispetto all'insieme $\mathscr{V}$ chiamate:
  - somma vettoriale
  - moltiplicazione per uno scalare,
  che soddisfano determinate proprietà che verranno elencate in seguito. 

Un'operazione è chiusa rispetto a un'insieme, se il risultato delle operazioni è un elemento dell'insieme.

Nel seguito del capitolo verranno considerati solo campi vettoriali definiti sui numeri reali, per i quali $\mathscr{K} = \mathbb{R}$.

**Operazioni sui vettori: definizione di spazio vettoriale.**

La moltiplicazione di un vettore $\mathbf{v} \in \mathscr{V}$ per uno scalare $\alpha \in \mathbb{R}$ è il vettore 

$$\alpha \vec{v} \in \mathscr{V}$$

La somma vettoriale tra due vettori $\mathbf{v}$, \$\mathbf{w} \, \in \mathscr{V}$ è il vettore

$$\vec{v} + \vec{w} \in \mathscr{V}$$


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






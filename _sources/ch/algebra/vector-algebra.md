```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(math-hs:algebra:vector)=
# Algebra vettoriale

- Definizione di spazio vettoriale: struttura algebrica e proprietà delle operazioni
- Definizione di combinazione lineare, vettori linearmente indipendenti
- Definizione di base di uno spazio vettoriale
- Spazio vettoriale euclideo:
  - prodotto scalare e norma
  - base ortonormale
  - definizione del prodotto vettoriale

## Definizione di spazio vettoriale
Uno spazio vettoriale è una struttura algebrica formata da:
- un insieme $V$, i cui elementi sono chiamati **vettori**
- un campo $K$ (di solito quello dei numeri reali $\mathbb{R}$ o complessi $\mathbb{C}$), i cui elementi sono chiamati **scalari**
- due operazioni chiuse rispetto all'insieme $V$ chiamate:
  - somma vettoriale
  - moltiplicazione per uno scalare,
  che soddisfano determinate proprietà che verranno elencate in seguito. 

Un'**operazione** è **chiusa** rispetto a un'insieme, se il risultato delle operazioni è un elemento dell'insieme.

Nel seguito del capitolo verranno considerati solo campi vettoriali definiti sui numeri reali, per i quali $K = \mathbb{R}$.

### Operazioni sui vettori: definizione di spazio vettoriale

- La **somma** tra due vettori $\mathbf{v}$, $\mathbf{w} \, \in V$ è il vettore

$$\mathbf{v} + \mathbf{w} \in V$$

- La **moltiplicazione per uno scalare** di un vettore $\mathbf{v} \in V$ per uno scalare $\alpha \in K$ è il vettore 

$$\alpha \mathbf{v} \in V$$

```{dropdown} Proprietà delle operazioni

- proprietà commutativa della somma

$$\mathbf{u} + \mathbf{v} = \mathbf{v} + \mathbf{u} \qquad \forall \mathbf{u}, \mathbf{v} \in V$$

- proprietà associativa della somma

$$(\mathbf{u} + \mathbf{v}) + \mathbf{w} = \mathbf{u} + ( \mathbf{v} + \mathbf{w} ) \qquad \forall \mathbf{u}, \mathbf{v}, \mathbf{w} \in V$$

- esistenza dell'elemento neutro della somma

$$\exists \mathbf{0}_V \in V \qquad s.t. \qquad \mathbf{u} + \mathbf{0}_V = \mathbf{u} \qquad \forall \mathbf{u} \in V$$

- esistenza dell'elemento inverso della somma

$$\forall \mathbf{u} \in V \ \exists \mathbf{u}' \in V \qquad s.t. \qquad \mathbf{u} + \mathbf{u}' = \mathbf{0}$$

- proprietà associativa del prodotto scalare

$$(\alpha \beta) \mathbf{u} = \alpha ( \beta \mathbf{u} ) \qquad \forall \alpha, \beta \in K, \ \mathbf{u} \in V$$

- esistenza dell'elemento neutro della moltiplicazione per uno scalare

$$\exists 1 \in K \qquad s.t. \qquad 1 \, \mathbf{u} = \mathbf{u} \quad \forall \mathbf{u} \in V$$

- proprietà distributiva della moltiplicazione per uno scalare

$$(\alpha + \beta) \mathbf{u} = \alpha \mathbf{u} + \beta \mathbf{u}$$

$$\alpha (\mathbf{u} + \mathbf{v}) = \alpha \mathbf{u} + \alpha \mathbf{v} $$
```

## Esempi

**Esempio 1.**
Gli elementi $\mathbf{u} = (u_1, u_2, \dots, u_N)$ formano uno spazio vettoriale sui numeri reali, con le operazioni di somma e moltiplicazione per uno scalare definite come

$$\begin{aligned}
  \mathbf{u} + \mathbf{v} & = (u_1, u_2, \dots, u_N) + (v_1, v_2, \dots, v_N) = (u_1+v_1, u_2+v_2, \dots, u_N+v_N)
  \alpha \mathbf{u}       & = \alpha (u_1, u_2, \dots, u_N)                   = (\alpha u_1, \alpha u_2, \dots, \alpha u_N)
\end{aligned}$$

## Base di uno spazio vettoriale

**Combinazione lineare.**

**Vettori linearmente indipendenti.**

**Base di uno spazio vettoriale.** In uno spazio vettoriale, ogni vettore può essere rappresentato come una combinazione lineare di un insieme di vettori dello spazio, opportunamente scelti. Il numero minimo di questi vettori è definita come dimensione dello spazio vettoriale.

**Prodotto scalare - o prodotto interno.**

$$\vec{v} \cdot \vec{w}: V \times V \rightarrow \mathbb{R}$$

$$\vec{v} \cdot \vec{w} = |\vec{v}| |\vec{w}| \cos \theta_{\vec{v} \vec{w}}$$

**Prodotto vettoriale.**

$$\vec{v} \times \vec{w}: V \times V \rightarrow V$$

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





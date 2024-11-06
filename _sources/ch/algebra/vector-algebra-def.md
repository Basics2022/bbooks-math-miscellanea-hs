```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(math-hs:algebra:vector:def)=
# Prime definizioni

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

(math-hs:algebra:vector:def:examples)=
### Esempi

**Esempio 1 - $n$-upla di numeri reali ordinati.**
Gli elementi $\mathbf{u} = (u_1, u_2, \dots, u_N)$ formano uno spazio vettoriale sui numeri reali, con le operazioni di somma e moltiplicazione per uno scalare con la seguenti definizioni:

- somma:

$$
  \mathbf{u} + \mathbf{v} = (u_1, u_2, \dots, u_N) + (v_1, v_2, \dots, v_N) = (u_1+v_1, u_2+v_2, \dots, u_N+v_N)
$$

- moltiplicazione per uno scalare:

$$
  \alpha \mathbf{u}       = \alpha (u_1, u_2, \dots, u_N)                   = (\alpha u_1, \alpha u_2, \dots, \alpha u_N)
$$

**Esempio 2 - vettori in uno spazio euclideo.**
Fissato un punto $O$ in uno spazio euclideo (**todo** *riferimenti?*), si può associare a ogni punto $P$ nello spazio il segmento orientato $\overrightarrow{OP}$. L'insieme dei segmenti orientati associati a ogni punto dello spazio forma uno spazio vettoriale con le operazioni di somma e moltiplicazione per uno scalare con le seguenti definizioni:

- somma: tramite il metodo del parallelogramma **todo**

- moltiplicazione per uno scalare: **todo**

(math-hs:algebra:vector:def:example:translations)=
**Esempio 3 - spazio vettoriale delle traslazioni.** In uno spazio euclideo, l'insieme delle traslazioni forma uno spazio vettoriale.

**todo**

**Esempio 4 - polinomi di grado minore o uguale a $n$** L'insieme dei polinomi di grado minore o uguale a $n$,

$$\mathbf{u} = u_n x^n + u_{n-1} x^{n-1} + \dots u_1 x + u_0 \ ,$$

forma uno spazio vettoriale con le usuali definizioni di somma e moltiplicazione per uno scalare valide per i polinomi.

## Base di uno spazio vettoriale

**Combinazione lineare.** Una combinazione lineare di $D$ vettori $\{ \mathbf{u}_i \}_{i=1:D}$ è data dalla somma 

$$\alpha_1 \mathbf{u}_1 + \dots + \alpha_D \mathbf{u}_D \ ,$$

dove i coefficienti scalari $\alpha_i$ vengono definiti coefficienti della combinazione lineare.

**Vettori linearmente indipendenti.** Un insieme di vettori $\{ \mathbf{u}_i \}_{i=1:D}$ è linearmente indipendente se non è possibile esprimere uno di questi vettori in funzione degli altri. Un'altra definizione equivalente definisce un insieme di vettori linearmente indipendente se vale

$$\alpha_1 \mathbf{u}_1 + \dots + \alpha_D \mathbf{u}_D = \mathbf{0} \qquad \rightarrow \qquad \alpha_1 = \dots = \alpha_D = 0 \ ,$$

cioè una combinazione lineare di questi vettori è uguale al vettore nullo solo se tutti i coefficienti della combinazione lineare sono nulli.

**Base di uno spazio vettoriale.** In uno spazio vettoriale, ogni vettore può essere rappresentato come una combinazione lineare di un insieme di vettori dello spazio, opportunamente scelti. Il numero minimo di questi vettori è definita come dimensione dello spazio vettoriale.



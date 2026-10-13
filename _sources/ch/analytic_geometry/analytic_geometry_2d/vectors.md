(geometry:analytic:2d:vectors)=
# Punti nel piano. Vettori posizione

Scegliendo un punto $O$ come riferimento, i punti di un piano (o in generale di uno spazio euclideo) possono essere rappresentati con i [vettori](math-hs:algebra:vector) posizione dei punti rispetto al punto di riferimento. La posizione di un punto $P$ rispetto a $O$ può essere indicata come

$$\vec{\mathbf{r}}_P = \vec{r}_P = \overrightarrow{OP} = P - O \ .$$

Per identificare un punto in un piano, servono due coordinate (e quindi un piano è uno spazio bidimensionale). Come alternativa equivalente alle coordinate cartesiane, si può introdurre una **base** Cartesiana dello spazio vettoriale, formata da due vettori, $\hat{\mathbf{x}}$, $\hat{\mathbf{y}}$:
* di lunghezza unitaria
* tra di loro ortogonali

e orientati lungo gli assi cartesiani. Il vettore posizione che identifica un punto $P$ può essere scritto come combinazione lineare di questi due vettori della base, con i coefficienti della combinazione lineare che corrispondono alle coordinate cartesiane del punto, cioé

$$\mathbf{r}_P = x_P \hat{\mathbf{x}} + y_P \hat{\mathbf{y}} \ .$$ (eq:analytic-geometry:vector)

```{list-table}
:header-rows: 0
* - ![Rappresentazione di 3 punti con vettori posizione $\mathbf{r}_P$ rispetto all'origine $O$](../../../media/tikz/geometry/coordinates-cartesian-1-vectors.svg)

```

```{dropdown} Geometria analitica e introduzione ai vettori
:open:

Questa può essere usata come una prima introduzione abbastanza pratica ai [vettori](math-hs:algebra:vector). Qui è già stato introdotto il concetto di:
* base di spazio vettoriale, i **due** (numero minimo per un piano) vettori $\hat{\mathbf{x}}$, $\hat{\mathbf{y}}$ che possono essere combinati tramite la {eq}`eq:analytic-geometry:vector` per ottenere **tutti** i punti del piano
* le operazioni elementari:
  * prodotto per uno scalare: ogni componente cartesiana (numero scalare) moltiplica un vettore della base, $x_P \hat{\mathbf{x}}$
  * somma di vettori: sia $x_P \hat{\mathbf{x}}$, sia $y_P \hat{\mathbf{y}}$ sono ancora vettori. La loro somma dà il vettore posizione $\mathbf{r}_P$

```

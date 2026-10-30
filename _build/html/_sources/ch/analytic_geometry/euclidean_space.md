<!--
```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
-->

(geometry:analytic:euclidean-space)=
# Spazio euclideo

Qualitativamente, la geometria di Euclide corrisponde alla **concezione comune dello spazio** nel quale viviamo, e formalizzati negli *Elementi di Euclide*. Esso è il modello di spazio usato dalla meccanica classica. Dal punto di vista matematico, i punti di uno spazio euclideo di dimensione $n$ possono essere descritti usando un sistema di $n$ coordinate cartesiane.

```{prf:example} Geometria euclidea e senso comune 
:label: ex-euclidean-space-common-sense

Alcuni esempi del senso comune formalizzato in una geometria euclidea

- per un punto esterno a una retta $r$ in un piano $\pi$, passa una e una sola retta parallela alla retta data (*quinto postulato*)
- la lunghezza $c$ dell'ipotenusa di un triangolo rettangolo può essere calcolata con il *teorema di Pitagora*, $c = \sqrt{a^2 + b^2}$, dove $a$, $b$ sono le lunghezze dei due cateti


```

---

````{dropdown} Dettagli storici-formali
:open:

```{dropdown} Euclide e Newton 
:open:

- *Elementi di Euclide*: formulazione assiomatica della geometria, partendo dalla definizione di concetti primitivi e postulati (5), viene sviluppata la teoria in teoremi e corollari, tramite un procedimento deduttivo.
- Qualitativamente, la geometria di Euclide corrisponde alla concezione quotidiana dello spazio nel quale viviamo. Lo spazio euclideo fornisce il modello di spazio per la meccanica di Newton, formulata nel XVII secolo, e che rimane un ottimo modello ampiamente usato tutt'oggi per l'evoluzione di sistemi con dimensioni caratteristiche sufficientemente maggiori della scala atomica, e velocità caratteristiche sufficientemente minori della velocità della luce.
```

```{dropdown} Definizione più moderna

- Una definizione più moderna di uno spazio euclideo si basa sulle traslazioni (**todo** citare Bowen, *Introduction to tensors and vectors*). Sia $E$ un insieme di elementi, definiti **punti**, e $V$ lo [spazio vettoriale delle traslazioni](math-hs:algebra:vector:def:examples), $E$ viene definito uno spazio euclideo se esiste una funzione $f: E \times E \rightarrow V$ che associa a due punti dell'insieme $E$ uno e un solo vettore traslazione $v \in V$ tale che
  1. $f(x,y) = f(x,z) + f(z,y)$ per ogni $ x, y, z \in E$
  2. per $\forall x \in E$, $v \in V$, $\exists ! \, y \in E$ tale che $f(x,y) = v$
```

```{dropdown} Geometria analitica. Cartesio e le coordinate
:open:

- Le entità e le relazioni geometriche sono rappresentate da Euclide, in maniera assoluta, astratta, e tali sono

- Seguendo l'approccio di *Cartesio*, i punti di uno spazio possono essere rappresentati con un **sistema di coordinate**. In questa maniera, ogni punto $P$ in uno spazio $n$-dimensionale, *o in un suo sottoinsieme*, può essere identificato dal valore di $n$ coordinate,

  $$P(q^1, q^2, \dots, q^n) \ .$$
  
   Così, ad esempio i punti di un piano possono essere rappresentati tramite l'uso di una coppia di coordinate, come discusso nella [sezione dedicata](geometry:analytic:2d:coordinates), mentre servono tre coordinate per rappresentare i punti nello spazio.

* Uno spazio euclideo di dimensione $n$ può essere rappresentato da un sistema di $n$ coordinate cartesiane. Questo non è vero in generale per spazi geometrici non piatti.[^link-basics-math-euclidean-spaces]

[^link-basics-math-euclidean-spaces]: Per una discussione più approfondita, i lettori più maturi possono fare riferimento alle note di matematica sulla [geometria differenziale](https://basics2022.github.io/bbooks-math-miscellanea/ch/differential-geometry/intro.html).

```

```{dropdown} Vettori posizione e spazi vettoriali
:open:

* Dato uno spazio euclideo, si può scegliere un punto $O$ come riferimento, chiamato **origine**, 

* Un punto $P$ dello spazio può essere quindi identificato dal **vettore posizione** $\vec{v} = P - O$, come discusso per i punti del piano nella [sezione dedicata](geometry:analytic:2d:vectors)

**todo** *Uncomment*

<!--
- Dato uno spazio euclideo, si può scegliere un punto $O$ come riferimento, chiamato **origine**, per definire uno spazio vettoriale associando ogni punto $P$ dello spazio euclideo $E$ al **vettore posizione** $\vec{v} = P - O$ 

- Tra le infinite scelte possibili di un sistema di coordinate, esistono alcuni sistemi particolari, i sistemi di **coordinate cartesiane**

- Tra i sistemi di coordinate cartesiane, i sistemi di **coordinate cartesiane ortonormali** sono associati a traslazioni unitarie in direzioni ortogonali tra di loro. Usando un sistema di coordinate cartesiane ortogonali, è possibile definire uno spazio euclideo come uno spazio in cui sono valide le espressioni:
  - il prodotto interno:

     $$\vec{u} \cdot \vec{v} = \sum_k u^k v^k$$
  
  - la norma di un vettore (indotta dal prodotto interno), o della distanza tra due punti che definiscono il vettore $\vec{v}$

     $$|\vec{u}|^2 = \vec{u} \cdot \vec{u} = \sum_k u^k u^k \ ,$$

     ossia si può usare il **teorema di Pitagora** per il calcolo delle distanze.
-->

```

<!--
- **todo** cenni a spazi/geometrie non euclidee: esempi, e criteri "avanzati" per la definizione (basati su curvatura, geodesiche,...), e conseguenze,...
-->

````

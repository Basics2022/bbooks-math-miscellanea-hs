```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(geometry:analytic:euclidean-space)=
# Spazio euclideo

**Approccio storico-applicativo**
- *Elementi di Euclide*: formulazione assiomatica della geometria, partendo dalla definizione di concetti primitivi e postulati (5), viene sviluppata la teoria in teoremi e corollari, tramite un procedimento deduttivo.
- Qualitativamente, la geometria di Euclide corrisponde alla concezione quotidiana dello spazio nel quale viviamo. Lo spazio euclideo fornisce il modello di spazio per la meccanica di Newton, formulata nel XVII secolo, e che rimane un ottimo modello ampiamente usato tutt'oggi per l'evoluzione di sistemi con dimensioni caratteristiche sufficientemente maggiori della scala atomica, e velocità caratteristiche sufficientemente minori della velocità della luce.
- Una definizione più moderna di uno spazio euclideo si basa sulle traslazioni (**todo** citare Bowen, *Introduction to tensors and vectors*). Sia $E$ un insieme di elementi, definiti **punti**, e $V$ lo [spazio vettoriale delle traslazioni](math-hs:algebra:vector:def:examples), $E$ viene definito uno spazio euclideo se esiste una funzione $f: E \times E \rightarrow V$ che associa a due punti dell'insieme $E$ uno e un solo vettore traslazione $v \in V$ tale che
  1. $f(x,y) = f(x,z) + f(z,y)$ per ogni $ x, y, z \in E$
  2. per $\forall x \in E$, $v \in V$, $\exists ! \, y \in E$ tale che $f(x,y) = v$
- **todo** Dato uno spazio euclideo, si può usare un punto $O$  chiamato **origine**, per definire uno spazio vettoriale associando ogni punto $P$ dello spazio euclideo $E$ al vettore traslazione $\vec{v} = P - O \in V$ **todo** differenza tra spazi vettoriali e spazi affini
- Seguendo l'approccio di *Cartesio*, i punti di uno spazio possono essere rappresentati da un **sistema di coordinate** (**todo** coordinate: funzioni scalari definite nello spazio). *A volte non si riesce a rappresentare tutto lo spazio con un solo insieme di coordinate, ma servono più carte di coordinate, che si sovrappongano in alcune regioni, per poter ricavare una transizione tra due mappe differenti*. Il numero di coordinate necessario e sufficiente a rappresentare tutti i punti dello spazio coincide con la **dimensione** dello spazio. In questa maniera, ogni punto $x$ in uno spazio $n$-dimensionale, *o in un suo sottoinsieme*, può essere identificato dal valore di $n$ funzioni scalari definite nello spazio, definite coordinate.

  $$x(q^1, q^2, \dots, q^n) \ .$$

- Tra le infinite scelte possibili di un sistema di coordinate, esistono alcuni sistemi particolari, i sistemi di **coordinate cartesiane** **todo** definire le coordinate cartesiane associandole alle traslazioni $\{ \hat{e}_k \}_{k=1:n}$
- Tra i sistemi di coordinate cartesiane, i sistemi di **coordinate cartesiane ortonormali** sono associati a traslazioni unitarie in direzioni ortogonali tra di loro. Usando un sistema di coordinate cartesiane ortogonali, è possibile definire uno spazio euclideo come uno spazio in cui sono valide le espressioni:
  - il prodotto interno:

     $$\vec{u} \cdot \vec{v} = \sum_k u^k v^k$$
  
  - la norma di un vettore (indotta dal prodotto interno), o della distanza tra due punti che definiscono il vettore $\vec{v}$

     $$|\vec{u}|^2 = \vec{u} \cdot \vec{u} = \sum_k u^k u^k \ ,$$

     ossia si può usare il **teorema di Pitagora** per il calcolo delle distanze.

- **todo** cenni a spazi/geometrie non euclidee: esempi, e criteri "avanzati" per la definizione (basati su curvatura, geodesiche,...), e conseguenze,...

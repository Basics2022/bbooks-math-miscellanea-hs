(geometry:analytic:euclidean-space)=
# Spazio euclideo

**Introduzione storica.**
- *Elementi di Euclide*: formulazione assiomatica della geometria, partendo dalla definizione di concetti primitivi e postulati (5), viene sviluppata la teoria in teoremi e corollari, tramite un procedimento deduttivo.
- Qualitativamente, la geometria di Euclide corrisponde alla concezione quotidiana dello spazio nel quale viviamo.
- Una definizione più moderna di uno spazio euclideo si basa sulle traslazioni (**todo** citare Bowen, *Introduction to tensors and vectors*). Sia $E$ un insieme di elementi, definiti **punti**, e $V$ lo spazio vettoriale (**todo** riferimento al capitolo sui vettori) delle traslazioni, $E$ viene definito uno spazio euclideo se esiste una funzione $f: E \times E \rightarrow V$ che associa a due punti dell'insieme $E$ uno e un solo vettore traslazione $v \in V$ tale che
  1. $f(x,y) = f(x,z) + f(z,y)$ per ogni $ x, y, z \in E$
  2. per $\forall x \in E$, $v \in V$, $\exists ! y \in E$ tale che $f(x,y) = v$
- I punti di uno spazio possono essere rappresentati da un insieme di coordinate. *A volte non si riesce a rappresentare tutto lo spazio con un solo insieme di coordinate, ma servono più carte di coordinate, che si sovrappongano in alcune regioni, per poter ricavare una transizione tra due mappe differenti*. Il numero di coordinate necessario e sufficiente a rappresentare tutti i punti dello spazio coincide con la **dimensione** dello spazio. In questa maniera, ogni punto $x$ in uno spazio $n$-dimensionale, *o in un suo sottoinsieme*, può essere identificato dal valore di $n$ funzioni scalari definite nello spazio, definite coordinate

$$x(q^1, q^2, \dots, q^n) \ .$$

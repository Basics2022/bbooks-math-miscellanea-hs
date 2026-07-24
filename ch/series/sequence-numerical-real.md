(math-hs:sequence-numerical-real)=
# Successioni numeriche reali

(math-hs:sequence-numerical-real:def)=
## Definizioni

**Definizione di successione.** Una successione di numeri reali è una funzione $f: \mathbb{N} \rightarrow \mathbb{R}$, che associa ai numeri interi $n \in \mathbb{N}$ un numero reale $a_n = f(n)$.

**Limite di una successione.** Una successione $\{ a_n \}$ ha limite $\ell$ se per ogni intorno $U_{\ell}$ di $\ell$ esiste un numero naturale $N \in \mathbb{N}$ tale che

$$a_n \in U_{\ell} \ , \qquad \forall n > N \ .$$

**todo** *fare associazione con il limite finito all'infinito per funzioni*

Se il limite esiste è unico (**todo** *se $\ell \in T$, con $T$ spazio di Hasudorff. Come evitare questa complicazione?*). A seconda del limite della successione, una successione è:
- **convergente** se il limite $\ell$ esiste ed è finito
- **divergente** se il limite $\ell$ esiste ed è infinito
- **indeterminata** se il limite non esiste

(math-hs:sequence-numerical-real:properties)=
## Caratteristiche
**Limitatezza.** ...

**Permanenza del segno.** ...

**Valori assoluti.** ...

**Succesioni monotone.** Una successione monotona $\{ a_n \}$ converge sempre a un limite. Il limite è l'estremo superiore se la successione è monotona crescente, o l'estremo inferiore se la successione è monotona decrescente.

**Il limite è finito se e solo se la successione monotona è limitata.**

*Dimostrazione, qui o in fondo in una sezione di dimostrazioni/esercizi*

## Operazioni con successioni
*elencare operazioni, mettere dimostrazione in una sezione di dimostrazioni/esercizi, nello stile Schaum*

**todo** *ha senso?*

## Confronto tra successioni
*elencare operazioni, mettere dimostrazione in una sezione di dimostrazioni/esercizi, nello stile Schaum*

**todo** *ha senso?*

## Criteri di convergenza
*elencare operazioni, mettere dimostrazione in una sezione di dimostrazioni/esercizi, nello stile Schaum*

**todo** *Esistono limiti di convergenza delle successioni? Non è sufficiente calcolare il limite del termine $a_n$, per $n \rightarrow +\infty$?*

*Probabilmente ha senso rimuovere questo paragrafo.*

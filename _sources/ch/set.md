(math-hs:set)=
# Insiemistica

##

(math-hs:fun)=
## Funzioni

```{prf:definition} Funzione
:label: set-fun-def
Una funzione $f: A \rightarrow B$ tra due insiemi $A$, $B$ è una relazione che associa a ogni elemento dell'insieme $A$ uno e un solo elemento dell'insieme $B$, cioè

$$\forall a \in A \quad \exists! b = f(a) \in B \ .$$

L'insieme $A$ è definito **dominio**; l'insieme $B$ è definito **codominio**; il sottoinsieme degli elementi $b \in B$ per i quali esiste un $a \in A$ t.c. $b = f(a)$ è definito **immagine** della funzione.
```

**Funzione suriettiva.** Una funzione è suriettiva se $B = \text{Im}(A)$, cioè per ogni elemento $b \in B$ esiste almeno un elemento $a \in A$ tale che $f(a) = b$.

**Funzione iniettiva.** Una funzione è iniettiva se per ogni coppia $a_1, a_2 \in A$, con $a_1 \ne a_2$, segue che $f(a_1) \ne f(a_2)$.

**Funzione biunivoca.** Una funzione sia suriettiva sia iniettiva è una funzione biunivoca. Una funzione biunivoca associa a ogni elemento $a \in A$ uno e un solo elemento $b \in B$ e *viceversa*(!).

Una funzione **biunivoca** è anche **invertibile**. Data la funzione biunivoca $f(a) = b$, la funzione inversa è $a = f^{-1}(b)$.

(math-hs:set:algebra)=
## Algebra di insiemi

(math-hs:fun:range)=
### Immagine di una funzione

(math-hs:fun:null)=
### Nucleo di una funzione


(math-hs:set:numbers)=
## Insiemi numerici

(math-hs:set:numbers:n)=
### Numeri naturali, $\mathbb{N}$
- **Somma**
- **Moltiplicazione.**
- **Potenza.**

(math-hs:set:numbers:z)=
### Numeri interi, $\mathbb{Z}$
- **Somma**
- **Sottrazione**
- **Moltiplicazione.**
- **Potenza.**
- **Radice.**

(math-hs:set:numbers:q)=
### Numeri razionali, $\mathbb{Q}$
- **Somma**
- **Sottrazione**
- **Moltiplicazione.**
- **Divisione.**
- **Potenza.** 
  
  $$a^b = \left( \frac{m}{n} \right)^{\frac{p}{q}}$$

(math-hs:set:numbers:r)=
### Numeri reali, $\mathbb{R}$
- **Somma**
- **Sottrazione**
- **Moltiplicazione.**
- **Divisione.**
- **Potenza.**

- **Radice.**
- **Logaritmo.**

(math-hs:set:numbers:c)=
### Numeri complessi, $\mathbb{C}$



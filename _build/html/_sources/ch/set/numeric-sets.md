(sets:numeric)=
# Insiemi numerici

Partendo dai [numeri naturali](sets:numeric:n), si introducono gli insiemi numerici [interi](sets:numeric:z) e [razionali](sets:numeric:q) come chiusura dei numeri naturali rispetto alle operazioni inverse di addizione e moltiplicazione. L'insieme dei [numeri reali](sets:numeric:r) costituisce un insieme continuo che "chiude i buchi" ancora presenti nell'insieme dei numeri razionali. Infine si introduce la necessità dei [numeri complessi](sets:numeric:c) come chiusura algebrica dei numeri reali...
**todo** *controllare definizione di chiusura, che non ha questo significato*

(sets:numeric:n)=
## Numeri naturali $\mathbb{N}$
L'insieme dei numeri naturali,

$$\mathbb{N} = \{ 0, 1, 2, 3, \dots \} \ ,$$

contiene i numeri che intuitivamente vengono usati per contare (o ordinare), risultato del processo di astrazione che associa a un gruppo di oggetti la sua quantità. Dal punto di vista storico, il processo di astrazione che ha condotto al concetto di unità - il numero $1$ - e i suoi multipli - i numeri naturali maggiori di $1$ - viene fatto risalire all'epoca presitorica, ed esistono diversi reperti storici che testimoniano il loro uso in Mesopotamia e in Egitto nel III millennio a.C. L'introduzione del **numero $0$** avviene inizialmente nelle civiltà mediterranee come segnaposto, e successivamente in India tra il VI se il VII secolo d.C. come numero nel **sistema decimale posizionale** formulato in India e diffusosi tra le popolazioni persiane e arabe, prima di arrivare in Europa.

Sull'insieme dei numeri naturali si possono definire alcune *operazioni chiuse*[^closed-operation] sull'insieme dei numeri naturali:
- addizione, $+$
- moltiplicazione, $\times$ o $\cdot$

[^closed-opearation]: Un'operazione è chiusa se si applica ad elementi di un insieme e ha come risultato un elemento dello stesso insieme, per ogni scelta degli elementi coinvolti nell'operazione.

che hanno le seguenti proprietà:

- commutatività

  $$\begin{aligned}
    a + b & = b + a \\
    a \times b & = b \times a \\
  \end{aligned}$$

- associatività

  $$\begin{aligned}
    (a + b) + c & = a + (b+c) \\
    (a \times b) \times c & = a \times ( b \times c ) \\
  \end{aligned}$$

  e quindi si può evitare l'uso di parentesi inutili nella somma o nella moltiplicazione di tre numeri $a+b+c+$ o $a \times b \times c$

- esistenza dell'elemento identità, il numero $0$ per l'addizione, il numero $1$ per la moltiplicazione

  $$\begin{aligned}
    a + 0 & = a \\
    a \times 1 & = a \\
  \end{aligned}$$

- distribuitività della moltiplicazione sull'addizione
- *fattorizzazione dello zero: se $a \times b = 0$ allora almeno uno dei due fattori è uguale a zero*

Mentre le operazioni di addizione e moltiplicazione sono chiuse, le operazioni di sottrazione e divisione non sono chiuse sui numeri naturali. In generale, la sottrazione di due numeri naturali, $a, b \in \mathbb{N}$ è un [numero intero](sets:numeric:z), $a - b \in \mathbb{Z}$; la divisione tra due numeri naturali $a, b \in \mathbb{N}$ è un [numero razionale](sets:numeric:q) $\frac{a}{b} \in \mathbb{Q}$ positivo.

### Altre operazioni
#### Sottrazione
#### Divisione
#### Potenza
La potenza $n$-esima, $n \in \mathbb{N}^+$ è definita come

$$a^n = \underbrace{a \cdot \dots \cdot a}_{n \text{ volte}} \ .$$

**Prodotto delle potenze, $a^n \, a^m = a^{m+n}$.** 

$$a^n \, a^m = \underbrace{a \cdot \dots \cdot a}_{n \text{ volte}} \underbrace{a \cdot \dots \cdot a}_{m \text{ volte}} = 
 \underbrace{a \cdot \dots \cdot a}_{m+n \text{ volte}} = a^{m+n} \ .$$

**Potenza $a^0$.** La potenza $a^0$ viene definita osservando che $\frac{a^n}{a} = a^{n-1}$,

$$\begin{aligned}
& \dots \\
a^3 & = a \cdot a \cdot a \\
a^2 & = a \cdot a \\
a^1 & = a  \\
a^0 & = 1  \\
\end{aligned}$$


(sets:numeric:z)=
## Numeri interi $\mathbb{Z}$
L'insieme dei numeri interi,

$$\mathbb{Z} = \{ \dots, -2, -1, 0, 1, 2, \dots \} \,$$

...**todo** Sull'insieme dei numeri interi si possono definire alcune operazioni chiuse:
- addizione,
- sottrazione,
- prodotto,

### Altre operazioni
#### Divisione
#### Potenza

**Regola dei segni - I - moltiplicazione.** 

$$\begin{aligned}
& \dots \\
 2   \cdot a & = a + a \\
 1   \cdot a & = a  \\
 0   \cdot a & = 0  \\
 (-1)\cdot a & = -a  \\
 (-2)\cdot a & = -a-a  \\
& \dots \\
\end{aligned}$$

Se $a > 0$ è positivo, il suo prodotto per un numero positivo $b > 0$ è un numero positivo, $a \cdot b > 0$; il suo prodotto per un numero negativo $b < 0 $, $b = -1 \cdot |b|$ è il numero negativo $a \cdot b = - 1 \cdot a \cdot |b|$. Se $a < 0$ è un numero negativo, vale il viceversa. La regola può essere riassunta scrivendo i due numeri

$$a = \text{sign}(a) \cdot |a| \qquad , \qquad b = \text{sign}(b) \cdot |b|$$

interpretando $\text{sign}(a) = -1$ se $a < 0$ e $\text{sign}(a) = 1$ se $a > 0$, come

$$a \cdot b = \text{sign}(a) \cdot \text{sign}(b) \cdot |a| \, |b| \ .$$

**Regola dei segni - II - potenze naturali.** Scrivendo il numero $a$ come prodotto del suo segno e del suo valore assoluto, $a = \text{sign}(a) |a|$, la sua potenza $p$-esima, con $p \in \mathbb{N}$ è il numero

$$a^p = (\text{sign}(a))^p \, |a|^p \ ,$$

positivo se $a$ è positivo per qualsiasi esponente naturale $p$, o se $a$ è negativo per esponenti $p$ pari, negativo solo se $a$ negativo e $p$ dispari.

**Potenze con esponenti negativi, $a^{-n} = \frac{1}{a^n}$** La potenza di un numero reale con esponente negativo è un numero razionale,

$$a^0 = a^{n-n} = a^{n} \, a^{-n} \qquad \rightarrow \qquad a^{-n} = \frac{1}{a^n}$$

(sets:numeric:q)=
## Numeri razionali $\mathbb{Q}$

I numeri razionali sono i numeri che possono essere scritti come frazione (divisione) di due numeri interi,

$$\mathbb{Q} = \left\{ q \ \bigg| \ q = \frac{m}{n}, \ m, n \in \mathbb{Z}, n \ne 0 \right\} \ ,$$

(sets:numeric:q:decimals)=
### Rappresentazione decimale
I numeri razionali sono i numeri e solo quelli che hanno una rappresentazione decimale con una parte decimale finita o periodica.

**todo** *vedi il pdf open_school_book*

(sets:numeric:q:operations)=
### Operazioni
#### Potenza
**Potenza con base razionale ed esponente intero.**

**Potenza con esponente razionale.** Una potenza $a^{\frac{p}{q}}$ con esponente razionale non intero, $p, q \in \mathbb{Z}$, $\frac{p}{q} \notin \mathbb{Z}$, è ben definita solo se la base è non-negativa.

In questo caso, per $a > 0$, le seguenti interpretazioni sono equivalenti

$$a^{\frac{p}{q}} = {\sqrt[q]{a}}^p = \sqrt[q]{a^p} \ .$$

In caso $a < 0$, l'operazione non è ben definita nell'ambito dei numeri razionali e nemmeno nell'ambito dei numeri reali,

$$a^{\frac{p}{q}} = ? =
\begin{cases}
  {\sqrt[q]{a}}^p & \text{radice non definita se $a<0$ e $q$ pari} \\
  \sqrt[q]{a^p}   & \text{radice non definita se $a<0$, $p$ dispari e $q$ pari} \\
  a^{\frac{2p}{2q}} = \sqrt[2q]{{a}^{2p}} ={\sqrt[2q]{a}^{2p}} & \text{operazione definita, ma è lecita?} \\
  \dots
\end{cases}$$

L'operazione risulta ben definita nell'ambito dei numeri complessi, **todo** *link*

(sets:numeric:r)=
## Numeri reali $\mathbb{R}$

In maniera non formale, e per quello che ci serve basta e avanza, l'insieme dei numeri reali $\mathbb{R}$ è l'insieme dei numeri che possono essere scritti nel sistema decimale posizionale - quello che usiamo correntemente oggi - come numeri con una parte decimale finita o infinita.

I numeri reali possono essere banalmente definiti come unione dei numeri razionali e irrazionali: i [numeri razionali possono essere definiti](sets:numeric:q:decimals) come i numeri che hanno una rappresentazione decimale con parte decimale finita o periodica; i numeri irrazionali possono quindi essere definiti come i numeri che non hanno una tale definizione. Date le definizioni mutuamente esclusive, i due insiemi hanno intersezione nulla e la loro unione è l'insieme di tutti i numeri che possono avere rappresentazione decimale, cioè i numeri reali.

### Operazioni
Le operazioni per i numeri reali sono già state definite per quanto riguarda i numeri reali razionali; queste operazioni possono essere estese ai numeri reali irrazionali considerando un loro limite razionale, cioè applicandole a numeri razionali che approssimano (con accuratezza qualsiasi) i numeri irrazionali.

**todo** *esempi*

(sets:numeric:c)=
## Numeri complessi $\mathbb{C}$
Per la discussione dei numeri complessi si rimanda al capitolo di [algebra sui numeri complessi](math-hs:algebra:complex) nella parte di [precalcolo](math-hs:precalculus).



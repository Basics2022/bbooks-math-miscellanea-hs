```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
(math-hs:precalculus:real-functions)=
# Funzioni reali a variabile reale, $f: \mathbb{R} \rightarrow \mathbb{R}$

Le funzioni reali a variabile reale saranno oggetto di studio dettagliato del [calcolo infinitesimale](infinitesimal-calculus).

```{prf:definition} Funzione a valore reale di variabile reale
Una funzione a valore reale di una variabile reale è una [funzione](math-hs:fun) $f: A \in \mathbb{R} \rightarrow \mathbb{R}$ è una funzione che ha come dominio un sottoinsieme $A$ dei numeri reali e condominio $\mathbb{R}$,

$$y = f(x) \ ,$$

con $x \in A \in \mathbb{R}$ e $y \in \mathbb{R}$. E' comune chiamare $x$ *argomento* della funzione, o la *variabile indipendente*, e $y$ *valore* della funzione o *variabile dipendente*

```

(math-hs:precalculus:real-functions:inverse:plot)=
## Grafico di una funzione
A una funzione $y = f(x)$ può essere associata una rappresentazione grafica, interpretando le variabili $x$, $y$ come coordinate che descrivono il piano. La rappresentazione comune le interpreta come *coordinate cartesiane*. Una funzione impone una relazione tra le due coordinate e in generale può essere rappresentato come una curva nel piano.

Ricordando che una funzione associa a ogni elemento del dominio uno e un solo elemento del codominio, il grafico di una funzione non può interesecare una retta parallela all'asse $y$ in due punti, cioè non possono esistere due valori $y_1$, $y_2$ della funzione per lo stesso valore della variabile indipendente $x$.

**todo** esempi

(math-hs:precalculus:real-functions:types)=
## Classificazione di funzioni
Appoggiandoci alla rappresentazione grafica (**todo**), vengono definite alcune caratteristiche che può avere una funzione. Una funzione $f: A \in  \mathbb{R} \rightarrow \mathbb{R}$ è definita e ha valori su **insiemi ordinabili**, cioè sui quali si possono stabilire delle relazioni di ordine tra gli elementi, ad esempio tramite le relazioni $<$, $>$, $\le$, $ge$. Grazie a questa caratteristica, si possono definire funzioni crescenti/decrescenti, monotone, limitate/illimitate; poiché dominio e codominio sono insiemi numerici, allora si possono definire funzioni pari/dispari e periodiche. Infine si discutono le definizioni di funzione reali a valori reali suriettiva, iniettiva e biunivoca, definizioni già introdotte per [funzioni tra insiemi qualsiasi](math-hs:fun).

- **Crescente, decrescente.** Una funzione è:
   -   crescente se $f(x_2) > f(x_1)$ per  $x_2 > x_1$
   - decrescente se $f(x_2) < f(x_1)$ per  $x_2 > x_1$
   
- **Monotona.** Una funzione è monotona crescente/decrescente nell'intervallo $I$, se è crescente/decrescente per ogni coppia $x_1$, $x_2 \in I$

- **Limitata, illimitata** Una funzione è:
   - limitata superiormente se $\exists M$ t.c. $f(x) \le M \, \ \forall x \in A$
   - limitata inferiormente se $\exists M$ t.c. $f(x) \ge M \, \ \forall x \in A$
   - illimitata altrimenti

- **Pari, dispari** Una funzione è definita
   -    pari se $f(x) = f(-x) \ \forall x \in A$, e il suo grafico in un piano $x$-$y$ è simmetrico rispetto all'asse $y$
   - dispari se $f(x) =-f(-x) \ \forall x \in A$, e il suo grafico in un piano $x$-$y$ è simmetrico rispetto all'origine

- **Periodica.** Una funzione è definita periodica di periodo $T$ se $f(x) = f(x+T), \ \forall x \in A$.

- **Suriettiva, iniettiva, biunivoca.** Una funzione è:
  - suriettiva **todo**
  - iniettiva **todo**
  - biunivoca **todo**

(math-hs:precalculus:real-functions:inverse)=
## Funzioni invertibili e inverse
Una funzione $f: X \rightarrow Y$ è **invertibile** se esiste una funzione $g: Y \rightarrow X$ tale che

$$\begin{aligned}
  g\left( f(x) \right) & = x , \ \forall x \in X \\
  f\left( g(y) \right) & = y , \ \forall y \in Y \\
\end{aligned}$$

- *Una funzione biunivoca è invertibile*
- *Una funzione monotona è biunivoca*
- *Una funzione monotona è invertibile* (Va' che [sillogismo](logics:syllogism)!)

(math-hs:precalculus:real-functions:problems)=
## Problemi
**todo**


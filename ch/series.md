<!--
```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
-->

(math-hs:series)=
# Serie e successioni

```{warning}
:class: dropdown

Questa sezione - per ora in costruzione - rischia di essere una sezione hard-core e nella sua completezza rischia di andare ben oltre gli scopi di un corso di matematica a livello di scuola superiore e di molti corsi universitari, ad eccezione delle sole facoltà di matematica e fisica probabilmente.

<span style="color:red">Per questi motivi, a questo capitolo viene per ora riservata una priorità relativamente bassa nello svolgimento del lavoro.</span>

```

```{admonition} Note sull'uso, o cosa bisogna portare a casa da questa sezione

Da questa sezione è utile portare a casa:
- la definizione di **serie numerica**, il concetto di concergenza - e i criteri di convergenza, con semplici applicazioni a serie particolari. Esistono poi alcune serie particolari - come la **serie geometrica** - ...; il numero $e$ di Eulero può essere definito come valore di una serie convergente.
- la definizione di **[serie di funzioni**. Alcuni esempi: definizione della funzione esponenziale $e^x$, serie polinomiali di Taylor, serie di Fourier <span "style=color:red">I risultati di convergenza, seppur di importanza non trascurabile, hanno una priorità secondaria nello sviluppo di questo materiale - bilancio complessità-impescindibilità</span>

<!--
Di solito, [successioni numeriche](math-hs:series:real:sequences) e le [serie numeriche](math-hs:series:real:series) vengono trattate senza dedicarvi troppo tempo, mostrando alcuni esempi come le serie geometriche; le [successioni di funzioni](math-hs:series:fun:sequences) e [serie di funzioni](math-hs:series:fun:series) vengono trattate in occasione della presentazione della funzione esponenziale sul campo reale e quando vengono introdotte le serie polinomiali di Taylor dopo aver affrontato le derivate; infine possono essere utilizzate sul campo complesso per fornire un'intuizione veloce della formula di Eulero dell'esponenziale di numeri immaginari, senza prestare eccessiva - o nessuna - attenzione ai risultati di convergenza e al soddisfacimento di alcune ipotesi necessarie affinché alcune operazioni siano lecite/valide.<span style="color:red">!!!</span>
-->
```

(math-hs:series:real:sequences)=
## Successioni di numeri reali

**Definizione.** Una successione di numeri reali è una funzione $f: \mathbb{N} \rightarrow \mathbb{R}$, che associa ai numeri interi $n \in \mathbb{N}$ un numero reale $a_n = f(n)$.

**Limite di una successione.** Una successione $\{ a_n \}$ ha limite $\ell$ se per ogni intorno $U_{\ell}$ di $\ell$ esiste un numero naturale $N \in \mathbb{N}$ tale che

$$a_n \in U_{\ell} \ , \qquad \forall n > N \ .$$

**todo** *fare associazione con il limite finito all'infinito per funzioni*

Se il limite esiste è unico (**todo** *se $\ell \in T$, con $T$ spazio di Hasudorff. Come evitare questa complicazione?*). A seconda del limite della successione, una successione è:
- **convergente** se il limite $\ell$ esiste ed è finito
- **divergente** se il limite $\ell$ esiste ed è infinito
- **indeterminata** se il limite non esiste

### Proprietà
**Limitatezza.** ...

**Permanenza del segno.** ...

**Valori assoluti.** ...

**Succesioni monotone.** Una successione monotona $\{ a_n \}$ converge sempre a un limite. Il limite è l'estremo superiore se la successione è monotona crescente, o l'estremo inferiore se la successione è monotona decrescente.

**Il limite è finito se e solo se la successione monotona è limitata.**

*Dimostrazione, qui o in fondo in una sezione di dimostrazioni/esercizi*

### Operazioni con successioni
*elencare operazioni, mettere dimostrazione in una sezione di dimostrazioni/esercizi, nello stile Schaum*
### Confronto tra successioni
*elencare operazioni, mettere dimostrazione in una sezione di dimostrazioni/esercizi, nello stile Schaum*
### Criteri di convergenza
*elencare operazioni, mettere dimostrazione in una sezione di dimostrazioni/esercizi, nello stile Schaum*

(math-hs:series:real:series)=
## Serie di numeri reali

**Definizione.** Data una **successione** di elementi $\{ a_n \}$, $a_n \in \mathbb{R}$, la serie associata è la somma infinita

$$\sum_{n=0}^{\infty} a_n \ .$$

Dato ogni indice $k$ della successione $\{ a_n \}$, si definisce la successione delle somme parziali $\{ S_k \}$,

$$S_k = \sum_{n=0}^{k} a_n \ .$$

**Carattere della serie.** 
A seconda del limite della successione delle somme parziali $\lim_{k \rightarrow \infty} S_k$, una serie è
- **convergente** se il limite $L$ esiste ed è finito
- **divergente** se il limite $L$ esiste ed è infinito
- **indeterminata** se il limite non esiste

### Criteri di convergenza

Una serie può essere:
- convergente
- divergente
- indeterminata

#### Serie a termini concordi

Si discutono qui le serie a termini non negativi. E' facile generalizzare i criteri alle serie a termini non positivi.

**Criterio del confronto.** Date A = $\sum_n a_n$, $B =\sum_n b_n$ serie a **termini non negativi** tali che $a_n \le b_n$
- se $B$ converge, $A$ converge
- se $A$  diverge, $B$  diverge

**Criterio del confronto asintotico.** Date A = $\sum_n a_n$, $B =\sum_n b_n$ serie a **termini non negativi**
- se B è convergente e $\lim_{n \rightarrow \infty} \frac{a_n}{b_n} = \ell \in (0, +\infty)$, allora A è convergente
- se B è  divergente e $\lim_{n \rightarrow \infty} \frac{a_n}{b_n} > 0$, allora A è  divergente

**Criterio del confronto con serie geometrica.**

**Criterio della radice - Cauchy.** Data una serie a termini non negativi $\sum_{n=1}^{+\infty} a_n$ per la quale esiste il limite $\lim_{n \rightarrow +\infty} {a_n}^{\frac{1}{n}} = k$, allora
- per $k < 1$ la serie converge
- per $k > 1$ la serie diverge
- per $k = 1$ non è possibile stabilire il carattere della serie

**Criterio del rapporto - d'Alembert.** Data una serie a termini non negativi $\sum_{n=1}^{+\infty} a_n$ per la quale esiste il limite $\lim_{n \rightarrow +\infty} \frac{a_{n+1}}{a_n} = k$, allora
- se B è convergente e $\lim_{n \rightarrow \infty} \frac{a_n}{b_n} = \ell \in (0, +\infty)$, allora A è convergente
- se B è  divergente e $\lim_{n \rightarrow \infty} \frac{a_n}{b_n} > 0$, allora A è  divergente

**Criterio di Raabe.**

**Criterio dell'integrale.**
- ...

**Dimostrazioni**


#### Serie a termini discordi

- **Criterio di convergenza assoluta.**
- ...

### Esempi

```{prf:example} Serie armonica, $\ \sum_{n=1}^{\infty} \frac{1}{n}$
:label: series-harmonic
:class: dropdown

 La serie armonica,

$$\sum_{n=1}^{\infty} \frac{1}{n} \ ,$$

è una serie divergente. Non è difficile dimostrare che la serie è sempre crescente e non è limitata superiormente: infatti

$$\sum_{n=1}^{\infty} \frac{1}{n} = 1 + \frac{1}{2} + \underbrace{\frac{1}{3} + \frac{1}{4}}_{> \frac{1}{2}} + \underbrace{\frac{1}{5} + \frac{1}{6} + \frac{1}{7} + \frac{1}{8}}_{> \frac{1}{2}} + \dots \ ,$$

la somma dei primi $2^N$ termini della serie è maggiore di $1 + \frac{N}{2}$, $\sum_{n=1}^{2^N} \frac{1}{n} > 1 + \frac{N}{2}$.
```

```{prf:example} Serie geometrica, $\ \sum_{n=1}^{\infty} a^n$
:label: series-geometric
:class: dropdown

$$\sum_{n=0}^{\infty} a^n$$

La serie risulta convergente per $|a|<1$. Infatti

$$S_N = \sum_{n=0}^{N} a^n = 1 + a \sum_{n=0}^{N} - a^{N+1} = 1 - a^{N+1} + a \, S_N$$

$$S_N = \frac{1 - a^{N+1}}{1-a} \ .$$

- per $|a| < 1$, $S = \lim_{N \rightarrow \infty} = \frac{1}{1 - a}$
- per $a \ge 1$, $S = \lim_{N \rightarrow \infty} S_N = +\infty$
- per $a<1$, ... 

```

```{prf:example} Serie telescopiche, $\ \sum_{n=1}^{\infty} \left( A_n - A_{n+1} \right)$
:label: series-telescopic
:class: dropdown

$$\sum_{n=1}^{\infty} a_n = \sum_{n=1}^{\infty} \left( A_{n} - A_{n+1} \right) = A_1 - \lim_{n \rightarrow \infty} A_n $$

```

```{prf:example} Serie di Mengoli, $\ \sum_{n=1}^{\infty} \frac{1}{n(n+1)}$
:label: series-mengoli
:class: dropdown

La serie di Mengoli è un esempio di serie telescopica, con 

$$a_n = \frac{1}{n(n+1)} = \frac{1}{n} - \frac{1}{n+1}$$

e quindi la serie risulta convergente,

$$\sum_{n=1}^{\infty} \frac{1}{n(n+1)} = 1 - \lim_{n \rightarrow \infty} \frac{1}{n+1} = 1 \ .$$

```

(math-hs:series:e-euler)=
```{prf:example} $e\ $ di Eulero o di Nepero, $\ e := \sum_{n=0}^{\infty} \frac{1}{n!}$
:label: series-e-euler
:class: dropdown

La serie

$$\sum_{n=0}^{\infty} \frac{1}{n!}$$

converge a un numero irrazionale $e$, che viene definito il **numero di Eulero o di Nepero**, e il cui valore approssimato è

$$e = 2.718281828\text{"e poi la magia finisce"} \ ,$$

cioè le cifre decimali successive non sono periodiche.

Si può dimostrare la convergenza della serie, ad esempio usando il criterio del rapporto di d'Alembert per le serie a termini concordi, dimostrando che il limite

$$\lim_{n \rightarrow +\infty} \frac{a_{n+1}}{a_n} = \lim_{x \rightarrow +\infty}\frac{n!}{(n+1)!} = \lim_{x \rightarrow +\infty} \frac{1}{n+1} = 0 \ ,$$

è finito e quindi la serie è convergente.

In particolare, usando la serie geometrica con $a = \frac{1}{2}$,

$$\sum_{n=0}^{+\infty} \left(\frac{1}{2} \right)^n = \dfrac{1}{1 - \frac{1}{2}} = 2$$

e confrontandola termine a termine con la serie di $e$,

$$\begin{aligned}
  2  = \sum_{n=0}^{+\infty} \left(\frac{1}{2} \right)^n = & 1 + \frac{1}{2} + \frac{1}{4} + \frac{1}{8} + \frac{1}{16} + \dots \\
  e := \sum_{n=0}^{+\infty} \frac{1}{n!} = 1 + & 1 + \frac{1}{2} + \underbrace{\frac{1}{3!}}_{<\frac{1}{4}} + \underbrace{\frac{1}{4!}}_{< \frac{1}{8}} + \underbrace{\frac{1}{5!}}_{< \frac{1}{16}} + \dots <
    1 + \sum_{n=0}^{+\infty} \left( \frac{1}{2} \right)^n = 3
\end{aligned}$$

si può trovare la relazione $e < 3$.

**todo** *come trovare stime di maggiorazione più restrittive? come trovare approssimazioni di $e$? Cenni al calcolo del valore numerico? Sì, ma anche no...*

```

(math-hs:series:fun:sequences)=
## Successioni di funzioni reali

**Definizione.** Una successione di funzioni tra l'insieme $X$ e l'insieme $Y$, è una funzione che associa ai numeri interi $n \in \mathbb{N}$ una funzione $f_n: X \rightarrow Y$.

**Limite di una successione di funzioni.** Limite "punto per punto". L'esistenza di un limite (finito?) punto per punto definisice la [convergenza puntuale](math-hs:series:fun:sequences:convergence:point).

(math-hs:series:fun:sequences:convergence)=
### Convergenza
(math-hs:series:fun:sequences:convergence:point)=
#### Convergenza puntuale
```{prf:definition} Convergenza puntuale
:label: series-fun-seq-convergence-point

```

(math-hs:series:fun:sequences:convergence:uniform)=
#### Convergenza uniforme

```{prf:definition} Convergenza uniforme
:label: series-fun-seq-convergence-uniform

Sia $\{ f_n \}_{n \in \mathbb{N}}$ una successione di funzioni $f_n:  X \rightarrow \mathbb{R}$. La serie converge uniformemente alla funzione $f$ se per ogni $\varepsilon > 0$ esiste $N \in \mathbb{N}$ tale che

$$|f_n(x) - f(x)| < \varepsilon \ , \qquad \forall x \in X \ ,$$

per tutti gli $n > N$.
```

**Proprietà.** Sotto opportune ulteriori ipotesi (vedi W.Rudin Principles of Mathematial Analysis[^rudin]), la convergenza uniforme permette di invertire l'ordine delle operazioni di limite, derivata e integrale con la sommatoria nelle serie di funzioni:

[^rudin]: W.Rudin, *Principles of Mathematial Analysis*, Third Edition

```{admonition} Convergenza uniforme e il limite
Data una successione di funzioni derivatbili $f_n(x)$, ...

```

```{admonition} Convergenza uniforme e la derivata
Data una successione di funzioni derivatbili $f_n(x)$, ...

$$f'(x) = g(x)$$

```

```{admonition} Convergenza uniforme e l'integrale
Data una successione di funzioni derivatbili $f_n(x)$, ...

```

**todo** discutere differenze tra i due tipi di convergenza; discutere i limiti della convergenza puntuale; discutere le proprietà

(math-hs:series:fun:series)=
## Serie di funzioni reali

### Serie polinomiali
**todo** *fare riferimento alle serie di Taylor e MacLaurin?*

$$\begin{aligned}
   \cos x & = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} + \dots \\
   \sin x & = x - \frac{x^3}{3!} + \frac{x^5}{5!} + \dots \\
   e^x    & = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \frac{x^4}{4!} + \dots \\
\end{aligned}$$

**todo** *valutare le proprietà di convergenza (e specificare gli intervalli di convergenza) di queste funzioni*

(math-hs:series:complex:sequences)=
## Successioni di numeri complessi
(math-hs:series:complex:series)=
**todo** *Fare riferimento ad algebra complessa. La funzione $e^{z}$ è necessaria a introdurre la rappresentazione polare dei numeri complessi.*
## Serie di numeri complessi
**todo** *Fare riferimento ad algebra complessa. La funzione $e^{z}$ è necessaria a introdurre la rappresentazione polare dei numeri complessi.*

(math-hs:series:fun-complex:sequences)=
## Successioni di funzioni complesse
(math-hs:series:fun-complex:series)=
## Serie di funzioni complesse


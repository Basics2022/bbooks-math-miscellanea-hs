<!--
```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
-->

(math-hs:algebra:real)=
# Algebra sui numeri reali

L'algebra sui numeri reali si occupa delle operazioni fondamentali e delle proprietà dei numeri reali, il cui insieme viene indicato con la lettera $\mathbb{R}$, come anche della risoluzione di equazioni e disequazioni. Dopo la logica e l'insiemistica, l'algebra sui numeri reali è il primo passo in un corso di matematica **todo** *di quale livello?*

Questo capitolo ricorda velocmente le operazioni elementari sui numeri reali introdotte nel capitolo sugli insiemi numerici, per poi introdurre con queste le operazioni di potenza, radice e logaritmo. Si fa affidamento sul calcolo letterale, per introdurre i polinomi e alcune loro proprietà che verranno utilizzate per risolvere i problemi algebrici che coinvolgono gli oggetti matematici introdotti: equazioni e disequazioni di un'incognita.

## Operazioni

Le operazioni elementari sui numeri reali e le loro proprietà sono state introdotte nel capitolo sugli insiemi numerici. Si ricordano le proprietà dell'elevamento a potenza, 

$$a^b = c$$

e le condizioni di esistenza di questa operazione sui numeri reali. Dall'operazione di potenza si introducono le operazioni di radice e di logaritmo chei, **sotto le necessarie condizioni**, consentono di scrivere

$$a = \sqrt[b]{c} \qquad , \qquad b = \log_{a} c \ .$$

### Potenze

Nel campo dei numeri reali, l'operazione di potenza, $a^b = c$, è ben definita: 
- per $a \ge 0$ per ogni $b \in \mathbb{R}$
- per $a < 0$ solo per $b \in \mathbb{N}$

**todo** *controllare, rimandare al capitolo sugli insiemi numerici; spostare nel capitolo sugli insiemi numerici?*

### Radice
**Definizione e condizioni.**

**Proprietà.**


### Logaritmo
**Definizione e condizioni.**

**Proprietà.**


## Polinomi

**Scomposizioni elementari.**

$$\begin{aligned}
 & (a+b)^2 = a^2 + 2ab + b^2                           & \text{Quadrato di binomio} \\
 & (a+b)^3 = a^3 + 3a^2 b + 3 a b^2 + b^3              & \text{Cubo di binomio} \\
 & (a+b)^N = \sum_{n=1}^{N} \left( \begin{matrix} N \\ n \end{matrix} \right) a^{N-n} b^n
 & \text{Potenza di binomio} \\
 & a^2 - b^2 = (a-b)(a+b)                              & \text{Differenza di quadrati} \\
 & a^3 - b^3 = (a-b)(a^2+ab+b^2)                       & \text{Differenza di cubi} \\
 & a^3 + b^3 = (a+b)(a^2-ab+b^2)                       & \text{Somma di cubi} \\
 & a^N - b^N = (a-b)(a^{N-1}+a^{N-2}b+\dots+b^{N-1})   & \text{Differenza di potenze} \\
 & a^N + b^N = (a+b)(a^{N-1}-a^{N-2}b+\dots+b^{N-1})   & \text{Somma di potenze dispari} \\
\end{aligned}$$

**todo** *altre regole? Ruffini?...*

### Frazioni algebriche
Una frazione algebrica è il quoziente di due polinomi,

$$\frac{a_n x^n + a_{n-1} x^{n-1} + \dots a_0}{b_m x^m + b_{m-1} x^{m-1} + \dots b_0} \ .$$

Per il [teorema fondamentale dell'algebra](math-hs:precalculus:polynomials:alg-fund-thm), ogni polinomio può essere scritto come prodotto di polinomi di primo o secondo ordine. Se i polinomi al numeratore e al denominatore della frazione algebrica non hanno fattori in comune, la frazione algebrica viene definita **in forma semplice**.

```{prf:example} Frazioni algebriche semplici e non semplici
:class: dropdown

La frazione $\frac{x^2-3x+2}{x^2+1} = \frac{(x-2)(x-1)}{x^2+1}$ è in forma ridotta, mentre la frazione $\frac{x^2-3x+2}{x^2-1} = \frac{(x-2)(x-1)}{(x+1)(x-1)}$ non è in forma ridotta e, **per** $x \ne 1$ **(!)**, è uguale a $\frac{x-2}{x+1}$.

```

Una **frazione propria** ha il grado $n$ del numeratore inferiore al grado $m$ del denominatore. Una frazione non propria può essere scritta come un polinomio di grado $n-m$ e una frazione propria

```{prf:example} Frazioni non proprie
:class: dropdown

La frazione $\frac{x^2 + 2x + 1}{x - 2}$ può essere scritta "completando il quadrato" come

$$\frac{x^2+2x+1}{x-2} = \frac{x^2-4x+4+4x-4+2x+1}{x-2} = \frac{(x-2)^2+6x-3}{x-2} = x-2 + 3\frac{2x-1}{x-2} \ ,$$

con la semplificazione possibile per $x \ne 2$.

```

Se il denominatore è scomponibile come prodotto di polinomi, allora la frazione algebrica può essere scritta come **somma di frazioni parziali**. In alcune applicazioni, come il calcolo degli integrali, può essere conveniente scrivere una frazione come somma di frazioni parziali, poiché risulta più semplice trattare somme di frazioni con numeratore di grado 1 o 2, di frazioni con numeratore di grado qualsiasi.

```{prf:example} Somma di frazioni parziali
:class: dropdown

La frazione $\frac{3x}{x^2-1}$ può essere scritta come somma di frazioni parziali $\frac{3 x}{x^2-1} = \frac{3}{2} \frac{1}{x-1} + \frac{3}{2}\frac{1}{x+1}$, poiché

$$\frac{3x}{x^2-1} = \frac{a}{x+1} + \frac{b}{x-1} = \frac{a(x-1) + b(x+1)}{x^2-1} = \frac{x(a+b)+b-a}{x^2-1}$$

$$\begin{cases} a + b = 3 \\ b - a = 0 \end{cases} \qquad \rightarrow \qquad a = b = \frac{3}{2} \ .$$

```

## Problemi con un'incognita

### Equazioni

Un'equazione è un'uguaglianza che contiene una o più incognite. L'obiettivo è trovare i valori delle incognite che rendono vera l'uguaglianza.

#### Equazioni lineari
#### Equazioni quadratiche
#### Equazioni non lineari generali

### Disequazioni

## Rappresentazione grafica di un'equazione con due incognite
Un'equazione con due incognite $x,y$ è una relazione di uguaglianza che può essere scritta nella forma generale $f(x,y) = 0$. In generale, a ogni equazione di questa forma può essere associata una curva nel piano, qui descritto dalle coordinate cartesiane $x,y$. Senza nessuna pretesa di completezza - rimandando per quella alla sezione sulla [geometria analitica](geometry:analytic) - qui ci si limita a discutere la rappresentazione grafica nel piano di alcune equazioni elementari

- $y = x$, dipendenza lineare (o proporzionale)
- $y = x^2$, dipendenza quadratica
- $y = \frac{1}{x}$, dipendenza inversamente proporzionale
- ... $y = a^x$, $y = \log_a x$ ...
<!--
- $y = a^x$
- $y = \log_a x$
- ...
-->

e delle equazioni ricavabili da queste con una trasformazione *affine* di incognite, nella forma $u = a_u (x-b_x)$, $v = a_v (y-b_y)$, corrispondenti a traslazioni del grafico e scalatura nelle direzioni dei due assi.


## Problemi con due o più incognite - sistemi di equazioni e disequazioni
Un sistema di equazioni è un insieme di equazioni da risolvere simultaneamente. I sistemi di equazioni (e di disequazioni) consentono di introdurre l'[algebra su $\mathbb{R}^n$](math-hs:algebra:real-n), descritta nel capitolo successivo. 





---

<!--
## Esercizi
1. Risolvi $ 4x + 2 = 14 $.
2. Trova l'intervallo di soluzioni per $ 3x - 7 \leq 11 $.
3. Risolvi il sistema:

$$
\begin{cases}
x - y = 3 \\
2x + y = 7
\end{cases}
$$
-->

<!--
**Numeri reali, $\mathbb{R}$**

**Operazioni con i numeri reali.**
- Somma e sottrazione
- Moltiplicazione e divisione
- Potenza
- Esponenziale e logaritmo

**Equazioni, disequazioni e sistemi di equazioni**
-->



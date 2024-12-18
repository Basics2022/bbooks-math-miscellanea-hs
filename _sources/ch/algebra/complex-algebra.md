<!--
```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
-->

(math-hs:algebra:complex)=
# Algebra complessa

Esistono collegamenti a questo capitolo da:
- la sezione sui [numeri complessi](sets:numeric:c) nel capitolo sugli [insiemi numerici](sets:numeric)
- la sezione sull'[algebra sui numeri complessi](math-hs:algebra:complex:link) nel capitolo sull'[algebra](math-hs:algebra)


<span style="color:red">In questa sezione viene introdotto l'insieme dei numeri complessi e le operazioni su di essi che permettono di definire l'algebra complessa.

I numeri reali sono sottoinsieme dei numeri complessi, $\mathbb{R} \subset \mathbb{C}$. La definizione di operazioni e funzioni, come l'esponenziale, sui numeri complessi viene data come **estensione ai numeri complessi** delle definizioni note sui numeri reali.</span>

I numeri complessi risultano utili in molti ambiti della matematica e della scienza, dalla fisica all'ingegneria:
- teorema fondamentale dell'algebra
- rappresentazione efficace delle funzioni trigonometriche, grazie all'identità di Eulero
- soluzione di equazioni differenziali
- ...

<!--
**Argomenti**
- Definizioni e rappresentazioni
- Algebra:
  - operazioni
  - equazioni e disequazioni
  - teorema fondamentale dell'algebra
-->

(math-hs:algebra:complex:def)=
## Definizioni
I numeri complessi estendono il campo dei numeri reali, $\mathbb{R} \subset \mathbb{C}$. Viene inizialmente definita l'**unità immaginaria**, $i$, come la radice quadra di $-1$,

$$i := \sqrt{-1} \ ,$$

**todo** *discutere la definizione, facendo riferimento alle* **potenze**

```{prf:definition} Numeri complessi - rappresentazione cartesiana
L'insieme dei numeri complessi, indicato con $\mathbb{C}$, è l'insieme di quei numeri che possono essere scritti come 

$$z = x + i y \ ,$$

con $x, \ y \in \mathbb{R}$.
```

(math-hs:algebra:complex:complex-plane)=
## Rappresentazione dei numeri complessi nel piano complesso (Argand-Gauss)
Ogni numero complesso $z \subset \mathbb{C}$ può essere associato a un punto del piano complesso $\mathbb{C}$; l'uso di coordinate cartesiane o polari per la descrizione dei punti del piano $\mathbb{R}^2$ suggerisce due tipi di rappresentazioni per un numero complesso:

- la **rappresentazione cartesiana** associa l'asse delle ascisse alla parte reale $x$ e l'asse delle ordinate alla parte immaginaria $y$,

  $$z = x + i y$$

- la **rappresentazione polare**; usando la legge di trasformazione tra coordinate polari $(r, \theta)$ e coordinate cartesiante $(x,y)$

  $$\begin{cases}
    x = r \cos \theta \\
    y = r \sin \theta
  \end{cases}$$

  e la [formula di Eulero](math-hs:algebra:complex:notes:euler), $e^{i \theta} = \cos \theta + i \sin \theta$, è possibile scrivere un numero complesso in forma polare,

  $$z = x + i y = r \cos \theta + i r \sin \theta = r \left( \cos \theta + i \sin \theta \right) = r e^{i \theta} \ .$$


```{note}
Le due rappresentazioni non sono equivalenti. Mentre la rappresentazione cartesiana permette di creare una relazione biunivoca tra i numeri complessi $z = x + i \, y$ e i punti nel piano $(x, \ y)$, la rappresentazione polare assegna infiniti numeri complessi, seppur di uguale valore $r \, e^{i \theta} = r \, e^{i (\theta + n \, 2 \pi)}$, con $n \in \mathbb{Z}$ allo stesso punto nello spazio.
```

(math-hs:algebra:complex:operations)=
## Operazioni con i numeri complessi
Si presentano alcune opearazioni sui numeri complessi.

**Somma.** La somma di due numeri complessi è il numero complesso

  $$z_1 + z_2 = (x_1 + x_2) + i(y_1 + y_2)$$

**Prodotto.** Il prodotto tra due numeri complessi $z_1 = x_1 + i y_1 = r_1 e^{i \theta_1}$, $z_2 = x_2 + i y_2 = r_2 e^{i \theta_2}$, è il numero complesso $z_1 \cdot z_2 \in \mathbb{C}$ che può essere calcolato usando la proprietà distributiva tra somma e prodotto e la proprietà degli esponenti,

  $$\begin{aligned}
    z_1 \, z_2 
    & = r_1 \, r_2 e^{i(\theta_1 + \theta_2)} = \\
    & = (x_1 + i y_1 ) (x_2 + i y_2) = (x_1 x_2 - y_1 y_2)+i(x_1 y_2 + y_1 x_2) \\
  \end{aligned}$$

**Complesso coniugato.** Il complesso coniugato $z^*$ di un numero compless $z \in \mathbb{C}$ è il numero complesso con stessa parte reale e parte immaginaria opposta. Analogamente ha stesso modulo e argomento (definito tra $-\pi$ e $\pi$) opposto

  $$z^* := x - i y = r e^{-i\theta} $$

E' immediato [verificare](math-hs:algebra:complex:problems:operations:cc:re-im) le seguenti identità

$$\begin{aligned}
  \text{re}\{ z \} & = x = \frac{z + z^*}{2} \\
  \text{im}\{ z \} & = y = \frac{z - z^*}{2i} \\
\end{aligned}$$ (complex:cc:re-im)

**Valore assoluto.** Il valore assoluto di un numero complesso è uguale a
  
  $$\begin{aligned}
    |z| & := \sqrt{z^* z} = \\
    & = \sqrt{(x-iy)(x+iy)} =  \sqrt{x^2 + y^2} = \\
    & = \sqrt{r e^{-i\theta} r e^{i\theta}} = r
  \end{aligned}$$

**Potenza.** Si presenta l'elevamento a potenza di un numero complesso,

$$z = A e^{i (\alpha + 2 \pi n)} \ , \quad n \in \mathbb{Z} \ ,$$

ricordando l'arbitrarietà nella rappresentazione in forma polare. Si rimanda all'appendice per il caso generale, mentre qui si presentano i casi con:

- potenza intera, $p \in \mathbb{Z}$.

  $$z^p = A^p e^{i ( p \alpha + 2 \pi n p )} = A^{p} e^{i ( p \alpha + 2 \pi m )} \ , \quad m \in \mathbb{Z}$$

- potenza razionale, $p, q \in \mathbb{Z}$, $q \ne 0$, $\frac{p}{q} = r + \frac{p'}{q}$, con $p' < q$ e $\frac{p'}{q}$ irriducibile,

  $$z^{\frac{p}{q}} = A^{\frac{p}{q}} e^{i \frac{p}{q} (\alpha + 2 \pi n)} = A^{\frac{p}{q}} e^{i (\frac{p}{q} \alpha + \frac{p'}{q} 2 \pi n)}$$

  Esistono quindi $q$ risultati distinti per $n \in \{ 0, 1, 2, \dots, q-1 \}$.

- potenza con esponente irrazionale: il numero $z^p$ rappresenta infiniti numeri **todo**

**Potenza qualsiasi.** Per la discussione di una [potenza qualsiasi](math-hs:algebra:complex:notes:fun:power) di un numero complesso si rimanda alla sezione sulle funzioni di variabile complessa in appendice.

**Esponenziale.** Per la discussione dell'[esponenziale complesso](math-hs:algebra:complex:notes:fun:exp) si rimanda alla sezione sulle funzioni di variabile complessa in appendice.

**Logaritmo.** Per la discussione del [logaritmo complesso](math-hs:algebra:complex:notes:fun:log) si rimanda alla sezione sulle funzioni di variabile complessa in appendice.


(math-hs:algebra:complex:fund-thm)=
## Teorema fondamentale dell'algebra
Ogni polinomio a coefficienti reali (**todo** o anche complessi) di grado $n$, $p_n(x) = a_n x^n + a_{n-1} x^{n-1} + \dots a_1 x + a_0$ può essere fattorizzato come prodotto di $n$ binomi

$$p_n(x) = a_n ( x - z_1 )( x - z_2 )\dots( x - z_n) \ ,$$

e i numeri $z_k \in \mathbb{C}$, $k = 1:n$, sono chiamati **zeri** del polinomio.

Come diretta conseguenza, ogni equazione polinomiale di grado $n$, $p_n(x) = 0$, ammette $n$ soluzioni complesse coincidenti con gli zeri $z_k$ del polinomio $p_n(x)$.

(math-hs:algebra:complex:geometry-2d)=
## Numeri complessi e geometria nel piano euclideo
La [rappresentazione cartesiana]() dei numeri complessi $z = x + i y$ crea un legame biunivoco tra i numeri complessi e i punti di un piano. Quindi è possibile affrontare la geometria analitica nel piano usando i numeri complessi:

### Posizione di un punto nel piano
Una volta scelto un sistema di coordinate regolari, la posizione di un punto $P$ nel piano è identificata dai valori delle sue coordinate. Utilizzando un sistema di coordinate cartsiane o polari il punto $P$ è identificato dalle coppie di valori $x_P, y_P$ o $r_P, \theta_P$ rispettivamente. Associando l'asse $x$ all'asse dei numeri reali e l'asse $y$ all'asse dei numeri immaginari, si può associare il punto $P \equiv (x_P, y_P)$ in maniera biunivoca al numero complesso $z_P = x_P + i y_P$, mentre alle coordinate polari corrisponde la rappresentazione polare,

$$z_P = x_P + i y_P = r e^{i \theta} \ .$$

### Distanza tra punti
La distanza tra due punti nel piano può essere facilmente calcolata usando le coordiante cartesiane dei punti, tramite il teorema di Pitagora,

$$|P_2 - P_1|^2 = (x_2 - x_1)^2 + (y_2 - y_1)^2 \ ,$$

ed equivale al valore del numero complesso $z_2 - z_1$,

$$|z_2 - z_1|^2 = ((x_2-x_1) + i(y_2-y_1))^*((x_2-x_1) + i(y_2-y_1)) = (x_2 - x_1)^2 + (y_2 - y_1)^2 $$

### Curva nel piano
Una curva nel piano può essere rappresentata in forma esplicita, implicita o parametrica. Usando i numeri complessi, 
- la forma implicita dell'equazione di una curva è una relazione della forma $F(z)=0$, $F_c(x, y) = 0$ o $F_p(r, \theta) = 0$, ossia una funzione che lega i due parametri che definiscono un numero complesso, come per esempio parte reale e immaginaria o modulo e argomento; in alcuni casi, è possibile esprimere uno di questi parametri in funzione dell'altro nella forma esplicita
- la forma parametrica dell'equazione di una curva può essere espressa come un numero complesso funzione di un parametro, come ad esempio

   $$z(s) = x(s) + i y(s) =  r(s) e^{i \theta(s)} \ .$$

   Questo equivale a fornire l'espressione parametrica della curva in termini delle coordinate cartesiane o polari.

### Intersezioni di curve
Date due curve espresse in forma parametrica, $\gamma_1: z_1(s)$, $\gamma_2: z_2(r)$, gli eventuali punti di intersezione soddisfano la condizione $z_1(\bar{s}) = z_2(\bar{r})$, cioè si ricerca il valore dei parametri $s$, $r$ per i quali i punti delle curve hanno le stesse coordinate.

Se le curve sono espresse in forma implicita, $\gamma_1: F_1(z) = 0$, $\gamma_2: F_2(z) = 0$, il problema della ricerca delle intersezioni si riduce alla soluzione del sistema di due equazioni in due incognite (due incognite poiché un numero complesso $z$ è identificato da due parametri) per trovare il valore dei numeri complessi $\bar{z}$ tali che 

$$\begin{cases} F_1(\bar{z}) & = 0 \\ F_2(\bar{z}) & = 0 \end{cases}$$

### Retta nel piano
**Definizione 1 - Passaggio per un punto e una direzione.** E' facile definire la retta passante per un punto con una direzione data in forma parametrica,

 $$z(s) = z_0 + s v \ ,$$

 con $z_0 = x_0 + i y_0$ nummero complesso che identifica il punto $P_0$ e $v = v_x + i v_y$ numero complesso che identifica la direzione della retta $\vec{v} = v_x \hat{x} + v_y \hat{y}$.

**Definizione 2 - Luogo dei punti equidistante da due punti distinti.** La definizione può essere tradotta nell'equazione in forma implicita,

   $$|z - z_1| = |z - z_2| \ ,$$

l'uguaglianza della distanza dei punti della retta identificati dai numeri complessi $z$ dai due punti scelti, identificati dai numeri complessi $z_1$, $z_2$.

### Posizioni reciproche rette, distanza punto-retta, coniche ed altro
In questo capitolo non si continua lo studio in maniera sistematica della geometria nel piano usando i numeri complessi.

Ci si limita a:
- ricordare che le coordinate cartesiane e polari possono essere ricondotte a un numero complesso

  $$
  \begin{cases} x = r \cos \theta = \text{re}\{z\} \\ y = r \sin \theta = \text{im}\{z\} \end{cases}
  \quad , \quad
  \begin{cases} r = |z|            \\ \theta = \text{arg}\{z\} \end{cases}
  $$

- osservare che, dati i due numeri complessi $z_1 = x_1 + i y_1$, $z_2 = x_2 + i y_2$, il prodotto $z_1^* z_2$ contiene sia l'espressione del prodotto interno sia del prodotto vettore dei due vettori $\vec{v}_1 = x_1 \hat{x}_1 + y_1 \hat{y}_1$, $\vec{v}_2$,

  $$\begin{aligned}
    z_1^* z_2 & = (x_1 - i y_1) (x_2 + i y_2) = \\
              & = (x_1 x_2 + y_1 y_2) + i(x_1 y_2 - x_2 y_1) = \\
              & = \vec{v}_1 \cdot \vec{v}_2 + i \hat{z} \cdot \vec{v}_1 \times \vec{v}_2
  \end{aligned}$$

**todo** *rimandare a esercizi*

(math-hs:algebra:complex:equations)=
## Equazioni e disequazioni con i numeri complessi
Le equazioni e le disequazioni con i numeri complessi possono essere ricondotti a problemi che coinvolgono una coppia di variabili reali, tipicamente le componenti reale e immaginaria, o il modulo e l'argomento, che descrivono il piano dei numeri complessi.

**todo**


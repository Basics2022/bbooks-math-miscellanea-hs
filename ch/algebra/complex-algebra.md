```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(math-hs:algebra:complex)=
# Algebra complessa

In questa sezione viene introdotto l'insieme dei numeri complessi e le operazioni su di essi che permettono di definire l'algebra complessa.

I numeri reali sono sottoinsieme dei numeri complessi, $\mathbb{R} \subset \mathbb{C}$. La definizione di operazioni e funzioni, come l'esponenziale, sui numeri complessi viene data come **estensione ai numeri complessi** delle definizioni note sui numeri reali.

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

## Definizioni
I numeri complessi estendono il campo dei numeri reali, $\mathbb{R} \subset \mathbb{C}$. Viene inizialmente definita l'**unità immaginaria**, $i$, come la radice quadra di $-1$,

$$i := \sqrt{-1} \ .$$

L'insieme dei numeri complessi, indicato con $\mathbb{C}$, è l'insieme di quei numeri che possono essere scritti come 

$$z = x + i y \ ,$$

con $x, \ y \in \mathbb{R}$.

### Operazioni: somma e moltiplicazione
I numeri complessi formano la struttura algebrica di **campo** con le operazioni di somma e prodotto. Dati due numeri complessi $z_1 = x_1 + i y_1$, $z_2 = x_2 + i y_2$, vengono definiti

- la somma

   $$z_1 + z_2 = (x_1 + x_2) + i (y_1 + y_2) \ $$

- il prodotto,

  $$\begin{aligned}
    z_1 \, z_2 & = (x_1 + i y_1) (x_2 + i y_2) = \\
    & = x_1 \, x_2 - y_1 \, y_2 + i ( x_1 \, y_2 + x_2 \, y_1 )
   \end{aligned}$$

- elevamento a potenza con esponente intero, $n \in \mathbb{N}$,
  
  $$z^n = \underbrace{z \cdot z \cdot \dots \cdot z}_{n \text{volte}}$$

- elevamento a potenza con esponente reale **todo** ...

### Esponenziale complesso e formula di Eulero
Estendendo la definizione di funzione esponenziale $e^x$ ai numeri complessi, si può scrivere

$$e^z = \sum_{n = 0}^{+\infty} \frac{z^n}{n!} = \lim_{n \rightarrow +\infty} \left( 1 + \frac{z}{n} \right)^n$$

```{dropdown} Dimostrazione dell'equivalenza delle due definizioni
```

#### Formula di Eulero
Per esponenti reali, vale

$$e^{i x} = \cos x + i \sin x$$

```{dropdown} Dimostrazione usando la definizione come serie
L'identità di Eulero può essere dimostrata (**todo** *bisogna verificare la convergenza (uniforme) delle serie?*) confrontando le serie polinomiali (di Taylor) delle funzioni $\cos x$, $\sin x$ definite sui numeri reali, $x \in \mathbb{R}$

$$\begin{aligned}
  \cos x & = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} + \dots \\
  \sin x & = x - \frac{x^3}{3!} + \frac{x^5}{5!} + \dots \\
\end{aligned}$$

con la serie che definisce l'esponenziale complesso,

$$
  e^z & = 1 + z + \frac{z^2}{2!} + \frac{z^3}{3!} + \frac{z^4}{4!} + \frac{z^5}{5!} + \dots \\
$$

valutata in $z = i x \in \mathbb{C}$

$$\begin{aligned}
  e^{i x} 
      & = 1 + i x + \frac{(i x)^2}{2!} + \frac{(i x)^3}{3!} + \frac{(i x)^4}{4!} + \frac{(i x)^5}{5!} + \dots = \\
      & = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} \dots + i \left[ x - \frac{x^3}{3!} + \frac{x^5}{5!}  + \dots \right] = \\
      & = \cos x + i \sin x \ .
\end{aligned}$$

```

```{dropdown} Dimostrazione usando la definizione come limite della successione
**todo**

$$a_n = \left( 1 + \frac{z}{n} \right)^n = \left( 1 + \frac{x}{n} + i \frac{y}{n} \right)^n$$

Il modulo di $a_n$ tende a $e^x$

$$r_n = \sqrt{\left(1+ \frac{x}{n}\right)^2 + \left(\frac{y}{n}\right)^2}$$

$$n r_n = \sqrt{( n + x )^2 + y^2}$$

l'argomento tende a $\theta$ 

$$\tan \theta_n = \frac{\frac{y}{n}}{1 + \frac{x}{n}} = \frac{y}{x + n}$$

$$\begin{aligned}
\sin \theta_n & = \frac{y}{n \, r_n} \\
\cos \theta_n & = \frac{x+n}{n \, r_n}
\end{aligned}$$

Usando la **formula di de Moivre**

$$( \cos x + i \sin x)^n = \cos( n x ) + i \sin ( n x )$$

si può scrivere

$$\begin{aligned}
  a_n & = \left( 1 + \frac{x}{n} + i \frac{y}{n} \right)^n = \\
      & = \left( r_n \cos \theta_n + i r_n \sin \theta \right)^n = \\
      & = r_n^n \cdot \left[ \cos ( n \theta_n ) + i \sin (n \theta_n) \right]
\end{aligned}$$

Per $n \rightarrow \infty$

$$\theta_n \sim \tan \theta_n = \frac{y}{x+n} \sim \frac{y}{n}$$
$$n \theta_n \sim y$$

$$\begin{aligned}
  r_n^n & = \left[ \left( 1 + \frac{x}{n} \right)^2 + \left( \frac{y}{n} \right)^2 \right]^{\frac{n}{2}} = \\
        & = \left( 1 + \frac{x}{n} \right)^{n} \left[ 1 + \left(\frac{y}{n+x}\right)^2 \right]^{\frac{n}{2}} = \\
\end{aligned}$$

Il primo fattore è asintotico a $e^x$,

$$\left( 1 + \frac{x}{n} \right)^n \sim e^x \ .$$

Il secondo fattore, con il "completamento della definizione di esponenziale", può essere riscritto come

$$\left[ 1 + \left(\frac{y}{n+x}\right)^2 \right]^{\frac{n}{2}} = \left\{ \left[ 1 + \left(\frac{y}{n+x}\right)^2 \right]^{\left(\frac{n+x}{y}\right)^2} \right\}^{\frac{n y^2}{2(n+x)^2}} \sim e^0 = 1 \ .$$

Il termine $r_n^n$ tende quindi a $e^x$.

Il limite dei termini $a_n$ della successione che definisce l'esponenziale complesso può quindi essere scritto come

$$e^z = e^x \left( \cos y + i \sin y \right) \ ,$$

Si trova quindi l'identità di Eulero usando la proprietà delle potenze estesa ai numeri complessi,

$$e^z = e^{x + iy} = e^x \, e^{i y} =  e^x \left( \cos y + i \sin y \right)
\rightarrow
e^{iy} = \cos y + i \sin y \ .
$$


**todo** ...

```

### Rappresentazione nel piano complesso
Ogni numero complesso $z \subset \mathbb{C}$ può essere associato a un punto del piano complesso $\mathbb{C}$; l'uso di coordinate cartesiane o polari per la descrizione dei punti del piano $\mathbb{R}^2$ suggerisce due tipi di rappresentazioni per un numero complesso:

- la **rappresentazione cartesiana** associa l'asse delle ascisse alla parte reale $x$ e l'asse delle ordinate alla parte immaginaria $y$,

  $$z = x + i y$$

- la **rappresentazione polare**; usando la legge di trasformazione tra coordinate polari $(r, \theta)$ e coordinate cartesiante $(x,y)$

  $$\begin{cases}
    x = r \cos \theta \\
    y = r \sin \theta
  \end{cases}$$

  e la formula di Eulero, $e^{i \theta} = \cos \theta + i \theta$, è possibile scrivere un numero complesso in forma polare,

  $$z = x + i y = r \cos \theta + i r \sin \theta = r \left( \cos \theta + i \sin \theta \right) = r e^{i \theta} \ .$$


```{note}
Le due rappresentazioni non sono equivalenti. Mentre la rappresentazione cartesiana permette di creare una relazione biunivoca tra i numeri complessi $z = x + i \ y$ e i punti nel piano $(x, \ y)$, la rappresentazione polare assegna infiniti numeri complessi, seppur di uguale valore $r \, e^{i \theta} = r \, e^{i (\theta + n \, 2 \pi)}$, con $n \in \mathbb{Z}$ allo stesso punto nello spazio.
```

## Operazioni con i numeri complessi
- somma

  $$z_1 + z_2 = (x_1 + x_2) + i(y_1 + y_2)$$

- prodotto

  $$z_1 \ z_2 = r_1 \, r_2 e^{i(\theta_1 + \theta_2)}$$

- complesso coniugato

  $$z^* = x - i y = r e^{-i\theta} $$

- valore assoluto
  
  $$|z| = \sqrt{x^2 + y^2} = r = \sqrt{z^* z}$$

- potenza ed esponenziale

  $$z^a = \left(r e^{i\theta} \right)^a = r^a e^{i a \theta}$$

  $$a^{i y} = \left(e^{\ln a} \right)^{iy} = e^{i y \ln a} = \cos ( y \ln a ) + i \sin ( y \ln a )$$

  $$a^z = a^{x+iy} = a^x a^{iy} = a^x \left( \cos ( y \ln a ) + i \sin ( y \ln a ) \right)$$

  $$z^w = \left(r e^{i \theta}\right)^{( u + i v )} = r^{u+iv} e^{i \theta (u+iv)} = r^u e^{-\theta v} e^{i \left( v \ln r + \theta u \right)} $$

  **todo** discutere il caso di potenze intere, potenze razionali, potenze irrazionali,... *con grafico*

- logaritmo, con base reale positiva, $a > 0$
  
  $$\log_a z = \log_a \left( r \, e^{i ( \theta + n \, 2 \pi )} \right) = \log_a r + \log_a e^{i (\theta + n \, 2 \pi )} = \log_a r + i \, \frac{1}{\ln a} \, \left( \theta + n \, 2 \pi \right)$$

  avendo usato le proprietà dei logaritmi 

   $$\begin{aligned}
     \log ( a b ) & = \log a + \log b \\
     \log_a b & = \frac{\log_c b}{\log_c a}
   \end{aligned}$$
<!--
Osservando la relazione $w = a^{z} e^{i n 2\pi}$, si può definire l'operazione inversa come il logaritmo di $w$ in base $a$, $

  $$z + i n 2 \pi = \log_a w = \log_a \left( a^x \left( \cos ( y \ln a ) + i \sin ( y \ln a ) \right) \right)$$
-->
  
## Altri argomenti/proprietà

$$\begin{aligned}
  \text{re} \{ z \} & = \frac{1}{2} \left( z + z^* \right) \\
  \text{im} \{ z \} & = \frac{1}{2} \left( z - z^* \right) \\
\end{aligned}$$

$$e^{i \alpha} e^{i \beta} = e^{i (\alpha + \beta)}$$
$$\left( e^{i \alpha} \right)^n = e^{i n \alpha}$$

### Formula di de Moivre

$$(\cos x + i \sin x)^n = \cos(nx) + i \sin(nx) \ , \quad n \in \mathbb{Z}$$

```{dropdown} Dimostrazione per induzione
Per $n \in \mathbb{N}$, si procede per induzione **todo** *aggiungere i capitoli sulla logica? E un riferimento ad essi?* Per $n = 1$ la formula di de Moivre si riduce a un'identità. Supponiamo quindi che sia valida per un intero $n > 1$ e verifichiamo se questo implica che sia valida anche per $n+1$

$$\begin{aligned}
  (\cos x + i \sin x)^{n+1} & = (\cos x + i \sin x)^n \, (\cos x + i \sin x) = \\
                            & = \left(\cos (nx)+ i \sin (nx) \right) \, (\cos x + i \sin x) = \\
                            & = \cos(nx) \cos x - \sin(nx) \sin x + i \left( \cos(nx) \sin x + \sin(nx) \cos x \right) = \\
                            & = \cos( (n+1)x ) + i \sin( (n+1) x ) \ .
\end{aligned}$$

Per $n = 0$, la formula di de Moivre si riduce all'identità $1 \equiv 1$.

Per $m := -n \in \mathbb{N}$, la formula di de Moivre può essere verificata usando la formula di de Moivre per $m > 0$ e razionalizzando la frazione,

$$\begin{aligned}
  \left( \cos x + i \sin x \right)^{n} & = \frac{1}{\left( \cos x + i \sin x \right)^m} = \\
   & = \frac{1}{\left( \cos (m x) + i \sin (m x) \right)} = \\
   & = \frac{\cos( m x) - i \sin (m x)}{\underbrace{\cos^2(mx) + \sin^2(mx)}_{=1}} = \cos(mx) - i \sin(mx) = \cos(nx) + i \sin(nx) \ .
\end{aligned}$$

```

### Teorema fondamentale dell'algebra
Ogni polinomio a coefficienti reali (**todo** o anche complessi) di grado $n$, $p_n(x) = a_n x^n + a_{n-1} x^{n-1} + \dots a_1 x + a_0$ può essere fattorizzato come prodotto di $n$ binomi

$$p_n(x) = a_n ( x - z_1 )( x - z_2 )\dots( x - z_n) \ ,$$

e i numeri $z_k \in \mathbb{C}$, $k = 1:n$, sono chiamati **zeri** del polinomio.

Come diretta conseguenza, ogni equazione polinomiale di grado $n$, $p_n(x) = 0$, ammette $n$ soluzioni complesse coincidenti con gli zeri $z_k$ del polinomio $p_n(x)$.


## Equazioni e disequazioni con i numeri complessi
Le equazioni e le disequazioni con i numeri complessi possono essere ricondotti a problemi che coinvolgono una coppia di variabili reali, tipicamente le componenti reale e immaginaria, o il modulo e l'argomento, che descrivono il piano dei numeri complessi.

**todo**


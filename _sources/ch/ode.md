```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(ode-hs)=
# Equazioni differenziali ordinarie

Le equazioni differenziali ordinarie, spesso abbreviate con l'acronimo **ODE** dall'inglese *Ordinary Differential Equations*, sono equazioni che coinvolgono una funzione di una variabile e le sue derivate.

**Motivazione.** Le ODE sono un argomento fondamentale da comprendere, poiché esse compaiono e governano la risposta di molti sistemi in vari ambiti della matematica, della fisica e delle scienze in generale, dell'ingegneria e dell'economia. Così, ad esempio sono ODE:
- le equazioni del moto in dinamica
- le equazioni della statica in meccanica delle strutture
- le equazioni che descrivono l'andamento della temperatura attraverso un mezzo, in condizioni stazionarie
- le equazioni che descrivono l'evoluzione di una popolazione di prede e di predatori (es. modello di Lotka-Volterra)

e in generale, in tutti le equazioni che governano processi in cui il valore di una funzione incognita in un istante di tempo o in un punto dello spazio spazio dipende dal suo valore negli istanti di tempo o nei punti dello spazio "vicini".

**Approccio.**
Mentre le motivazioni date dovrebbero essere sufficienti a convincere dell'importanza e della necessità di un'introduzione alle ODE, una trattazione completa dell'argomento richiede strumenti matematici più avanzati di quelli disponibili a uno studente delle scuole superiori (e spesso anche di molti studenti universitari).
Si cercherà quindi di trattare l'argomento nella maniera più rigorosa possibile per fornire gli strumenti necessari per (semplici) applicazioni nelle quali compaiono le ODE, mentre si chiederà qualche atto di fede nell'accettare alcuni risultati. <span style="color:red">Per completezza, in corrispondenza di questi atti di fede, verrà messo a disposizione un collegamento a una trattazione più completa dell'argomento.</span>

**Contenuti.**
Il capitolo è diviso come segue: dopo aver fornito le [prime definizioni](ode-hs:def), si introduce una [classificazione](ode-hs:types) delle equazioni differenziali ordinarie, prestando massima attenzione alle [equazioni differenziali lineari a coefficienti costanti](ode-hs:types:linear-const): per questo particolare tipo di ODE, è possibile trovare un metodo generale di soluzione. Dopo aver mostrato [alcuni esempi](ode-hs:types:linear-const:ex), viene presentato il [metodo di soluzione](ode-hs:types:linear-const:sol), e applicato successivamente alla [risoluzione degli esempi](ode-hs:types:linear-const:ex-sol) dati: la soluzione degli esempi è pensata per fare pratica con la tecnica risolutiva e permette di indagare alcuni fenomeni fisici come quello della **risonanza** **todo** *aggiungere riferimento alla soluzione del sistema massa-molla-smorzatore*. Infine, viene presentata un'altra categoria di ODE, per la quale esiste - almeno formalmente - una tecnica risolutiva: la tecnica di separazione delle variabili per le [equazioni differenziali a variabili separabili](ode-hs:types:separable).

(ode-hs:def)=
## Prime definizioni
Un'**equazione differenziale ordinaria** è un'equazione che coinvolge una funzione reale, incognita, di una variabile reale e le sue derivate. Formalmente una ODE può essere scritta come

$$F\left(y^{(n)}(x), \dots y'(x), y(x), x \right) = 0 \quad , \qquad x \in D = [x_0, x_1]$$

Un problema differenziale **ben definito**, in generale è definito da una **ODE**, per valori della variabile indipendente $x$ all'interno di un dominio dato, $x \in D$, e da alcune **condizioni al contorno** del dominio che consentano di determinare una soluzione del problema senza arbitrarietà. Come regola generale, affinché un problema sia definito sono necessarie $n$ condizioni sulla funzione incognita o sulle sue derivate. Si possono definire alcuni problemi:
- problemi differenziali **ai valori iniziali** (o di **Cauchy**), se le $n$ condizioni coinvolgono il valore della funzione e delle sue prime $n-1$ derivate all'estremo inferiore del dominio; un esempio tipico di problemi di Cauchy sono i problemi diretti in meccanica classica, dove l'evoluzione di un sistema è governata da equazioni differenziali del secondo ordine nella posizione, e può essere determinata dalle forze agenti su di esso, una volta nota la posizione (valore della funzione incognita) e della velocità (valore della derivata prima della funzione incognita) all'istante iniziale dell'intervallo di interesse
- problemi differenziali con **condizioni al contorno**

Il **grado** di una ODE è l'ordine massimo della derivata che compare nell'equazione. In generale, la soluzione di una ODE di grado $n$ è il risultato di $n$ operazioni di integrazione che producono $n$ costanti arbitrarie.

(ode-hs:types)=
## Classificazione, esempi e tecniche risolutive

(ode-hs:types:linear-const)=
### Equazioni lineari a coefficienti costanti

(ode-hs:types:linear-const:def)=
#### Definizione
Una ODE lineare a coefficienti costanti di ordine $n$ è un'equazione differenziale che mette in relazione la combinazione lineare della funzione incognita $y(x)$ e delle sue prime $n$ derivate con una funzione nota $f(x)$,

$$a_n y^{(n)}(x) + \dots a_1 y'(x) + a_0 y(x) = f(x) \ .$$

Se la funzione $f(x)$ è la funzione identicamente nulla $f(x) \equiv 0$, l'equazione è un'equazione omogenea.

(ode-hs:types:linear-const:ex)=
#### Esempi
In questa sezione vengono presentati alcuni esempi di equazioni differenziali ordinarie, ottenute partendo da alcune leggi della fisica. Successivamente nel capitolo verrà presentata la [soluzione](ode-hs:types:linear-const:ex-sol) di alcuni problemi differenziali descritti in questi esempi.

```{dropdown} Temperatura di un corpo, soggetto a convezione
**Temperatura di un corpo, soggetto a convezione.** L'equazione che governa l'evoluzione della temperatura $T(t)$ di un sistema, sufficientemente piccolo da poter essere considerato a temperatura uniforme nello spazio, soggetto alla trasmissione del calore per convezione sulla sua superficie in un ambiente a temperatura $T^e(t)$ nota è l'equazione differenziale ordinaria del primo ordine,

$$m \, C \, \dot{T}(t) + h \, T(t) = h \, T_e(t) \ ,$$

con le opportune condizioni iniziali.
Questa equazione può essere ricavata dal principio della termodinamica, per il quale la variazione di energia termica $E$ di un sistema non sottoposta a lavoro delle forze è uguale al flusso di calore "entrante" nel sistema, $\dot{Q}^e$,

$$\dot{E} = \dot{Q}^e \ ,$$

scrivendo l'energia termica come il prodotto della massa $m$, del calore specifico $c$ e della temperatura $T$ del sistema, e il flusso di calore per convezione con la *formula di Newton*, $\dot{Q} = h (T_e - T)$.
```

```{dropdown} Sistema massa-molla-smorzatore
**Sistema massa-molla-smorzatore.** L'equazione che governa la dinamica di un sistema massa-molla-smorzatore con un corpo di massa $m$ che si muove lungo una direzione $x$, vincolato a terra da una molla di costante elastica $k$ e da uno smorzatore lineare con coefficiente $c$, soggetto a una forzante esterna $f^e(t)$ nota è l'equazione differenziale ordinaria del secondo ordine,

$$m \, \ddot{x}(t) + c \, \dot{x}(t) + k \, x(t) = f^e(t) \ ,$$

con le opportune condizioni iniziali. 
Questa equazione può essere ricavata dal secondo principio della dinamica di Newton lungo la direzione $x$

$$\dot{\vec{Q}} = \vec{R}^e = \vec{F}^k + \vec{f}^c + \vec{f}^e(t) \ ,$$

scrivendo la quantità di moto del sistema lungo $x$ come $Q_x = m \dot{x}(t)$ e assumendo che la molla e lo smorzatore esercitino una forza sul corpo $f^{k} = - k \, x$, $f^c = - c \, \dot{x}$ rispettivamente.

**Distribuzione stazionaria di temperatura.** La distribuzione stazionaria di temperatura in un corpo, senza sorgenti di calore al suo interno, è governata dall'equazione differenziale ordinaria del secondo ordine,

$$( k T'(x) )' = 0 \ ,$$
```

```{dropdown} Circuito RLC. **todo**
**Circuito RLC.** **todo**
```

```{dropdown} Caduta di un grave - 1: senza resistenza
**Caduta di un grave - 1: senza resistenza.** L'equazione che governa la caduta di un corpo di massa $m$ soggetto alla gravità $g$ lungo la verticale nei pressi della superficie terrestre è l'equazione differenziale ordinaria del secondo ordine

$$m \ddot{z} = - m \, g \ ,$$

con le opportune condizioni iniziali.
Questa equazione può essere ricavata dal secondo principio della dinamica di Newton per un corpo di massa $m$ soggetto unicamente al suo peso $\vec{F}^{peso} = - m \, g \hat{z}$,

$$\dot{\vec{Q}} = \vec{F}^{peso} \ ,$$

e scegliendo la coordinata $z$ allineata alla verticale e diretta verso l'alto.
```

```{dropdown} Caduta di un grave - 2: con resistenza lineare nella velocità
**Caduta di un grave - 2: con resistenza lineare nella velocità.** Se la caduta del grave è influenzata dalla resistenza aerodinamica dovuta all'interazione con l'aria rispetto alla quale si muove, e se questa interazione può essere rappresentata da una forza lineare rispetto alla velocità, $\vec{D} = - c \dot{\vec{r}}$, il secondo principio della dinamica fornisce l'equazione del moto,

$$\dot{\vec{Q}} = \vec{F}^{peso} + \vec{D} \ ,$$

che può essere proiettata lungo la verticale per dare l'equazione differenziale ordinaria del secondo ordine,

$$m \ddot{z} + c \dot{z} = m \, g \ .$$
```

```{dropdown} Caduta di un grave - 3: con resistenza quadratica nella velocità
**Caduta di un grave - 3: con resistenza quadratica nella velocità** Se la caduta del grave è influenzata dalla resistenza aerodinamica dovuta all'interazione con l'aria rispetto alla quale si muove, e se questa interazione può essere rappresentata da una forza lineare rispetto alla velocità, $\vec{D} = - \frac{1}{2} \rho S c_D |\dot{\vec{r}}| \dot{\vec{r}}$, il secondo principio della dinamica fornisce l'equazione del moto,

$$\dot{\vec{Q}} = \vec{F}^{peso} + \vec{D} \ ,$$

che può essere proiettata lungo la verticale per dare l'equazione differenziale ordinaria del secondo ordine,

$$m \ddot{z} + \frac{1}{2} \rho S c_D |\dot{z}| \dot{z} = m \, g \ .$$
```

```{dropdown} Moto parabolico di un grave - 1: senza resistenza
**Moto parabolico di un grave - 1: senza resistenza.** Il moto parabolico nei pressi della superficie terrestre è un moto piano governato da un'equazione del moto ricavata dal secondo principio della dinamica,

$$\dot{\vec{Q}} = \vec{R}^e \ .$$

Una scelta conveniente del sistema di coordinate per descrivere il moto piano consiste nella scelta di coordinate cartesiane $(x,y)$, con l'asse $y$ rivolto verso l'alto e l'asse $x$ orizzontale e nel piano del moto. Scegliendo un sistema di coordinate cartesiane, la posizione di un punto può essere scritta usando i due vettori unitari (*uniformi nello spazio, e quindi costanti* **todo** *spiegarsi peggio*)

$$P(t) - O = x_P(t) \hat{x} + y_P(t) \hat{y} \ .$$

Calcolando le derivate nel tempo della posizione si trovano le espressioni della velocità e dell'accelerazione del punto $P$

$$\begin{aligned}
  \vec{v}_P(t) = v_{x,P}(t) \hat{x} + v_{y,P}(t) \hat{y} & =  \dot{\vec{r}}_P(t) = \dot{x}_{P}(t) \hat{x} + \dot{y}_{P}(t) \hat{y} \\
  \vec{a}_P(t) = a_{x,P}(t) \hat{x} + a_{y,P}(t) \hat{y} & = \ddot{\vec{r}}_P(t) =\ddot{x}_{P}(t) \hat{x} +\ddot{y}_{P}(t) \hat{y} \\
\end{aligned}$$

Il secondo principio della dinamica diventa quindi

$$m ( \ddot{x}_P(t) \hat{x} + \ddot{y}_P(t) \hat{y}) = - m \, g \hat{y} \ ,$$

avendo usato l'espressione della forza peso $\vec{F}^{peso} = - m \, g \hat{y}$. Proiettando l'equazione vettoriale lungo le due direzioni cartesiane, si ottiene un sistema di due equazioni differenziali del secondo ordine

$$\begin{cases}
  m \ddot{x}_P = 0 \\
  m \ddot{y}_P = - m \, g
\end{cases}$$

In questo caso, le due equazioni differenziali del sistema sono indipendenti tra di loro e il problema differenziale può essere risolto senza difficoltà aggiuntive, una volta che vengono date le condizioni (iniziali, per problema diretto) necessarie.
```

```{dropdown} Moto parabolico di un grave - 2: con resistenza lineare nella velocità
```

```{dropdown} Deformazione a torsione di una trave
**Deformazione a torsione di una trave.** La rotazione delle sezioni di una trave di lunghezza $L$ soggetta a torsione con un momento torcente distribuito $m(x)$ è governata dall'equazione di equilibrio indefinito,

$$M_z'(z) = m(x) \ ,$$

con una legge costitutiva che leghi la rotazione $\theta(z)$ di una sezione al momento torcente interno $M_z(z)$, e le opportune condizioni al contorno. Nel caso di trave elastica lineare, la legge costitutiva stabilisce la relazione $M_z(z) = GJ \theta'(z)$. Nel caso di trave incastrata nell'estremo identificato dalla coordinata $z=0$ e di momento torcente $M^e$ applicato nell'estremo identificato dalla coordinata $z = L$, la deformazione a torsione della trave è determinata dal problema differenziale

$$\begin{cases}
(GJ \theta'(z))' = m(z) \qquad z \in [0,L] \\
\theta(0) = 0 \\
GJ \theta'(L) = M^e \\
\end{cases}$$
```

```{dropdown} Deformazione a flessione di una trave
**Deformazione a flessione di una trave.** La deformazione a flessione di una trave elastica lineare è governata dall'equazione $$w''''(z) = f(z)$$... **todo**
```

(ode-hs:types:linear-const:sol)=
#### Soluzione generale
La soluzione di un'equazione differenziale lineare a coefficienti costanti può essere scritta come somma di una soluzione $y_o(x)$ dell'equazione omogenea associata e di una soluzione particolare $y_p(x)$ dell'equazione,

$$y(x) = y_o(x) + y_p(x)$$

(ode-hs:types:linear-const:sol:homo)=
##### Soluzione dell'equazione omogenea

Un'equazione differenziale omogenea è un problema lineare, e quindi la somma di due soluzioni è anch'essa una soluzione. La soluzione generale dell'equazione omogenea di ordine $n$ può essere scritta come combinazione lineare di $n$ sue soluzioni particolari *indipendenti* (qualitativamente, cioè che non contengono le stesse informazioni ripetute).

Sfruttando le proprietà dell'esponenziale, la soluzione generale dell'equazione omogenea viene cercata come combinazione lineare di soluzioni che hanno un'espressione $y_o(x) = e^{s x}$. Sostituendo nell'equazione differenziale omogenea, si ottiene un'equazione algebrica polinomiale in $s$

$$\begin{aligned}
  0 & = a_n y^{(n)}(x) + \dots a_1 y'(x) + a_0 y(x) = \\
    & = \left( a_n \, s^n + \dots a_1 \, s + a_0 \right) \underbrace{e^{s x}}_{\ne 0} \ , \\
\end{aligned}$$
poiché la funzione esponenziale non è mai nulla. Il [teorema fondamentale dell'algebra](math-hs:precalculus:polynomials:alg-fund-thm:real-coeffs) garantisce che il polinomio con coefficienti reali $a_n x^n + \dots a_1 x + a_0$ ha $n$ zeri reali o complessi coniugati.

- Se il polinomio $a_n \, s^n + \dots a_1 s + a_0$ **non ha zeri $s_k$ multipli**, allora la soluzione generale dell'equazione omogenea è

  $$y_o(x) = C_1 \, e^{s_1 x} + \dots + C_n \, e^{s_n x}$$

  Nel caso di zeri complessi coniugati, anche le rispettive costanti di integrazione saranno complesse coniugate, $C_{-} = C^*_{+}$, per avere come soluzione una funzione reale

  $$\begin{aligned}
  C_{+} e^{s x} + C_{-} e^{s^* x}
    & = ( A + i B ) e^{(\sigma + i \omega) x} + ( A - i B ) e^{(\sigma - i \omega )x} = \\
    & = ( A + i B ) e^{\sigma x} \left( \cos(\omega x) + i \sin (\omega x) \right) 
      + ( A - i B ) e^{\sigma x} \left( \cos(\omega x) - i \sin (\omega x) \right) = \\
    & = 2 \left( A \cos (\omega x) - B \sin (\omega x) \right) \, e^{\sigma x}
  \end{aligned}$$

- Se il polinomio ha **zeri multipli**, le soluzioni esponenziali in corrispondenza degli zeri multipli non sarebbero linearmente indipendenti. In generale, in corrispondenza di uno zero $s_p$ con molteplicità $p$ le soluzioni indipendenti sono

  $$e^{s_p x} \ , \quad x \, e^{s_p x} \ , \quad \dots \ , \quad x^{p-1} \, e^{s_p x} \ .$$

<!--
**todo** *Trattare il caso con radici multiple. Anche se non è una dimostrazione, dare una giustificazione della forma delle soluzioni indipendenti*
-->

```{dropdown} Radici multiple - "Dimostrazione"

Un'equazione differenziale lineare a coefficienti costanti omogenea può essere riscritta come

$$\begin{aligned}
  0 & = a_n y^{(n)}(x) + \dots a_1 y'(x) + a_0 y(x) = \\
    & = a_n \left( - s_1 + \frac{d}{dx} \right) \dots \left( - s_n + \frac{d}{dx} \right) y(x) \ ,
\end{aligned}$$

dove i fattori possono essere commutabili, per la linearità. Nel caso di radici non multiple, l'unico modo affinché l'equazione sia soddisfatta è che l'azione di uno degli *operatori* $\left( - s_k + \frac{d}{dx} \right)$ su $y(x)$ dia risultato nullo, cioè

$$0 = \left(  - s_k + \frac{d}{dx} \right) y(x) = - s_k \, y(x) + y'(x) \ .$$

Nel caso in cui una radice sia multipla e abbia molteplicità $p$, le $p$ soluzioni indipendenti associate a questa radice sono quelle per le quali

$$0 = \left(  - s_k + \frac{d}{dx} \right)^p y(x) \ .$$

**Esempio con $p=2$**. Ad esempio esiste una radice $s$ con molteplicità $p=2$ i due "binomi" relativi a questa radice producono l'equazione differenziale,

$$0 = \left( - s + \frac{d}{dx} \right) \left( -s + \frac{d}{dx} \right) y(x) \ .$$

Affinché questa equazione sia soddisfatta, la funzione $y(x)$ deve essere tale da soddisfare una delle due condizioni

$$\begin{aligned}
  - s y(x) + y'(x) & = 0 \\
  - s y(x) + y'(x) & = A \, e^{s x} \\
\end{aligned}$$

La prima condizione ha una soluzione generale

$$- s y(x) + y'(x) = 0 \qquad \rightarrow \qquad y(t) = C e^{s x}$$

mentre la seconda condizione permette di trovare la soluzione desiderata come combinazione lineare delle $p=2$ desiderate,

$$\begin{aligned}
  - s y(x) + y'(x) & = A \, e^{sx}  \\
  e^{-sx} \left( - s y(x) + y'(x) \right) & = A  \\
  \dfrac{d}{dx} \left( e^{-sx} \, y(x) \right) & = A  \\
  \int \frac{d}{dx} \left( e^{-sx} y(x) \right) & = A \, x + B \\
   e^{-sx} y(x) & = A \, x + C \qquad \rightarrow \qquad  y(x) = A \, x \, e^{sx} + B \, e^{sx}  \ ,
\end{aligned}$$

avendo inizialmente moltiplicato entrambi lati dell'equazione per il termine mai nullo $e^{sx} \ne 0$, successivamente riconoscito con la formula del prodotto la derivata $\frac{d}{dx}\left( e^{-s x} y(x) \right) = - s e^{sx} y(x) + s^{sx} y'(x)$, e integrato ricordandosi delle costanti di integrazione necessarie a ottenere l'espressione più generale possibile, senza perdere pezzi in giro.

**Molteplicità $p$.** Il caso di radici mulitple con molteplicità generale può essere ricavato ricorsivamente, seguendo quanto fatto per il caso $p=2$. Questa dimostrazione viene lasciata come esercizio. 

```

(ode-hs:types:linear-const:sol:part)=
##### Soluzione particolare dell'equazione completa

Come regola generale, la ricerca della soluzione particolare dell'equazione completa è guidata dall'espressione della forzante. Ad esempio:

- con **forzanti polinomiali** si cerca una soluzione particolare polinomiale

- con **forzanti esponenziali** si cerca una soluzione particolare esponenziale

- con **forzanti armoniche** si cerca una soluzione particolare armonica

Nel caso in cui la soluzione particolare abbia la forma di una delle soluzioni della soluzione particolare, si adotta la stessa tecnica adottata nel caso di zeri multipli. 


(ode-hs:types:linear-const:ex-sol)=
#### Soluzione degli esempi
In questa sezione vengono risolti alcuni problemi governati dalle equazioni differenziali presentate in precedenza come [esempi](ode-hs:types:linear-const:ex) di equazioni differenziali ordinarie lineari a coefficienti costanti, applicando il [metodo di soluzione generale](ode-hs:types:linear-const:sol) per questo tipo di equazioni.

```{dropdown} Esempio - Temperatura di un corpo, soggetto a convezione.
**Temperatura costante, $T^e$**

**Temperatura crescente linearmente, $T^e(t) = T_0 + G \, t$**

**Temperatura con andamento periodico, $T^e(t) = T_0 + \Delta T \sin(\Omega t) \, t$**

```

```{dropdown} Esempio - Sistema massa-molla-smorzatore
**todo** *definire il sistema adimensionale e verificare la risposta in funzione del coefficiente di smorzamento del sistema; definire smorzamento critico, e sistemi sovra- e sotto-smorzati; indagare il fenomeno della* **risonanza**

**Moto libero - forzante nulla, $f^e = 0$**

**Forzante costante, $f^e$**

**Forzante armonica, $f^e(t) = f_0 + \Delta f \sin(\Omega t)$**
```

```{dropdown} Esempio - Circuito RLC. **todo**
```

```{dropdown} Esempio - Caduta di un grave - 1: senza resistenza
```

```{dropdown} Esempio - Caduta di un grave - 2: con resistenza lineare nella velocità
```

```{dropdown} Esempio - Caduta di un grave - 3: con resistenza quadratica nella velocità
```

```{dropdown} Esempio - Moto parabolico di un grave - 1: senza resistenza
```

```{dropdown} Esempio - Moto parabolico di un grave - 2: con resistenza lineare nella velocità
```

```{dropdown} Esempio - Deformazione a torsione di una trave
**Trave incastrata a un estremo, carico distribuito uniforme in apertura e concentrato all'altro estremo**

**Trave incastrata in entrambi gli estremi e con carico distribuito uniforme in apertura**

**Trave incastrata in un estremo e con carico distribuito triangolare in apertura**

```

```{dropdown} Esempio - Deformazione a flessione di una trave
**Trave incastrata a un estremo, carico distribuito uniforme in apertura e all'altro estremo, sia con forza sia con momento flettente concentrato**

**Trave incastrata in entrambi gli estremi e con carico distribuito uniforme in apertura**

**Trave incastrata in un estremo e vincolata con un pattino all'altro estremo**
```

(ode-hs:types:separable)=
### Equazioni differenziali a variabili separabili: tecnica di soluzione di separazione delle variabili

$$\frac{d y}{d x} = f(y(x)) \ g(x) $$

può essere riscritta formalmente come

$$\dfrac{dy}{f(y)} = g(x) \ d x $$

e integrata con le opportune condizioni 

$$\tilde{F}(y(x)) - \tilde{F}(y(x_0)) = G(x) - G(x_0)$$

(ode-hs:types:separable:ex)=
#### Esempi

```{dropdown} Equazione logistica
$$\frac{d p}{d t} =  a p \left( 1 - \frac{p}{b} \right)$$

$$\frac{d p}{p \left(1 - \frac{p}{b}\right)} = a dt$$

$$\left( \frac{1}{p} - \frac{1}{p - b} \right) dp = a dt$$

$$\int_{p_0}^{p(t)} \left( \frac{1}{p} - \frac{1}{p - b} \right) dp = \int_{t_0}^{t} a \, dt$$

$$\ln \left|\frac{p(t)}{p(t)-b}\right| = a t + C$$

$$\left|\frac{p(t)}{p(t)-b}\right| = e^{a \, t + C} = K \, e^{a t}$$

$$p(t) = - \frac{b \, e^{at}}{1 - K \, e^{a t}} = \frac{b}{K - e^{-at}} $$

<!--
$$\ln \left. \left|\frac{p}{p-b}\right| \right|_{p_0}^{p(t)} = a \left( t - t_0 \right)$$
$$\ln \left| \frac{p(t)}{p(t)-b} \right| - \ln \left| \frac{p_0}{p_0-b} \right| = a \left( t - t_0 \right)$$
-->
```

```{dropdown} Equazioni nella forma $\ y'(x) = y^n(x)$
$$y'(x) = y^n$$
$$y^{-n} \, dy = dx$$

$$\begin{aligned}
 n = 0: & \quad  y(x) = x + C \\
 n = 1: & \quad  \ln y(x) = x + C \\
 \dots: & \quad  \frac{1}{1-n} y^{-n+1}(x) = x + C  \\
\end{aligned}$$

```





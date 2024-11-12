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

## Prime definizioni
Un'**equazione differenziale ordinaria** è un'equazione che coinvolge una funzione reale, incognita, di una variabile reale e le sue derivate. Formalmente una ODE può essere scritta come

$$F(y^{(n)}(x), \dots y'(x), y(x), x) = 0 \quad , \qquad x \in D = [x_0, x_1]$$

Un problema differenziale **ben definito**, in generale è definito da una **ODE**, per valori della variabile indipendente $x$ all'interno di un dominio dato, $x \in D$, e da alcune **condizioni al contorno** del dominio che consentano di determinare una soluzione del problema senza arbitrarietà. Come regola generale, affinché un problema sia definito sono necessarie $n$ condizioni sulla funzione incognita o sulle sue derivate. Si possono definire alcuni problemi:
- problemi differenziali **ai valori iniziali** (o di **Cauchy**), se le $n$ condizioni coinvolgono il valore della funzione e delle sue prime $n-1$ derivate all'estremo inferiore del dominio; un esempio tipico di problemi di Cauchy sono i problemi diretti in meccanica classica, dove l'evoluzione di un sistema è governata da equazioni differenziali del secondo ordine nella posizione, e può essere determinata dalle forze agenti su di esso, una volta nota la posizione (valore della funzione incognita) e della velocità (valore della derivata prima della funzione incognita) all'istante iniziale dell'intervallo di interesse
- problemi differenziali con **condizioni al contorno**

Il **grado** di una ODE è l'ordine massimo della derivata che compare nell'equazione. In generale, la soluzione di una ODE di grado $n$ è il risultato di $n$ operazioni di integrazione che producono $n$ costanti arbitrarie.

## Classificazione, esempi e tecniche risolutive

### Equazioni lineari a coefficienti costanti

#### Definizione
Una ODE lineare a coefficienti costanti di ordine $n$ è un'equazione differenziale che mette in relazione la combinazione lineare della funzione incognita $y(x)$ e delle sue prime $n$ derivate con una funzione nota $f(x)$,

$$a_n y^{(n)}(x) + \dots a_1 y'(x) + a_0 y(x) = f(x) \ .$$

Se la funzione $f(x)$ è la funzione identicamente nulla $f(x) \equiv 0$, l'equazione è un'equazione omogenea.

#### Esempi

#### Soluzione
La soluzione di un'equazione differenziale lineare a coefficienti costanti può essere scritta come somma di una soluzione $y_o(x)$ dell'equazione omogenea associata e di una soluzione particolare $y_p(x)$ dell'equazione,

$$y(x) = y_o(x) + y_p(x)$$

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

##### Soluzione particolare dell'equazione completa

Come regola generale, la ricerca della soluzione particolare dell'equazione completa è guidata dall'espressione della forzante. Ad esempio:

- forzanti polinomiali

- forzanti esponenziali

- forzanti armoniche




- Equazioni di primo grado

$$m \dot{x} + c x  = f(t)$$

Soluzione dell'equazione omogenea

$$x_o(t) = C e^{-\frac{c}{m} t}$$

- Equazioni di secondo grado

$$m \ddot{x} + c \dot{x} + k x = f(t)$$

Soluzione dell'equazione omogenea

$$s_{1,2} = \sigma \mp i \omega$$

$$\begin{aligned}
x_o(t) & = C_1 e^{s_1 t } + C_2 e^{s_2 t} = \\
       & = e^{\sigma t} \left( C_1 e^{-i \omega t } + C_2 e^{i \omega t} \right) \ ,
\end{aligned}$$

con le costanti di integrazione complesse coniugate,

$$C_1 = C_2^* = (A - i B)^* = A + i B$$

al fine di avere una soluzione reale. Ricordando che la somma di un numero complesso e del suo coniugato vale due volte la parte reale,

$$w + w^* = (u+iv) + (u+iv)^* = u+iv + u - i v = 2 u = 2 \text{Re}\{w\}$$

si può riscrivere la soluzione dell'equazione omogenea

$$x_o(t) = 2 \left[ A \cos ( \omega t ) + B \sin (\omega t ) \right] $$

avendo riconosciuto 

$$\begin{aligned}
  \text{Re}\{C_2 e^{i \omega t}\} &= \text{Re}\{ (A - i B)(\cos(\omega t) + i \sin(\omega t)\} = \\
  & = \text{Re}\{ A \cos(\omega t) + B \sin (\omega t) + i \left[ A \sin (\omega t) - B \cos (\omega t) \right]\} \ .
\end{aligned}$$


### Equazioni separabili: tecnica di soluzione di separazione delle variabili

$$\frac{d y}{d x} = f(y(x)) \ g(x) $$

può essere riscritta formalmente come

$$\dfrac{dy}{f(y)} = g(x) \ d x $$

e integrata con le opportune condizioni 

$$\tilde{F}(y(x)) - \tilde{F}(y(x_0)) = G(x) - G(x_0)$$

### Esempi
- Moto rettilineo in un campo di forze costante e uniforme

$$m \ddot{x} = f =: m g$$

L'integrazione produce

$$x(t) = \frac{1}{2} g t^2 + v_0 t + x_0$$

- Moto di un corpo in un campo di forze costante e uniforme e forza viscosa (lineare e quadratica)

$$\begin{cases}
m \dot{v} = f + f^{visc} \\
\dot{x} = v
\end{cases}$$

**resistenza proporzionale alla velocità**
$$\begin{cases}
m \dot{v} + c v = mg \\
\dot{x} = v
\end{cases}$$

**resistenza proporzionale al quadrato della velocità**
$$\begin{cases}
m \dot{v} + \frac{1}{2} \rho S c_x v^2 = mg \\
\dot{x} = v
\end{cases}$$

- Temperatura della testa di una termocoppia

$$\dot{E} = \dot{Q} \ ,$$

con $E = m c T$, $\dot{Q} = h (T_e - T)$

$$m c \dot{T} + h T = h T_e$$

- Distribuzione della temperatura, in un caso stazionario

$$(k T')' = \rho r$$

- Sistema massa-molla-smorzatore, libero e forzato (**todo** risonanza)

$$m \ddot{x} + c \dot{x} + k x = f$$

- Circuiti RLC (analogia formale con sistema MMS)

$\dots$

- Deformazione a trazione di una trave

$$(EA u')' = f$$

- Deformazione a flessione di una trave

$$(EJ w'')'' = f$$

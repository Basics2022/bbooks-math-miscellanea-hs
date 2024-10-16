```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(ode:high-school)=
# Equazioni differenziali ordinarie

**Motivazione.** In molti ambiti delle scienze compaiono equazioni differenziali ordinarie, equazioni che impongono una condizione tra una funzione reale incognita e le sue derivate. Così, ad esempio:
- le equazioni del moto in dinamica
- le equazioni della statica in meccanica delle strutture
- le equazioni che descrivono l'andamento della temperatura attraverso un mezzo, in condizioni stazionarie
- ...
e in generale, in tutti i problemi in cui **todo**

**Approccio.**
Mentre le motivazioni date dovrebbero essere sufficienti a convincere dell'importanza e della necessità di un'introduzione alle equazioni differenziali ordinarie, una trattazione completa dell'argomento richiede strumenti matematici più avanzati di quelli disponibili a uno studente delle scuole superiori (e spesso anche di molti studenti universitari).

Si cercherà quindi di trattare l'argomento nella maniera più rigorosa possibile per fornire gli strumenti necessari per (semplici) applicazioni nelle quali compaiono le ODE, mentre si chiederà qualche atto di fede nell'accettare alcuni risultati. Per completezza, in corrispondenza di questi atti di fede, verrà messo a disposizione un collegamento a una trattazione più completa dell'argomento.

**Definizioni.**
Un'equazione differenziale ordinaria è una funzione che coinvolge una funzione reale di una variabile reale, incognita, e le sue derivate. Formalmente una ODE può essere scritta come

$$F(y^{(n)}(x), \dots y'(x), y(x), x) = 0 \quad , \qquad x in [x_0, x_1]$$

Il **grado** di una ODE è l'ordine massimo della derivata che compare nell'equazione.

In generale, la soluzione di una ODE di grado $n$ è il risultato di $n$ operazioni di integrazione che producono $n$ costanti arbitrarie. Affinché un problema sia definito, sono necessarie $n$ condizioni sulla funzione incognita o sulle sue derivate.

Si possono definire alcuni problemi:
- problemi differenziali ai valori iniziali
- problemi differenziali con condizioni al contorno

**Equazioni lineari a coefficienti costanti.**
- Soluzione generale (senza dimostrazione): $y(x) = y_o(x) + y_p(x)$
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


**Equazioni separabili: tecnica di soluzione di separazione delle variabili.**

$$\frac{d y}{d x} = f(y(x)) \ g(x) $$

può essere riscritta formalmente come

$$\dfrac{dy}{f(y)} = g(x) \ d x $$

e integrata con le opportune condizioni 

$$\tilde{F}(y(x)) - \tilde{F}(y(x_0)) = G(x) - G(x_0)$$

**Esempi**
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

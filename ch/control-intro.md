(control-hs:intro)=
# Introduzione ai sistemi di controllo

Questa sezione mostra come le [equazioni differenziali ordinarie](ode-hs) non siano solo strumenti per descrivere la natura, ma anche un modello matematico per governarla. Studiare un sistema dinamico (come un termostato, un drone o un braccio robotico) significa analizzarne la risposta naturale; progettarne il controllo significa invece aggiungere nuovi termini all'equazione per forzare il sistema a comportarsi come desideriamo.

L'idea centrale è la retroazione, **feedback**: viene misurato l'errore $e(t) := \overline{x}(t) - x(t)$ tra lo stato del sistema $x(t)$ e lo stato desiderato del sistema $\overline{x}(t)$, e usato per generare una forzante correttiva. Questa operazione trasforma i parametri intrinseci del sistema — come la rigidezza o lo smorzamento — permettendo di modificarne il comportamento.


(control-hs:intro:regulators)=
## Strategie di regolazione

Per manipolare la dinamica di un sistema, vengono utilizzati dei "regolatori". I più comuni sono basati sulla combinazione di tre azioni fondamentali applicate all'errore $e(t) := \overline{x}(t)−x(t)$:

**Azione Proporzionale (P).** Agisce sul presente. Fornisce una spinta proporzionale all'errore attuale. Matematicamente, agisce come una "molla virtuale" che tira il sistema verso il riferimento.

**Azione Derivativa (D).** Anticipa il futuro. Reagisce alla velocità con cui l'errore cambia. Introduce uno "smorzamento virtuale", fondamentale per frenare il sistema ed evitare che oscilli violentemente o superi il bersaglio (overshoot).

**Azione Integrale (I).** Ricorda il passato. Accumula l'errore nel tempo per eliminare quei piccoli residui che l'azione proporzionale non riesce a correggere (errore a regime). Risulta necessario per ottenere una tracciamento perfetto (almeno di segnali lenti).

La presenza di un termine integrale aumenta l'ordine del sistema.

(control-hs:intro:regulators:pd)=
### Regolatore PD

Ideale per stabilizzare sistemi meccanici, si definisce come:

$$f(t) = K_p e(t) + K_d \dot{e}(t) \ .$$

(control-hs:intro:regulators:pi)=
### Regolatore PI

Utilizzato per garantire che il sistema raggiunga esattamente il valore desiderato, anche in presenza di disturbi costanti:

$$f(t) = K_p e(t) + K_i \int_{\tau=0}^{t} \dot{e}(\tau) d \tau \ .$$

(control-hs:intro:examples:first-order)=
## Esempi

(control-hs:intro:examples:first-order)=
### Sistema del primo ordine

$$m \dot{x} + c x = f$$

```{dropdown} Regolatore PD
:open:


```

```{dropdown} Regolatore PI
:open:

Il regolatore PI prende come ingresso (forzante) l'errore dello stato rispetto al riferimento $e := \overline{x} - x$ e restituisce la forzante $f$,

$$\begin{aligned}
  f & = K_p \, e + K_i \, \int_{\tau=0}^{t} e(\tau)d \tau = \\
    & = K_p ( \overline{x} - x ) + K_i \int_{\tau=0}^{t} \left( \overline{x}(\tau) - x(\tau) \right) d \tau \ .
\end{aligned}$$

Inserendo questa espressione della forzante nell'equazione dinamica del sistema, si ottiene il sistema in anello chiuso

$$m \dot{x} + ( c + K_p ) x = K_p \overline{x} + K_i \int_{\tau=0}^{t} \left( \overline{x}(\tau) - x(\tau) \right) d \tau \ .$$

Si calcola la derivata prima di questa equazione per ottenere un'equazione differenziale ordinaria del secondo ordine.

$$m \ddot{x} + \left( c + K_p \right) \dot{x} = K_p \dot{\overline{x}} + K_i \left( \overline{x} - x \right) \ . $$

$$m \ddot{x} + \left( c + K_p \right) \dot{x} + K_i x = K_i \overline{x} + K_p \dot{\overline{x}} \ . $$

**Osservazione.** I coefficienti del regolatore PI modificano lo smorzamento del sistema $c \rightarrow c + K_p$, e introducono una rigidezza $0 \rightarrow K_i$.

**Osservazione.** Con un regolatore PI, è possibile ottenere un tracciamento esatto a regime di un segnale costante a tratti ($\dot{\overline{x}} = 0$), poiché la soluzione a regime (assumendo che il sistema sia stabile, e quindi $\ddot{x} \rightarrow 0$, $\dot{x} \rightarrow 0$) tende al valore di riferimento $x \rightarrow \overline{x}$.


```

(control-hs:intro:examples:second-order)=
### Sistema del secondo ordine

```{dropdown} Regolatore PD
:open:

$$m \ddot{x} + c \dot{x} + k x = f$$

Si vuole costruire un sistema di controllo che fornisca la forzante $f$ necessaria al sistema meccanico per ottenere uno stato del sistema desiderato $\overline{x}$. Questo riferimento qui viene dato come ingressi a gradino.

Il regolatore PD prende come ingresso (forzante) l'errore dello stato rispetto al riferimento $e := \overline{x} - x$ e restituisce la forzante $f$,

$$\begin{aligned}
  f & = K_p \, e + K_d \, \dot{e} = \\
    & = K_p ( \overline{x} - x ) + K_d \left( \dot{\overline{x}} - \dot{x} \right)  \ .
\end{aligned}$$

Inserendo questa espressione della forzante nell'equazione dinamica del sistema, si ottiene il sistema in anello chiuso

$$m \ddot{x} + \left( c + K_d \right) \dot{x} + \left( k + K_p \right) x = K_p \overline{x} + K_d \dot{\overline{x}} \ .$$

**Osservazione.** Con un regolatore PD, non è possibile ottenere un tracciamento esatto a regime di un segnale costante a tratti, poiché la soluzione a regime (assumendo che il sistema sia stabile) è $x = \frac{K_p}{k + K_p} \overline{x}$.

```

```{dropdown} Regolatore PI
:open:

$$m \ddot{x} + c \dot{x} + k x = f$$

Si vuole costruire un sistema di controllo che fornisca la forzante $f$ necessaria al sistema meccanico per ottenere uno stato del sistema desiderato $\overline{x}$. Questo riferimento qui viene dato come ingressi a gradino.

Il regolatore PI prende come ingresso (forzante) l'errore dello stato rispetto al riferimento $e := \overline{x} - x$ e restituisce la forzante $f$,

$$\begin{aligned}
  f & = K_p \, e + K_i \, \int_{\tau=0}^{t} e(\tau)d \tau = \\
    & = K_p ( \overline{x} - x ) + K_i \int_{\tau=0}^{t} \left( \overline{x}(\tau) - x(\tau) \right) d \tau \ .
\end{aligned}$$

Inserendo questa espressione della forzante nell'equazione dinamica del sistema, si ottiene il sistema in anello chiuso

$$m \ddot{x} + c \dot{x} + \left( k + K_p \right) x = K_p \overline{x} + K_i \int_{\tau=0}^{t} \left( \overline{x}(\tau) - x(\tau) \right) d \tau \ .$$

...

**todo** *Il sistema diventa del terzo ordine. Come trovare le radici del polinomio caratteristico? Aggiungere interattività*

```

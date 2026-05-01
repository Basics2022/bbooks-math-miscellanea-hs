(control-hs:intro)=
# Introduzione ai sistemi di controllo

Questa sezione presenta una prima introduzione ai sistemi di controllo, come applicazione di quanto studiato sulle [equazioni differenziali ordinarie](ode-hs). Mentre non si presta attenzione a molti criteri di progetto e realizzabilità di tali sistemi, questi vengono presentati come strumenti per modificare le equazioni dinamiche di sistemi lineari. 


(control-hs:intro:regulators)=

(control-hs:intro:regulators:pd)=
## Regolatore PD

$$f(t) = K_p e(t) + K_d + \dot{e}(t) \ .$$

(control-hs:intro:regulators:pi)=
## Regolatore PI

$$f(t) = K_p e(t) + K_i \int_{\tau=0}^{t} \dot{e}(\tau) d \tau \ .$$

(control-hs:intro:first-order)=
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

(control-hs:intro:second-order)=
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

```

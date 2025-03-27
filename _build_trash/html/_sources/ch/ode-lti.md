(ode:lti)=
# Sistemi lineari tempo invarianti (LTI)

In molti ambiti delle scienze, i sistemi di interesse possono essere descritti come sistemi lineari tempo-invarianti, governati da [equazioni differenziali a coefficienti costanti](ode-hs:types:linear-const).

Come visto nella sezione sulla [soluzione generale](ode-hs:types:linear-const:sol) di queste equazioni, la soluzione può essere scritta come somma di una soluzione dell'equazione omogenea indipendente dalla forzante del sistema e di una soluzione particolare che dipendente dalla forzante del sistema. **Se il sistema è asintoticamente stabile**, la soluzione dell'equazione omogenea tende a zero dopo un transitorio iniziale e rimane solo la risposta alla forzante. 

**todo-list:** [**Analisi di Fourier**](math-hs:todo:fourier) E' possibile scrivere una funzione come somma di funzioni armoniche; è possibile scrivere una funzione come combinazione di funzioni armoniche. Aggiungere qualcosa a riguardo nel capitolo sulle funzioni trigonometriche e sui numeri complessi - magari nel discreto (DFT, per usare sommatorie ed evitare integrali)

Nella sezione successiva viene analizzata la risposta dei sistemi di primo e di secondo ordine a **forzanti armoniche**. 

(ode:lti:frequency-response)=
## Risposta in frequenza di sistemi del primo e del secondo ordine

### Sistemi del primo ordine

La risposta forzata del sistema asintoticamente stabile del primo ordine (con $c > 0$ e $k > 0$)

$$c \dot{x}(t) + k x(t) = F \cos(\Omega t) \ ,$$

coincide con la sua soluzione particolare,

$$x_p(t) = A \cos(\Omega t) + B \sin(\Omega t) \ .$$

I coefficienti $A$, $B$ vengono calcolati, valutando la derivata dell'espressione generica della soluzione e

$$\dot{x}_p(t) = -\Omega A \sin(\Omega t) + \Omega B \cos(\Omega t) \ ,$$

inserendola dell'equazione differenziale insieme all'espressione della soluzione,

$$\begin{aligned}
 F \cos (\Omega t)
 & = c \dot{x}_p(t) + k x_p(t) = \\
 & = c \Omega \left( - A \sin(\Omega t) + B \cos(\Omega t)  \right) + k \left( A \cos(\Omega t) + B \sin(\Omega t) \right) = \\
 & = \cos(\Omega t) \left[ c \Omega B + k A \right] + \sin(\Omega t) \left[ - c \Omega A + k B \right]
\end{aligned}$$

Affinché l'espressione proposta sia una soluzione dell'equazione differenziale, l'ultima relazione deve annullarsi per ogni valore della variabile indipendente $t$, e quindi devono annullarsi indipendendemente i coefficienti delle funzioni $\cos(\Omega t)$ e $\sin (\Omega t)$. Si ottengono quindi un sistema algebrico di due equazioni nelle due incognite $A$, $B$

$$
\begin{aligned}
  k A + c \Omega B & = F \\
 - c \Omega A + k B & = 0 \\
\end{aligned}
\qquad \rightarrow \qquad
\begin{aligned}
  A = \frac{k}{k^2 + (c \Omega)^2} \, F \\
  B = \frac{c\Omega}{k^2 + (c \Omega)^2} \, F  \\
\end{aligned}
$$

La soluzione è quindi una [combinazione lineare delle funzioni $\cos$ e $\sin$ con lo stesso argomento](math-hs:trigonometry:linear-combination),

$$x_p(t) = \left[  \frac{k}{k^2 + (c \Omega)^2} \cos(\Omega t) + \frac{c \Omega}{k^2 + (c \Omega)^2} \sin(\Omega t) \right] F \ ,$$

che può essere quindi riscritta come

$$x_p(t) = X \cos (\Omega t - \varphi) \ ,$$

con l'ampiezza e il ritardo di fase

$$\begin{aligned}
  X(\Omega) & = \frac{1}{\sqrt{k^2 + (c\Omega)^2}} \\
  \varphi(\Omega) & \ \text{ s.t.} \ \cos \varphi = \frac{k}{\sqrt{k^2 + (c\Omega)^2}} \quad , \quad \sin \varphi = \frac{c\Omega}{\sqrt{k^2 + (c\Omega)^2}}
\end{aligned}$$

**Discussione.** **todo**
- andamenti asintotici per $\Omega \rightarrow 0, \ +\infty$
- banda passante
- coefficienti non-dimensionali...


### Sistemi del secondo ordine

La risposta forzata del sistema asintoticamente stabile del secondo ordine (con $m > 0$, $c > 0$ e $k > 0$)

$$m \ddot{x}(t) + c \dot{x}(t) + k x(t) = F \cos(\Omega t) \ ,$$

coincide con la sua soluzione particolare,

$$x_p(t) = A \cos(\Omega t) + B \sin(\Omega t) \ .$$

I coefficienti $A$, $B$ vengono calcolati, valutando le derivate prima e seconda dell'espressione generica della soluzione e

$$\begin{aligned}
   \dot{x}_p(t) & = -\Omega A \sin(\Omega t) + \Omega B \cos(\Omega t) \\
  \ddot{x}_p(t) & = -\Omega^2 A \cos(\Omega t) - \Omega^2 B \sin(\Omega t) \\
\end{aligned}$$

inserendola dell'equazione differenziale insieme all'espressione della soluzione,

$$\begin{aligned}
 F \cos (\Omega t)
 & = m \ddot{x}(t) + c \dot{x}_p(t) + k x_p(t) = \\
 & = m \Omega^2 \left( - A \cos(\Omega t) - B \sin(\Omega t)  \right) + c \Omega \left( - A \sin(\Omega t) + B \cos(\Omega t)  \right) + k \left( A \cos(\Omega t) + B \sin(\Omega t) \right) = \\
 & = \cos(\Omega t) \left[ - m \Omega^2 + A c \Omega B + k A \right] + \sin(\Omega t) \left[ - m \Omega^2 B - c \Omega A + k B \right]
\end{aligned}$$

Affinché l'espressione proposta sia una soluzione dell'equazione differenziale, l'ultima relazione deve annullarsi per ogni valore della variabile indipendente $t$, e quindi devono annullarsi indipendendemente i coefficienti delle funzioni $\cos(\Omega t)$ e $\sin (\Omega t)$. Si ottengono quindi un sistema algebrico di due equazioni nelle due incognite $A$, $B$ identico a quello risolto in precedenza per i sistemi del primo ordine (basta chiamare $\tilde{k} = k - m \Omega^2$),

$$
\begin{cases}
  (k - m \Omega^2) A + c \Omega B & = F \\
 - c \Omega A + (k - m \Omega^2) B & = 0 \\
\end{cases}
\qquad \rightarrow \qquad
\begin{aligned}
  A = \frac{k - m \Omega^2}{(k-m\Omega)^2 + (c \Omega)^2} \, F \\
  B = \frac{c\Omega}{(k-m\Omega^2)^2 + (c \Omega)^2} \, F  \\
\end{aligned}
$$

La soluzione è quindi una [combinazione lineare delle funzioni $\cos$ e $\sin$ con lo stesso argomento](math-hs:trigonometry:linear-combination),

$$x_p(t) = \left[  \frac{k-m\Omega^2}{(k-m\Omega^2)^2 + (c \Omega)^2} \cos(\Omega t) + \frac{c \Omega}{(k-m\Omega^2)^2 + (c \Omega)^2} \sin(\Omega t) \right] F \ ,$$

che può essere quindi riscritta come

$$x_p(t) = X \cos (\Omega t - \varphi) \ ,$$

con l'ampiezza e il ritardo di fase

$$\begin{aligned}
  X(\Omega) & = \frac{1}{\sqrt{(k-m\Omega^2)^2 + (c\Omega)^2}} \\
  \varphi(\Omega) & \ \text{ s.t.} \ \cos \varphi = \frac{k-m\Omega^2}{\sqrt{(k-m\Omega^2)^2 + (c\Omega)^2}} \quad , \quad \sin \varphi = \frac{c\Omega}{\sqrt{(k-m\Omega^2)^2 + (c\Omega)^2}}
\end{aligned}$$

**Discussione.** **todo**
- andamenti asintotici per $\Omega \rightarrow 0, \ +\infty$
- banda passante
- risonanza e ruolo dello smorzamento
- coefficienti non-dimensionali: frequenza naturale e coefficiente di smorzamento




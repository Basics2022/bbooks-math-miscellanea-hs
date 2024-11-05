(geometry:analytic:2d:conics-polar)=
# Equazioni in coordinate polari

Le coniche possono essere anche caratterizzate dal valore dell'eccentricità,

$$e = \dfrac{\text{dist(punto, fuoco)}}{\text{dist(punto, direttrice)}} = \dfrac{\text{dist}(P,F)}{\text{dst}(P,d)} \ .$$

Questa definizione permette di ricavare facilmente l'equazione delle coniche usando un sistema di coordinate polari, centrato nel fuoco $F$, e con la direzione di riferimento per la misura dell'angolo $\theta$ che punta verso la direttrice. Con questo sistema di coordinate polari, 

$$\begin{aligned}
  \text{dist}(P,F) & = r \\
  \text{dist}(P,d) & = | D - r \cos \theta |
\end{aligned}$$

l'equazione generale delle coniche diventa

$$e \big| D - r \cos \theta \big| = r \ .$$

Questa equazione descrive tutte le coniche con eccentricità non nulla, cioè tutte le coniche tranne la circonferenza. La circonferenza si ottiene come limite dell' eccentricità $e \rightarrow 0$ e distanza $D \rightarrow \infty$, in modo tale da avere $e D = R$ finito.



**Circonferenza, $e = 0$.** L'equazione generale per la circonferenza degenera in 

$$r = R \ ,$$

per $e \rightarrow 0$, $D \rightarrow +\infty$ in modo tale che $e D := R$ finito.

**Ellisse, $e \in (0,1)$.**

**Parabola, $e = 1$.** Per $e = 1$ e $D - r \cos \theta > 0$, l'equazione della parabola diventa

$$r(1 + \cos \theta) = D \ .$$

Con la trasformazione di coordinate

$$\begin{cases}
  x = r \sin \theta \\
  y = \frac{D}{2} - r \cos \theta \\
\end{cases}$$

$$x^2 = r^2 \sin^2 \theta = r^2 - r^2 \cos^2 \theta = $$


e riscrivendo

$$r - \frac{D}{2} = \frac{D}{2} - r \cos \theta$$

**Iperbole, $e > 1$.**

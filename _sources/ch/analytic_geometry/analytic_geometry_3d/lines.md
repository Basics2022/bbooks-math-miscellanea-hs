(geometry:analytic:3d:lines)=
# Rette nello spazio

## Equazione della retta
**Forma parametrica**

$$r: P = Q + \lambda \, \vec{v} \ .$$

**...** Intersezione tra due piani

## Distanza punto-retta
Dato un punto $A$ e una retta $r$, di cui sono noti un punto $Q$ e il vettore $\vec{v}$, la distanza di $A$ da $r$ può essere calcolata come il valore assoluto della proiezione del vettore $A-Q$ in direzione ortogonale alla direzione della retta, individuata da $\vec{v}$,

$$\begin{aligned}
\text{dist}(A,r) & = \left| (A-Q) - \hat{v} \ \hat{v} \cdot (A-Q) \right| = \\ 
                 & = \left| \hat{v} \times (A-Q) \right| 
\end{aligned}$$

avendo usato il vettore unitario $\hat{v} = \frac{\vec{v}}{|\vec{v}|}$ per la proiezione.



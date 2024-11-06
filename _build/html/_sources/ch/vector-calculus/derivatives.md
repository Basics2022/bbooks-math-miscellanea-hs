(vector-calculus:derivatives)=
# Operatori differenziali in spazi euclidei

Usando un sistema di coordinate cartesiane, un punto $P$ nello spazio può essere identificato dal vettore euclideo tra l'origine $O$ del sistema delle coordinate e il punto $P$,

$$P - O = \vec{r}_P = x \, \hat{x} + y \, \hat{y} + z \, \hat{z}  = P(x,y,z) \ .$$

## Derivata direzionale

$$
f(P) = f\left(P(x,y,z)\right) = F(x,y,z)
$$

$$
f(P + \alpha \vec{v}) 
= f\left( (x+\alpha v_x)\hat{x} + (y+\alpha v_y) \hat{y} + (z + \alpha v_z)\hat{z} \right) 
= F(x+\alpha v_x, y+\alpha v_y, z + \alpha v_z)
$$

$$\begin{aligned}
  f(P + \alpha \vec{v}) - f(P)
  & = F(x+\alpha v_x, y+\alpha v_y, z + \alpha v_z) - F(x, y, z) = \\
  & = \alpha v_x \, \partial_x F(x,y,z) +  \alpha v_y \, \partial_y F(x,y,z) + \alpha v_z \, \partial_z F(x,y,z) + o(|\alpha|) = \\
  & = \alpha v_x \, \partial_x f(P) +  \alpha v_y \, \partial_y f(P) + \alpha v_z \, \partial_z f(P) + o(|\alpha|) = \\
  & = \alpha \vec{v} \cdot \nabla f(P) + o(|\alpha|) \ ,
\end{aligned}$$

avendo introdotto il vettore formale **nabla**, $\nabla $, per definire l'operatore **gradiente** usando il sistema di coordinate carteisane,

$$\nabla f(P) = \hat{x} \, \partial_x f(P) + \hat{y} \, \partial_y f(P) + \hat{z} \, \partial_z f(P) \ . $$

## Gradiente

**Definizione.** **todo**

**Proprietà.** Il gradiente di un campo scalare indica la direzione **locale** di massima crescita del campo.
```{dropdown} Dimostrazione.
La derivata direzionale della funzione $f$ nel punto $P$ in direzione $\hat{t}$ è definita come il prodotto scalare tra il versore $\hat{t}$ e il gradiente della funzione calcolato nel punto $P$

$$\hat{t} \cdot \nabla f(P) \ .$$

Ricordando la definizione di [prodotto interno in uno spazio euclideo](math-hs:algebra:vector:euclidean-space:inner-product), è possibile dimostrare che tra tutti i possibili vettori $\hat{t}$ l'incremento della funzione è massimo in direzione del gradiente,

$$\max_{\hat{t}} \hat{t} \cdot \nabla f(P) = \max_{\hat{t}} \underbrace{|\ \hat{t} \ |}_{=1} |\nabla f(P)| \cos \theta_{\hat{t}} = \max_{\theta_{\hat{t}}} |\nabla f(P)| \cos \theta_{\hat{t}} = |\nabla f(P)| \ ,$$

quando l'angolo tra il versore $\hat{t}$ e il gradiente $\nabla f(P)$ è nullo, $\theta_{\hat{t}} = 0$.

```

## Divergenza
La divergenza di un campo vettoriale $\vec{f}(P)$ nello spazio 3-dimensionale può essere definita come la densità di volume del flusso. Usando le coordinate cartesiane si calcola il flusso del campo vettoriale attraverso la superficie di un cubetto elementare centrato nel punto $P$, **todo**

$$\begin{aligned}
  \Phi_{\partial \Delta V(P)}(\vec{f}) 
  & = \Delta y \Delta z \hat{x} \cdot \vec{f}\left(P+\hat{x} \frac{\Delta x}{2} \right)
    - \Delta y \Delta z \hat{x} \cdot \vec{f}\left(P-\hat{x} \frac{\Delta x}{2} \right) + \dots = \\
  & = \Delta y \Delta z \left[ f_x \, \left(P+\hat{x} \frac{\Delta x}{2} \right)
                               f_x \, \left(P-\hat{x} \frac{\Delta x}{2} \right) \right] + \dots = \\
  & = \Delta y \Delta z \left[ f_x(P) + \frac{\Delta x}{2} \,  \partial_x \, f(P) 
                             - f_x(P) + \frac{\Delta x}{2} \,  \partial_x \, f(P) + o(\Delta x) \right] + \dots  = \\
  & = \Delta x \Delta y \Delta z \,  \partial_x \, f_x(P) + o(\Delta V) + \dots = \\ \\
  & = \Delta V \left[  \partial_x \, f_x(P) +  \partial_y \, f_y(P) + \partial_z \, f_z(P) \right] + o(\Delta V) = \\ \\
  & = \Delta V \nabla \cdot \vec{f}(P) + o(\Delta V) = \\ \\
\end{aligned}$$

## Rotore


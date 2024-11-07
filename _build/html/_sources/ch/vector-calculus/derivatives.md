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
La divergenza di un campo vettoriale $\vec{f}(P)$ nello spazio 3-dimensionale è un campo scalare che può essere interpretato come la densità volumetrica del flusso del campo vettoriale. Usando un sistema di coordinate cartesiane, la divergenza di un campo vettoriale può essere scritta formalmente come il prodotto interno tra il vettore formale nabla e il campo vettoriale,

$$\nabla \cdot \vec{f} = \partial_x f_x + \partial_y f_y + \partial_z f_z$$

```{dropdown} Divergenza come densità volumetrica del flusso. Dimostrazione con un cubetto elementare
Usando le coordinate cartesiane si calcola il flusso del campo vettoriale attraverso la superficie di un cubetto elementare centrato nel punto $P$, **todo**

$$\begin{aligned}
  \Phi_{\partial \Delta V(P)}\left(\vec{f}\right) 
  & = \Delta y \Delta z \hat{x} \cdot \vec{f}\left(P+\hat{x} \frac{\Delta x}{2} \right)
    - \Delta y \Delta z \hat{x} \cdot \vec{f}\left(P-\hat{x} \frac{\Delta x}{2} \right) + \dots = \\
  & = \Delta y \Delta z \left[ f_x \, \left(P+\hat{x} \frac{\Delta x}{2} \right)
                               f_x \, \left(P-\hat{x} \frac{\Delta x}{2} \right) \right] + \dots = \\
  & = \Delta y \Delta z \left[ f_x(P) + \frac{\Delta x}{2} \,  \partial_x \, f(P) 
                             - f_x(P) + \frac{\Delta x}{2} \,  \partial_x \, f(P) + o(\Delta x) \right] + \dots  = \\
  & = \Delta x \Delta y \Delta z \,  \partial_x \, f_x(P) + o(\Delta V) + \dots = \\ \\
  & = \Delta V \, \left[  \partial_x \, f_x(P) +  \partial_y \, f_y(P) + \partial_z \, f_z(P) \right] + o(\Delta V) = \\ \\
  & = \Delta V \, \nabla \cdot \vec{f}(P) + o(\Delta V) \ .
\end{aligned}$$
```
```{dropdown} Divergenza come densità volumetrica del flusso. Dimostrazione con un tetraedro elementare
Usando le coordinate cartesiane si calcola il flusso del campo vettoriale attraverso la superficie di un cubetto elementare centrato nel punto $P$, **todo**

$$\begin{aligned}
  \Phi_{\partial \Delta V(P)}\left(\vec{f}\right) 
  & =       - \Delta S_x  \hat{x} \cdot \vec{f}\left( P + \hat{y} \frac{\Delta y}{3} + \hat{z} \frac{\Delta z}{3} \right)   
            - \Delta S_y  \hat{y} \cdot \vec{f}\left( P + \hat{z} \frac{\Delta z}{3} + \hat{x} \frac{\Delta x}{3} \right) \\
  & \quad \ - \Delta S_z  \hat{z} \cdot \vec{f}\left( P + \hat{x} \frac{\Delta x}{3} + \hat{y} \frac{\Delta y}{3} \right)   
            + \Delta S    \hat{n} \cdot \vec{f}\left( P + \hat{x} \frac{\Delta x}{3} + \hat{y} \frac{\Delta y}{3} + \hat{z} \frac{\Delta z}{3} \right) + o(\Delta V) = \\
  & =       - \Delta S_x  \left( f_x + \frac{\Delta y}{3} \partial_y f_x + \frac{\Delta_z}{3} \partial_z f_x \right)     
            - \Delta S_y  \left( f_y + \frac{\Delta z}{3} \partial_z f_y + \frac{\Delta_x}{3} \partial_x f_y \right) + \\
  & \quad \ - \Delta S_z  \left( f_z + \frac{\Delta x}{3} \partial_x f_z + \frac{\Delta_y}{3} \partial_y f_z \right)      
            + \Delta S  \sum_{k \in \{x,y,z\} }   \left[ n_k \, \left( f_k(P) + \frac{\Delta x}{3} \partial_x f_k + n_y \, \frac{\Delta y}{3} \partial_y f_k + n_z \, \frac{\Delta z}{3} \partial_z f_k \right) \right] + \dots + o(\Delta V) = \\ 
  & =       - \Delta S_x  \left( f_x + \frac{\Delta y}{3} \partial_y f_x + \frac{\Delta_z}{3} \partial_z f_x \right)     
            - \Delta S_y  \left( f_y + \frac{\Delta z}{3} \partial_z f_y + \frac{\Delta_x}{3} \partial_x f_y \right) + \\
  & \quad \ - \Delta S_z  \left( f_z + \frac{\Delta x}{3} \partial_x f_z + \frac{\Delta_y}{3} \partial_y f_z \right)      
            + \sum_{k \in \{x,y,z\} } \Delta S_k  \, \left( f_k(P) + \frac{\Delta x}{3} \partial_x f_k + n_y \, \frac{\Delta y}{3} \partial_y f_k + n_z \, \frac{\Delta_z}{3} \partial_z f_k \right) + \dots + o(\Delta V) = \\ 
  & = \frac{1}{3} \Delta S_x \, \Delta x \partial_x f_x + \frac{1}{3} \Delta S_y \Delta y \partial_y f_y + \frac{1}{3} \Delta S_z \Delta z \partial_z f_z = \\
  & = \Delta V \left[ \partial_x \, f_x(P) + \partial_y \, f_y(P) + \partial_z \, f_z(P) \right] + o(\Delta V)\ .
  & = \Delta V \, \nabla \cdot \vec{f}(P) + o(\Delta V) \ .
\end{aligned}$$
```

## Rotore
Il rotore di un campo vettoriale $\vec{f}(P)$ nello spazio 3-dimensionale è un campo vettoriale che può essere interpretato come la densità di superficie di circuitazione. Usando un sistema di coordinate cartesiane, il rotore di un campo vettoriale può essere scritto formalmente come il prodotto vettoriale tra il vettore formale nabla e il campo vettoriale,

$$\begin{aligned}
  \nabla \times \vec{f} & = \hat{x} \left( \partial_y f_z - \partial_z f_y \right) + \\ 
                        & + \hat{y} \left( \partial_z f_x - \partial_x f_z \right) + \\
                        & + \hat{z} \left( \partial_x f_y - \partial_y f_x \right) 
    = \left| \begin{matrix} \hat{x} & \hat{y} & \hat{z} \\ \partial_x & \partial_y & \partial_z \\ f_x & f_y & f_z \end{matrix} \right| \ .
\end{aligned}$$

```{dropdown} Rotore come densità di circuitazione. Dimostrazione
Usando le coordinate cartesiane si calcola la circuitazione del campo vettoriale $\vec{f}$ sui lati della faccia maggiore di un tetraedro con spigoli coincidenti con gli assi e di lunghezza $\Delta x$, $\Delta y$, $\Delta z$,

$$\begin{aligned}
  \Gamma_{\partial \Delta V(P)}\left(\vec{f}\right) 
  & = \vec{f}\left( P + \frac{\Delta x}{2} \hat{x} + \frac{\Delta y}{2} \hat{y} \right) \cdot \left( - \hat{x} \Delta x + \hat{y} \Delta y \right) + \\
  & + \vec{f}\left( P + \frac{\Delta y}{2} \hat{y} + \frac{\Delta z}{2} \hat{z} \right) \cdot \left( - \hat{y} \Delta y + \hat{z} \Delta z \right) + \\
  & + \vec{f}\left( P + \frac{\Delta z}{2} \hat{z} + \frac{\Delta x}{2} \hat{x} \right) \cdot \left( - \hat{z} \Delta z + \hat{x} \Delta x \right) = \\
  & =       - \Delta x \left( f_x + \frac{\Delta x}{2} \partial_x f_x + \frac{\Delta y}{2} \partial_y f_x \right)
            + \Delta y \left( f_y + \frac{\Delta x}{2} \partial_x f_y + \frac{\Delta y}{2} \partial_y f_y \right) \\
  & \ \quad - \Delta y \left( f_y + \frac{\Delta y}{2} \partial_y f_y + \frac{\Delta z}{2} \partial_z f_y \right)
            + \Delta z \left( f_z + \frac{\Delta y}{2} \partial_y f_z + \frac{\Delta z}{2} \partial_z f_z \right) \\
  & \ \quad - \Delta z \left( f_z + \frac{\Delta z}{2} \partial_z f_z + \frac{\Delta x}{2} \partial_x f_z \right)
            + \Delta x \left( f_x + \frac{\Delta z}{2} \partial_z f_x + \frac{\Delta x}{2} \partial_x f_x \right) = \\
  & = \frac{1}{2} \Delta x \Delta y \left( \partial_x f_y - \partial_y f_x \right)
    + \frac{1}{2} \Delta y \Delta z \left( \partial_y f_z - \partial_z f_y \right)
    + \frac{1}{2} \Delta z \Delta x \left( \partial_z f_x - \partial_x f_z \right) = \\
  & = \Delta S_z \left( \nabla \times \vec{f} \right)_z
    + \Delta S_x \left( \nabla \times \vec{f} \right)_x
    + \Delta S_y \left( \nabla \times \vec{f} \right)_y = \\
  & = \Delta S \left(
             n_z \left( \nabla \times \vec{f} \right)_z
             n_x \left( \nabla \times \vec{f} \right)_x
             n_y \left( \nabla \times \vec{f} \right)_y 
  \right) = \\
  & = \Delta S \, \hat{n} \cdot \nabla \times \vec{f}(P) + o(\Delta S) \ .
\end{aligned}$$
```

(geometry:analytic:2d:points)=
# Sistemi di coordinate per lo spazio euclideo $E^3$

## Coordinate cartesiane
Le coordinate cartesiane $(x,y,z)$ di un punto $P$ dello spazio euclideo $E^3$ permettono di definire il vettore euclideo tra l'origine $O \equiv (0,0,0)$ e il punto $P$

$$(P-O) = x \hat{\mathbf{x}} + y \hat{\mathbf{y}} + z \hat{\mathbf{z}} \ ,$$

usando i vettori della base cartesiana $\{\hat{\mathbf{x}}, \hat{\mathbf{y}}, \hat{\mathbf{z}} \}$

### Distanza punto-punto
Usando le coordinate cartesiane, la distanza tra due punti $P \equiv(x_P, y_P, z_P)$, $Q \equiv (x_Q, y_Q, z_Q)$ si può calcolare usando il teorema di Pitagora come

$$|P-Q|^2 = (x_P - x_Q)^2 + (y_P - y_Q)^2 + (z_P - z_Q)^2 \ .$$

## Coordinate cilindriche
Dato un sistema di coordinate cartesiane, si può definire un sistema di coordinate cilindriche $$(R, \theta, z)$$ tramite la legge di trasformazione delle coordinate

$$\begin{cases}
x = R \cos \theta \\
y = R \sin \theta \\
z = z
\end{cases}$$

## Coordinate sferiche
Dato un sistema di coordinate cartesiane, si può definire un sistema di coordinate sferiche $$(r, \theta, \phi)$$ tramite la legge di trasformazione delle coordinate

$$\begin{cases}
x = r \sin \phi + \cos \theta \\
y = r \sin \phi + \sin \theta \\
z = r \cos \phi
\end{cases}$$



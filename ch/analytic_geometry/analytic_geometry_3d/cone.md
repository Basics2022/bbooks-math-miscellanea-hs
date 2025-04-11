---
jupytext:
    formats: md:myst
    text_representation:
        extension: .md
        format_name: myst
kernelspec:
    display_name: Python 3 (ipykernel)
    language: python
    name: python3
---

(geometry:analytic:3d:cone)=
# Cono circolare retto e coniche

(geometry:analytic:3d:cone:eqn)=
## Equazione del cono
Equazioni del (doppio) cono circolare retto, usando un sistema di coordinate cartesiane con origine nel vertice e asse coincidente con l'asse $z$,

$$C: \ x^2 + y^2 = d^2 z^2 \ .$$

(geometry:analytic:3d:cone:conics)=
## Coniche: intersezione tra cono e piano

Si prende un punto $P$ nel piano $y,z$, $P-O = y_P \hat{y} + z_P \hat{z}$, e il piano $\pi$ passante per il punto $P$ con versore normale $\hat{n} = \sin \theta \, \hat{y} - \cos \theta \, \hat{z}$. Si introduce quindi un altro sistema di coordinate cartesiane $X,Y,Z$ con origine nel punto $P$, con asse $Z$ allineato con il versore normale $\hat{n}$ e l'asse $X$ allineato con l'asse $x$, così che le trasformazioni dei versori dei due sistemi di riferimento sono

$$
\begin{aligned}
 \hat{X} & = \hat{x} \\
 \hat{Y} & = \hat{y} \cos \theta + \hat{z} \sin \theta \\
 \hat{Z} & =-\hat{y} \sin \theta + \hat{z} \cos \theta \\
\end{aligned}
\qquad , \qquad
\begin{aligned}
 \hat{x} & = \hat{X} \\
 \hat{y} & = \hat{Y} \cos \theta - \hat{Z} \sin \theta \\
 \hat{z} & = \hat{Y} \sin \theta + \hat{Z} \cos \theta \\
\end{aligned}
$$

e tra le coordinate

$$
\begin{aligned}
 X & = \ \ \ x \\
 Y & = \ \ \ (y-y_P) \cos \theta + \hat{z} (z-zP) \theta \\
 Z & =     - (y-y_P) \sin \theta + \hat{z} (z-zP) \theta \\
\end{aligned}
\qquad , \qquad
\begin{aligned}
 x       & = X \\
 y - y_P & = Y \cos \theta - Z \sin \theta \\
 z - z_P & = Y \sin \theta + Z \cos \theta \\
\end{aligned}
$$

L'equazione del piano  $\pi$ nel sistema di coordinate $X,Y,Z$ è semplicemente $\pi: \ Z = 0$. I punti di interesezione tra il cono e il piano si trovano mettendo a sistema le equazioni delle due superfici,

$$\begin{cases}
  \pi: & Z = 0 \\
    C: & \ X^2 + (y_p + Y \cos \theta - Z \sin \theta )^2 = d^2 ( z_P + Y \sin \theta + Z \cos \theta )^2
\end{cases}$$

e quindi l'equazione dell'intersezione $\gamma := \pi \cap C$ è

$$\begin{aligned}
  \gamma: & \ X^2 + (y_P + Y \cos \theta  )^2 = d^2 ( z_P + Y \sin \theta  )^2 \\
          & \ X^2 + Y^2 ( \cos^2 \theta - d^2 \sin^2 \theta ) + Y ( 2 y_P \cos \theta - 2 d^2 z_P \sin \theta ) + y_P^2 - d^2 z_P^2 = 0 \\
\end{aligned}$$

o ancora, con il completamento del quadrato, nell'ipotesi che $\cos^2 \theta - d^2 \sin^2 \theta \ne 0$ (caso della parabola trattato in seguito)

$$\begin{aligned}
 \ X^2 + Y^2 ( \cos^2 \theta - d^2 \sin^2 \theta ) + 2 Y ( y_P \cos \theta - d^2 z_P \sin \theta ) + \frac{( y_P \cos \theta - d^2 z_P \sin \theta )^2}{ \cos^2 \theta - d^2 \sin^2 \theta } & = \frac{( y_P \cos \theta - d^2 z_P \sin \theta )^2}{ \cos^2 \theta - d^2 \sin^2 \theta }- y_P^2 + d^2 z_P^2  \\
 \ X^2 + ( \cos^2 \theta - d^2 \sin^2 \theta ) \left[ Y + \frac{ y_P \cos \theta - d^2 z_P \sin \theta}{ \cos^2 \theta - d^2 \sin^2 \theta } \right]^2 & = \frac{ y_P^2 \cos^2 \theta - 2 d^2 z_P y_P \cos \theta \sin \theta + d^4 z_P^2 \sin^2 \theta - y_P^2 \cos^2 \theta + y^2 d^2 \sin^2 \theta + d^2 z_P^2 \cos^2 \theta - d^4 z_P^2 \sin^2 \theta}{ \cos^2 \theta - d^2 \sin^2 \theta } \\
 \ X^2 + ( \cos^2 \theta - d^2 \sin^2 \theta ) \left[ Y + \frac{ y_P \cos \theta - d^2 z_P \sin \theta}{ \cos^2 \theta - d^2 \sin^2 \theta } \right]^2 & = \frac{ - 2 d^2 z_P y_P \cos \theta \sin \theta  + y_P^2 d^2 \sin^2 \theta + d^2 z_P^2 \cos^2 \theta }{ \cos^2 \theta - d^2 \sin^2 \theta }  \\
 \ X^2 + ( \cos^2 \theta - d^2 \sin^2 \theta ) \left[ Y + \frac{ y_P \cos \theta - d^2 z_P \sin \theta}{ \cos^2 \theta - d^2 \sin^2 \theta } \right]^2 & = d^2 \frac{( y_P \sin \theta - z_P \cos \theta )^2 }{ \cos^2 \theta - d^2 \sin^2 \theta }  \\
\end{aligned}$$


Questa è l'equazione dell'intersezione generica tra un piano e un doppio cono. Si analizzano ora alcuni casi particolari, in funzione dell'angolo $\theta$ e della posizione del punto $P$.

- Se $\theta = 0$, il piano è normale all'asse del doppio cono, si ottiene l'equazione

  $$X^2 + (Y + y_P)^2 = d^2 z_P^2 \ ,$$

  che rappresenta una circonferenza centrata nel punto di coordinate $(X, Y) = (0, -y_P)$, che corrisponde al punto di interesezione dell'asse del cono con il piano $\pi$. Se $z_P = 0$ si trova il caso degenere di circonferenza con raggio nullo, o un punto solo in corrispondenza del vertice del doppio cono

- Se $\theta = \theta_p$ tale che $\tan \theta_p = \mp \frac{1}{d}$, allora il coefficiente di $Y^2$ è nullo e l'equazione

  $$X^2 + 2 \left(y_P \cos \theta_p - z_P \frac{\cos^2 \theta_p}{\sin \theta_p} \right) Y + y_P^2 - \frac{\cos^2 \theta_p}{\sin^2 \theta_p} z_P^2 = 0 \ ,$$

  rappresenta una parabola con $Y$ come asse di simmetria.

<!--
Se si annulla il coefficiente di $Y$,

$$z_P = y_P \tan \theta_p \ ,$$

si ottiene il caso degenere di due rette incidenti nel vertice

$$X^2 = \frac{}{}$$
-->

- Per valori di $\theta$ diversi, l'equazione dell'intersezione diventa

  $$ 
   \frac{\cos^2 \theta - d^2 \sin^2 \theta }{d^2 ( y_P \sin \theta - z_P \cos \theta )^2 } X^2 + \frac{( \cos^2 \theta - d^2 \sin^2 \theta )^2}{d^2 ( y_P \sin \theta - z_P \cos \theta )^2} \left[ Y + \frac{ y_P \cos \theta - d^2 z_P \sin \theta}{ \cos^2 \theta - d^2 \sin^2 \theta } \right]^2 = 1  \ ,
  $$

  cioè l'equazione di:
  - un'ellisse, se $\cos^2 \theta - d^2 \sin^2\theta > 0$, cioè se $\theta \in (0, \theta_p)$, con semi-assi

     $$\begin{aligned}
      a & = \frac{| d ( y_P \sin \theta - z_P \cos \theta )| }{\sqrt{\cos^2 \theta - d^2 \sin^2 \theta} } \\
      b & = \frac{| d ( y_P \sin \theta - z_P \cos \theta )| }{\cos^2 \theta - d^2 \sin^2 \theta} \\
    \end{aligned}$$

    e centro $X = 0$, $Y = - \frac{ y_P \cos \theta - d^2 z_P \sin \theta}{ \cos^2 \theta - d^2 \sin^2 \theta }$

  - un'iperbole, se $\cos^2 \theta - d^2 \sin^2 \theta <0$, cioè se $\theta > \theta_p$, con semi-asse maggiore $b$ allineato lungo $Y$, e semi-asse minore $a$ lungo $X$,

     $$\begin{aligned}
        a & = \frac{| d ( y_P \sin \theta - z_P \cos \theta )| }{\sqrt{ - \cos^2 \theta + d^2 \sin^2 \theta} } \\
        b & = \frac{| d ( y_P \sin \theta - z_P \cos \theta )| }{- \cos^2 \theta + d^2 \sin^2 \theta} \\
     \end{aligned}$$
  
    




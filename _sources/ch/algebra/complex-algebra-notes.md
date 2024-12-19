(math-hs:algebra:complex:notes)=
# Note e dimostrazioni

<!--
(math-hs:algebra:complex:notes:demoivre-euler)=
## Formula di de Moivre, esponenziale complesso e formula di Eulero
-->

(math-hs:algebra:complex:notes:demoivre)=
## Formula di de Moivre
Qui si dimostra la formula di de Moivre {eq}`complex:demoivre`.

$$(\cos x + i \sin x)^n = \cos(nx) + i \sin(nx) \ , \quad n \in \mathbb{Z}$$

```{dropdown} Dimostrazione per induzione
Per $n \in \mathbb{N}$, si procede per induzione **todo** *aggiungere i capitoli sulla logica? E un riferimento ad essi?* Per $n = 1$ la formula di de Moivre si riduce a un'identità. Supponiamo quindi che sia valida per un intero $n > 1$ e verifichiamo se questo implica che sia valida anche per $n+1$

$$\begin{aligned}
  (\cos x + i \sin x)^{n+1} & = (\cos x + i \sin x)^n \, (\cos x + i \sin x) = \\
                            & = \left(\cos (nx)+ i \sin (nx) \right) \, (\cos x + i \sin x) = \\
                            & = \cos(nx) \cos x - \sin(nx) \sin x + i \left( \cos(nx) \sin x + \sin(nx) \cos x \right) = \\
                            & = \cos( (n+1)x ) + i \sin( (n+1) x ) \ .
\end{aligned}$$

Per $n = 0$, la formula di de Moivre si riduce all'identità $1 \equiv 1$.

Per $m := -n \in \mathbb{N}$, la formula di de Moivre può essere verificata usando la formula di de Moivre per $m > 0$ e razionalizzando la frazione,

$$\begin{aligned}
  \left( \cos x + i \sin x \right)^{n} & = \frac{1}{\left( \cos x + i \sin x \right)^m} = \\
   & = \frac{1}{\left( \cos (m x) + i \sin (m x) \right)} = \\
   & = \frac{\cos( m x) - i \sin (m x)}{\underbrace{\cos^2(mx) + \sin^2(mx)}_{=1}} = \cos(mx) - i \sin(mx) = \cos(nx) + i \sin(nx) \ .
\end{aligned}$$

```

(math-hs:algebra:complex:notes:complex-exp)=
## Esponenziale complesso
Estendendo la definizione di funzione esponenziale $e^x$ ai numeri complessi, si può scrivere

$$e^z = \sum_{n = 0}^{+\infty} \frac{z^n}{n!} = \lim_{n \rightarrow +\infty} \left( 1 + \frac{z}{n} \right)^n$$ (complex:complex-exp:notes)

<!--
```{dropdown} Dimostrazione dell'equivalenza delle due definizioni
```
-->

(math-hs:algebra:complex:notes:euler)=
## Formula di Eulero
Per esponenti reali, vale

$$e^{i x} = \cos x + i \sin x$$

```{dropdown} Dimostrazione usando la definizione come limite della successione
L'esponenziale complesso può essere scritto come limite della successione con termini,

$$a_n = \left( 1 + \frac{z}{n} \right)^n = \left( 1 + \frac{x}{n} + i \frac{y}{n} \right)^n$$

per $n \rightarrow +\infty$. Si scrive il termine $a_n$ in forma polare, $a_n = r_n e^{i \theta_n}$ con le espressioni di $r_n$, $\theta_n$

$$r_n = \sqrt{\left(1+ \frac{x}{n}\right)^2 + \left(\frac{y}{n}\right)^2}$$

$$n r_n = \sqrt{( n + x )^2 + y^2}$$

$$\tan \theta_n = \frac{\frac{y}{n}}{1 + \frac{x}{n}} = \frac{y}{x + n}$$

<!--
Il modulo di $a_n$ tende a $e^x$

$$r_n = \sqrt{\left(1+ \frac{x}{n}\right)^2 + \left(\frac{y}{n}\right)^2}$$

$$n r_n = \sqrt{( n + x )^2 + y^2}$$

l'argomento tende a $\theta$ 

$$\tan \theta_n = \frac{\frac{y}{n}}{1 + \frac{x}{n}} = \frac{y}{x + n}$$

$$\begin{aligned}
\sin \theta_n & = \frac{y}{n \, r_n} \\
\cos \theta_n & = \frac{x+n}{n \, r_n}
\end{aligned}$$
-->

Usando la [formula di de Moivre](math-hs:algebra:complex:notes:demoivre),

$$( \cos x + i \sin x)^n = \cos( n x ) + i \sin ( n x )$$

si può scrivere

$$\begin{aligned}
  a_n & = \left( 1 + \frac{x}{n} + i \frac{y}{n} \right)^n = \\
      & = \left( r_n \cos \theta_n + i r_n \sin \theta \right)^n = \\
      & = r_n^n \cdot \left[ \cos ( n \theta_n ) + i \sin (n \theta_n) \right]
\end{aligned}$$

Per $n \rightarrow \infty$, $\tan \theta_n \rightarrow 0$ e quindi vale l'approssimazione asintotica $\tan \theta_n \sim \theta_n$

$$\theta_n \sim \tan \theta_n = \frac{y}{x+n} \sim \frac{y}{n}$$
$$n \theta_n \sim y$$

mentre è possibile studiare il limite del modulo, riscrivendolo come

$$\begin{aligned}
  r_n^n & = \left[ \left( 1 + \frac{x}{n} \right)^2 + \left( \frac{y}{n} \right)^2 \right]^{\frac{n}{2}} = \\
        & = \left( 1 + \frac{x}{n} \right)^{n} \left[ 1 + \left(\frac{y}{n+x}\right)^2 \right]^{\frac{n}{2}} = \\
\end{aligned}$$

Il primo fattore è asintotico a $e^x$,

$$\left( 1 + \frac{x}{n} \right)^n \sim e^x \ .$$

Il secondo fattore, con il "completamento della definizione di esponenziale", può essere riscritto come

$$\left[ 1 + \left(\frac{y}{n+x}\right)^2 \right]^{\frac{n}{2}} = \left\{ \left[ 1 + \left(\frac{y}{n+x}\right)^2 \right]^{\left(\frac{n+x}{y}\right)^2} \right\}^{\frac{n y^2}{2(n+x)^2}} \sim e^0 = 1 \ .$$

Il termine $r_n^n$ tende quindi a $e^x$.

Il limite dei termini $a_n$ della successione che definisce l'esponenziale complesso può quindi essere scritto come

$$\begin{aligned}
  e^z & = \lim_{n \rightarrow +\infty} a_n = \\
      & = \lim_{n \rightarrow +\infty} r_n (\cos(n\theta) + i \sin(n\theta)) =  & (\lim_{n\rightarrow +\infty} r_n = e^x, \lim_{n \rightarrow + \infty} n \theta = y)\\
      & = e^x \left( \cos y + i \sin y \right) \ .
\end{aligned}$$

Usando la proprietà delle potenze estesa ai numeri complessi,

$$e^x \left( \cos y + i \sin y \right) = e^z = e^{x + iy} = e^x \, e^{i y} \ ,
$$

dall'arbitrarietà del valore $x$, risulta dimostrata la formula di Eulero,

$$e^{iy} = \cos y + i \sin y \ .$$

per esponenti reali $y \in \mathbb{R}$.

```

```{dropdown} Dimostrazione usando la definizione come serie
L'identità di Eulero può essere dimostrata (**todo** *bisogna verificare la convergenza (uniforme) delle serie?*) confrontando le [serie polinomiali di Taylor](infinitesimal-calculus:derivatives:taylor) delle funzioni $\cos x$, $\sin x$ definite sui numeri reali, $x \in \mathbb{R}$

$$\begin{aligned}
  \cos x & = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} + \dots \\
  \sin x & = x - \frac{x^3}{3!} + \frac{x^5}{5!} + \dots \\
\end{aligned}$$

con la serie che definisce l'esponenziale complesso,

$$
  e^z & = 1 + z + \frac{z^2}{2!} + \frac{z^3}{3!} + \frac{z^4}{4!} + \frac{z^5}{5!} + \dots \\
$$

valutata in $z = i x \in \mathbb{C}$

$$\begin{aligned}
  e^{i x} 
      & = 1 + i x + \frac{(i x)^2}{2!} + \frac{(i x)^3}{3!} + \frac{(i x)^4}{4!} + \frac{(i x)^5}{5!} + \dots = \\
      & = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} \dots + i \left[ x - \frac{x^3}{3!} + \frac{x^5}{5!}  + \dots \right] = \\
      & = \cos x + i \sin x \ .
\end{aligned}$$

```

(math-hs:algebra:complex:notes:fun)=
## Altre operazioni e funzioni a variabile complessa

(math-hs:algebra:complex:notes:fun:power)=
### Potenza

(math-hs:algebra:complex:notes:fun:exp)=
### Esponenziale

(math-hs:algebra:complex:notes:fun:log)=
### Logaritmo


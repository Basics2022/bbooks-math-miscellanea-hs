(infinitesimal-calculus:derivatives:notes)=
# Note e dimostrazioni

(infinitesimal-calculus:derivatives:def:notes)=
## Definizione

(infinitesimal-calculus:derivatives:rules:notes)=
## Regole di derivazione

```{dropdown} Linearità
La derivata in $x$ della funzione $a f(x) + b g(x)$ viene calcolata con la definizione di limite di rapporto incrementale, a $x$ costante per $h \rightarrow 0$

$$\begin{aligned}
  \left( a f(x) + b g(x) \right)' 
  & = \lim_{h \rightarrow 0} \frac{( a f(x+h) + b g(x+h) ) - ( a f(x) + b g(x) ) }{h} = \\
  & = \lim_{h \rightarrow 0} \frac{a ( f(x+h) + f(x) ) + b ( g(x+h) -  b g(x) )}{h} = \\
  & = a \lim_{h \rightarrow 0} \frac{f(x+h) + f(x)}{h} + b \lim_{h \rightarrow 0} \frac{ g(x+h) -  b g(x) }{h} = \\
  & = a f'(x) + b g'(x) \ .
\end{aligned}$$
```

```{dropdown} Prodotto
La derivata in $x$ della funzione $f(x) g(x)$ viene calcolata con la definizione di limite di rapporto incrementale, a $x$ costante per $h \rightarrow 0$

$$\begin{aligned}
  \left( f(x) g(x) \right)' 
  & = \lim_{h \rightarrow 0} \frac{f(x+h) g(x+h) - f(x) g(x)}{h} = \\
  & = \lim_{h \rightarrow 0} \frac{f(x+h) g(x+h) - f(x)g(x+h) + f(x)g(x+h) - f(x) g(x)}{h} = \\
  & = \lim_{h \rightarrow 0} \frac{f(x+h) g(x+h) - f(x)g(x+h)}{h} + \lim_{h\rightarrow 0} \frac{f(x)g(x+h) - f(x) g(x)}{h} = \\
  & = \lim_{h \rightarrow 0} \underbrace{\frac{f(x+h) - f(x)}{h}}_{\rightarrow f'(x)} \underbrace{g(x+h)}_{\rightarrow g(x)} + f(x) \underbrace{\lim_{h\rightarrow 0} \frac{g(x+h) - g(x)}{h}}{\rightarrow g'(x)} = \\
  & = f'(x) g(x) + f(x) g'(x) \ .
\end{aligned}$$

```

```{dropdown} Quoziente
La derivata in $x$ della funzione $\frac{f(x)}{g(x)}$ viene calcolata con la definizione di limite di rapporto incrementale, a $x$ costante per $h \rightarrow 0$

$$\begin{aligned}
  \left( \frac{f(x)}{ g(x)} \right)' 
  & = \lim_{h \rightarrow 0} \frac{ \frac{f(x+h)}{g(x+h)} - \frac{f(x)}{g(x)}}{h} = \\
  & = \lim_{h \rightarrow 0} \frac{\frac{f(x+h) g(x) - f(x) g(x+h)}{g(x) g(x+h)}}{h} = \\
  & = \lim_{h \rightarrow 0} \frac{f(x+h) g(x) - f(x) g(x) + f(x) g(x) - f(x) g(x+h)}{h g(x) g(x+h)} = \\
  & = \dots \\
  & = \frac{f'(x) g(x) - f(x) g'(x)}{g^2(x)} \ .
\end{aligned}$$

```

```{dropdown} Funzione composta
La derivata in $x$ della funzione $f(g(x))$ viene calcolata con la definizione di limite di rapporto incrementale, a $x$ costante per $h \rightarrow 0$

$$\begin{aligned}
  \left( f(g(x)) \right)' 
  & = \lim_{h \rightarrow 0} \frac{ f(g(x+h)) - f(g(x)) }{h} = \\
  & = \lim_{h \rightarrow 0} \frac{ f(g(x+h)) - f(g(x)) }{h} \frac{g(x+h) - g(x)}{g(x+h)-g(x)} = \\
  & = \lim_{h \rightarrow 0} \frac{ f(g(x+h)) - f(g(x)) }{g(x+h) - g(x)} \frac{g(x+h)-g(x)}{h} = \\
  & = \dots = \\
  & = f'\left( g(x) \right) g'(x) \ .
\end{aligned}$$

- **todo** *discutere la validità dell'operazione di moltiplicare per $\frac{g(x+h) - g(x)}{g(x+h) - g(x)}$*
- **todo** $g(x+h) - g(x)) \rightarrow 0$ per $h \rightarrow 0$ poiché $g(x)$ è continua se derivabile

```

```{dropdown} Derivata della funzione inversa
Si usa la regola {eq}`infinitesimal-calculus:derivatives:rules:composite` di derivazione della funzione composta applicata alla relazione 

$$x = f^{-1} \left( f(x) \right)$$

che caratterizza la funzione inversa $f^{-1}$. Derivando entrambi i termini della relazione rispetto alla variabile indipendente $x$ si ottiene

$$1 = \dfrac{d f^{-1}}{d y}\bigg|_{y = f(x)} \, \dfrac{d f(x)}{d x} \ ,$$

dalla quale segue immediatamente la regola di derivazione della funzione inversa

$$ \dfrac{d f^{-1}}{d y}\bigg|_{y = f(x)} = \dfrac{1}{ \dfrac{d y}{d x}\bigg|_{x}} \ .$$
```

(infinitesimal-calculus:derivatives:thm:notes)=
## Teoremi

(infinitesimal-calculus:derivatives:thm:fermat:notes)=
```{dropdown} Dimostrazione del teorema di Fermat
Sia $x_0$ un punto di minimo locale della funzione $f(x)$ derivabile in $x_0$. La definizione di minimo locale permette di scrivere

$$\exists \delta > 0: \ x in (x_0 - \delta, x_0 + \delta) \cap (a,b) \quad \rightarrow \quad f(x_0) \le f(x) \ .$$

Quindi si possono scrivere le seguenti relazioni

$$\frac{f(x_0 + h) - f(x_0)}{h} \ge 0 \qquad \forall h \in (0, \delta)$$
$$\frac{f(x_0 + h) - f(x_0)}{h} \le 0 \qquad \forall h \in (-\delta,0)$$

Il limite per $h \rightarrow 0$ di queste due relazioni esiste ed è $f'(x_0)$ in entrambi i casi, essendo la derivata il limite del rapporto incrementale. Le due espressioni a sinistra dei segni di disuguaglianza possono essere considerate funzioni continue della variabile $h$, il cui limite esiste per $h \rightarrow 0$. Usando il [teorema della permanenza del segno](infinitesimal-calculus:continuous-fun:thms:sign), si può concludere che

$$\begin{cases}
  f'(x_0) \ge 0 \\
  f'(x_0) \le 0 \\
\end{cases}$$

e da queste la dimostrazione della tesi del problema, $f'(x_0)$.
```

(infinitesimal-calculus:derivatives:thm:rolle:notes)=
```{dropdown} Dimostrazione del teorema di Rolle
Per il [teorema di Weierstrass](infinitesimal-calculus:continuous-fun:thms:weierstrass), la funzione $f$ ha un massimo $M$ e un minimo $m$ assoluti nell'intervallo $[a,b]$. Si distinguono due casi:
- massimo e minimo sono nei punti estremi dell'intervallo. Allora la funzione è costante, e la derivata è nulla in ogni punto $c \in (a,b)$
- i punti di massimo e di minimo sono interni all'intervallo. In questo caso, per il [teorema di Fermat](infinitesimal-calculus:derivatives:thm:rolle) i punti $c$ di minimo o massimo verificano la condizione $f'(c) = 0$.
```
(infinitesimal-calculus:derivatives:thm:cauchy:notes)=
```{dropdown} Dimostrazione del teorema di Cauchy
Si applica il [teorema di Rolle](infinitesimal-calculus:derivatives:thm:rolle) alla funzione

$$h(x) = \left[ g(b) - g(a) \right] \, f(x) - \left[ f(b) - f(a) \right] \, g(x)$$

continua in $[a,b]$, derivabile in $(a,b)$ e con $h(a) = g(b) \, f(a) - f(b) \, g(a) = h(b)$.
```
<!--
```{dropdown} Dimostrazione del teorema di Lagrange
```
-->
(infinitesimal-calculus:derivatives:thm:hopital:notes)=
```{dropdown} Dimostrazione del teorema di de l'Hopital
**Forma indeterminata $\frac{0}{0}$.** Usando il [teorema di Cauchy](infinitesimal-calculus:derivatives:thm:cauchy) e il [teorema di Rolle](infinitesimal-calculus:derivatives:thm:rolle) **todo**

**Forma indeterminata $\frac{\infty}{\infty}$.** Usando il [teorema di Cauchy](infinitesimal-calculus:derivatives:thm:cauchy) e il [teorema di Lagrange](infinitesimal-calculus:derivatives:thm:lagrange) **todo**

```

(infinitesimal-calculus:derivatives:fund:notes)=
## Derivate fondamentali

```{dropdown} Dimostrazione di $\ (x^n)'$
Usando la [formula binomiale](math-hs:precalculus:polynomials:binomial-thm) $(x + \varepsilon)^n = x^n + n x^{n-1} \varepsilon + f(\varepsilon^2, \varepsilon^3, \dots)$,

$$\begin{aligned}
  \dfrac{d}{dx} x^n
  & = \lim_{\varepsilon \rightarrow 0}  \dfrac{(x+\varepsilon)^{n} - x^n}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0}  \dfrac{x^n + n x^{n-1} \varepsilon + o(\varepsilon) - x^n}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0}  \left( n x^{n-1} + O(\varepsilon) \right) = \\
  & = n x^{n-1} \ .
\end{aligned}$$

```
```{dropdown} Dimostrazione di $\ (e^x)'$
Usando le proprietà della funzione esponenziale e il limite $e^{\varepsilon} - 1 \sim \varepsilon$ per $\varepsilon \rightarrow 0$

$$\begin{aligned}
  \dfrac{d}{dx} e^x       
  & = \lim_{\varepsilon \rightarrow 0}  \dfrac{e^{x+\varepsilon} - e^x}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0}  \dfrac{e^x \left( e^{\varepsilon} - 1 \right)}{\varepsilon} = \\
  & = e^x \lim_{\varepsilon \rightarrow 0}  \dfrac{\varepsilon + o(\varepsilon)}{\varepsilon} = \\
  & = e^x \lim_{\varepsilon \rightarrow 0}  \left( 1 + O(\varepsilon) \right) = \\
  & = e^x \ .
\end{aligned}$$
```
```{dropdown} Dimostrazione di $\ (\ln x)'$
Usando le proprietà della funzione logaritmo naturale e il limite $\ln(1 + \varepsilon) \sim \varepsilon$ per $\varepsilon \rightarrow 0$, per $x > 0$

$$\begin{aligned}
  \dfrac{d}{dx} \ln x       
  & = \lim_{\varepsilon \rightarrow 0}  \dfrac{\ln(x+\varepsilon) - \ln x}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0}  \dfrac{\ln \left(1 + \frac{\varepsilon}{x} \right)}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0}  \dfrac{\frac{\varepsilon}{x} + o(\varepsilon)}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0}  \left( \frac{1}{x} + O(\varepsilon) \right) = \\
  & = \frac{1}{x} \ .
\end{aligned}$$

```
```{dropdown} Dimostrazione di $\ (\sin x)'$
Usando le formule di somma delle funzioni armoniche, **todo** ref, e gli infinitesimi delle funzioni $\sin \varepsilon \sim \varepsilon$, $\cos \varepsilon \sim 1 - \frac{\varepsilon^2}{2}$ per $\varepsilon \rightarrow 0$,

$$\begin{aligned}
  \dfrac{d}{dx} \sin(x) 
  & = \lim_{\varepsilon \rightarrow 0}  \dfrac{\sin(x+\varepsilon) - \sin x}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0} \dfrac{\sin x \cos \varepsilon + \cos x \sin \varepsilon - \sin x}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0} \dfrac{\sin x \left( 1 - \frac{\varepsilon^2}{2} \right) + \varepsilon \, \cos x - \sin x}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0} \left( \cos x + O(\varepsilon) \right) = \\
  & = \cos x \ .
\end{aligned}$$
```
```{dropdown} Dimostrazione di $\ (\cos x)'$
Usando le formule di somma delle funzioni armoniche, **todo** ref, e gli infinitesimi delle funzioni $\sin \varepsilon \sim \varepsilon$, $\cos \varepsilon \sim 1 - \frac{\varepsilon^2}{2}$ per $\varepsilon \rightarrow 0$,

$$\begin{aligned}
  \dfrac{d}{dx} \cos(x) 
  & = \lim_{\varepsilon \rightarrow 0}  \dfrac{\cos(x+\varepsilon) - \cos x}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0} \dfrac{\cos x \cos \varepsilon - \sin x \sin \varepsilon - \sin x}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0} \dfrac{\cos x \left( 1 - \frac{\varepsilon^2}{2} \right) - \varepsilon \, \sin x - \cos x}{\varepsilon} = \\
  & = \lim_{\varepsilon \rightarrow 0} \left( - \sin x + O(\varepsilon) \right) = \\
  & = - \sin x \ .
\end{aligned}$$
```

(infinitesimal-calculus:derivatives:higher:notes)=
## Derivate di ordine superiore

(infinitesimal-calculus:derivatives:taylor:notes)=
## Serie di Taylor e MacLaurin
```{dropdown} Dimostrazione delle proprietà di approssimazione locale della serie di Taylor
Usando il teorema di de l'Hopital, fino a quando il rapporto non è una forma indeterminata

$$\begin{aligned}
  \lim_{x \rightarrow x_0} \frac{f(x) - T_N[f(x); x_0]}{(x-x_0)^N}
  & = \lim_{x \rightarrow x_0} \dfrac{f(x) - f(x_0) + f'(x_0) (x-x_0) + \frac{f''(x_0)}{2!} (x-x_0)^2 + \dots \frac{f^{(N)}(x_0)}{N!}(x-x_0)^N}{(x-x_0)^N} = \text{(H)} = \\
  & = \lim_{x \rightarrow x_0} \dfrac{f'(x) - f'(x_0) + \frac{f''(x_0)}{1!} (x-x_0) + \dots \frac{f^{(N)}(x_0)}{(N-1)!}(x-x_0)^{N-1}}{N \, (x-x_0)^{N-1}} = \text{(H)} = \\
  & = \lim_{x \rightarrow x_0} \dfrac{f''(x) - f''(x_0) + \dots \frac{f^{(N)}(x_0)}{(N-2)!}(x-x_0)^{N-2}}{N \, (N-1) \, (x-x_0)^{n-1}} = \text{(H)} =\\
  & = \dots \\
  & = \lim_{x \rightarrow x_0} \dfrac{f^{(N)}(x) - f^{(N)}(x_0)}{N!} =  0 \ ,
\end{aligned}$$

si dimostra che il numeratore è un infinitesimo dello stesso ordine del denominatore. Usando la notazione dell'*"o piccolo"* per gli infinitesimi si può quindi scrivere l'approssimazione locale come:

$$f(x) - T_N[f(x), x_0] = o\left((x-x_0)^N\right) \ ,$$

o in maniera equivalente

$$f(x) = T_N[f(x), x_0] + o\left((x-x_0)^N\right) \ .$$

Ripetendo lo stesso procedimento, confrontando la differenza $f(x) - T_N[f(x);x_0]$ con il termine $(x-x_0)^{N+1}$ si ottiene 

$$
  \lim_{x \rightarrow x_0} \frac{f(x) - T_N[f(x); x_0]}{(x-x_0)^N} = \dots = \lim_{x \rightarrow x_0} \frac{f^{(N+1)}(x)}{(N+1)!} = \frac{f^{(N+1)}(x_0)}{(N+1)!} \ .
$$

```


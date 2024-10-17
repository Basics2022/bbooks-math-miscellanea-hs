(infinitesimal-calculus:integrals)=
# Integrali

(infinitesimal-calculus:integrals:def)=
## Definizioni

**Somma di Riemann.** Data una funzione continua $f: [a,b] \rightarrow \mathbb{R}$ e $P = \{ x_0, x_1, \dots x_n | a = x_0 < x_1 < \dots < x_n = b \}$ partizione dell'intervallo $[a,b]$, la somma di Riemann viene definita come

$$\sigma_P = \sum_{k=1}^{n} f(\xi_k) (x_{k} - x_{k-1}) \ ,$$ (infinitesimal-calculus:integrals:riemann:sum)

con $\xi_k \in [x_{k-1}, x_k]$.

**Integrale di Riemann.**

Sia $\Delta x = \max_k (x_{k} - x_{k-1})$, l'integrale definitio di Riemann è definito come il limite per $\Delta x \rightarrow 0$ della somma di Riemann $\sigma$

$$\int_a^b f(x) \ dx = \lim_{\Delta x \rightarrow 0} \sigma_P \ .$$ (infinitesimal-calculus:integrals:riemann:def)

**Osservazione.** Dato l'intervallo $[a,b]$, per $\Delta x \rightarrow 0$ il numero di intervalli della partizione tende all'infinito, $n \rightarrow \infty$.

### Interpretazione geometrica
L'integrale definito 

$$\int_{a}^{b} f(x) \, dx \ .$$

corrisponde al valore dell'**area con segno** tra il grafico della funzione $y=f(x)$ e l'asse $x$, per valori di $x \in [a,b]$. Se la funzione è positiva in un intervallo, il contributo dell'integrale sull'intervallo è positivo; se la funzione è negativa in un intervallo, il contributo dell'integrale sull'intervallo è negativo.

(infinitesimal-calculus:integrals:def:definite)=
### Integrale definito
(infinitesimal-calculus:integrals:def:definite:prop)=

#### Proprietà dell'integrale definito
(infinitesimal-calculus:integrals:def:indefinite)=

Dalla definizione {eq}`infinitesimal-calculus:integrals:riemann:def` dell'integrale di Riemann seguono immediatamente le seguenti proprietà:

- linearità dell'integrale definito

$$\int_a^b \big( \alpha f(x) + \beta g(x) \big) \ dx = \alpha \int_a^b f(x) \ dx + \beta \int_a^b g(x) \ dx \ ,$$

- additività sull'intervallo

$$\int_a^b f(x) \ dx + \int_b^c f(x) \ dx = \int_a^c f(x) \ dx \ ,$$

- valore assoluto dell'integrale è minore dell'integrale del valore assoluto

$$\left| \int_a^b f(x) \ dx \right| \le \int_a^b | f(x) | \ dx \ ,$$

### Integrale indefinito
Usando la proprietà dell'integrale definito,

$$\int_a^x f(t) \ dt = \int_a^b f(t) \ dt + \int_b^x f(t) \ dt \ , $$

si osserva che i due integrali con estremo superiore $x$ e diverso estremo inferiore differiscono solo per una costante, $\int_{a}^{b} f(t) \ dt$. Data la funzione $f(x)$ e il valore $a$ come paramtetro, si definisce una funzione di $x$ 

$$F(x;a) := \int_a^x f(t) \ dt \ .$$

Usando questa definizione, è immediato dimostrare che l'integrale definito $\int_{b}^{c} f(t) \ dt$ è uguale alla differenza della funzione $F(\cdot; a)$ calcolata nei due estremi,

$$\int_{b}^{c} f(t) \ dt = F(c;a) - F(b;a) \ ,$$

e che questo risultato è indipendente dal valore $a$. 

**TODO** *Definizione di primitiva*

$$\int^x f(t) \ dt = F(x) + C$$



## Teoremi
(infinitesimal-calculus:derivatives:thm:avg)=
### Teorema della media
**Enunciato.** Sia $f: [a,b] \in \mathbb{R} \rightarrow \mathbb{R}$ una funzione continua su $[a,b]$, allora esiste $c \in [a,b]$ tale che

$$\int_{a}^{b} f(x) dx = (b-a) f(c) $$

**Dim.**

(infinitesimal-calculus:derivatives:thm:fund)=
### Teorema fondamentale del calcolo integrale
**Enunciato.**

$$\dfrac{d}{dx} \int_{a}^{x} f(y) dy = f(x) $$

**Dim.** Usando la [definizione di derivata](infinitesimal-calculus:derivatives:def), le [proprietà dell'integrale definito](infinitesimal-calculus:integrals:def:definite:prop) e il [teorema della media](infinitesimal-calculus:derivatives:thm:avg),

$$\begin{aligned}
\dfrac{d}{dx} \int_{a}^x f(y) dy & = \lim_{\varepsilon \rightarrow 0 }\frac{1}{\varepsilon} \Big[ \int_{a}^{x+\varepsilon} f(y) dy - \int_{a}^{x} f(y) dy \Big] = \\
& = \lim_{\varepsilon \rightarrow 0 }\frac{1}{\varepsilon} \Big[ \int_{x}^{x+\varepsilon} f(y) dy \Big] = \\
& = \lim_{\varepsilon \rightarrow 0 } \frac{1}{\varepsilon} \varepsilon f(\xi) = \qquad \xi \in [x,x+\varepsilon] \\
& = \lim_{\varepsilon \rightarrow 0 } f(\xi) = f(x) . \\
\end{aligned}$$

**Derivata su dominio dipendente dalla variabile indipendente**
Sia $x \in D$, e gli estremi di integrazione $a(x)$, $b(x)$ **TODO** *Caratteristiche?*

$$\dfrac{d}{dx} \int_{a(x)}^{b(x)} f(y) \, dy = - a'(x) \, f(a(x)) + b'(x) f(b(x)) $$

**Dim.**

$$\begin{aligned}
\dfrac{d}{dx} \int_{a(x)}^{b(x)} f(y) dy & = \lim_{\varepsilon \rightarrow 0 }\frac{1}{\varepsilon} \Big[ \int_{a(x+\varepsilon)}^{b(x+\varepsilon)} f(y) dy - \int_{a(x)}^{b(x)} f(y) dy \Big] = \\
& = \lim_{\varepsilon \rightarrow 0 } \frac{1}{\varepsilon} \Big[ \int_{a(x)}^{b(x)} f(y) dy - \int_{a(x)}^{a(x+\varepsilon)} f(y) dy + \int_{b(x)}^{b(x+\varepsilon)} f(y) dy -  \int_{a(x)}^{b(x)} f(y) dy  \Big] = \\
& = \lim_{\varepsilon \rightarrow 0 } \frac{1}{\varepsilon} \Big[ - \int_{a(x)}^{a(x+\varepsilon)} f(y) dy + \int_{b(x)}^{b(x+\varepsilon)} f(y) dy \Big] = \\
& = \lim_{\varepsilon \rightarrow 0 } \frac{1}{\varepsilon} \Big[ - ( a(x+\varepsilon) - a(x) ) f(\alpha) + ( b(x+\varepsilon) - b(x) ) f(\beta) \Big] = \qquad \alpha \in [a(x), a(x+\varepsilon)] \ , \quad \beta \in [b(x), b(x+\varepsilon)] \\
& = \lim_{\varepsilon \rightarrow 0 } \frac{1}{\varepsilon} \Big[ - ( \varepsilon a'(x) + o(\varepsilon) ) f(\alpha) + ( \varepsilon b'(x) + o(\varepsilon) ) f(\beta) \Big] = \\
& = \lim_{\varepsilon \rightarrow 0 } \frac{1}{\varepsilon} \Big[ - \varepsilon a'(x) \, f(\alpha) + \varepsilon b'(x) \, f(\beta) \Big] =  \\
& = \lim_{\varepsilon \rightarrow 0 } \Big[ - a'(x) \, f(\alpha) +  b'(x) \, f(\beta) \Big] =  \\
& =  - a'(x) \, f(a(x)) +  b'(x) \, f(b(x))  \ .
\end{aligned}$$



(infinitesimal-calculus:integrals:fund)=
## Integrali fondamentali
Una volta provato il [teorema fondamentale del calcolo infinitesimale](infinitesimal-calculus:derivatives:thm:fund), si possono definire alcuni integrali fondamentali come l'operazione inversa alla derivazione applicata alle [derivate fondamentali](infinitesimal-calculus:derivatives:fund) 

$$\begin{aligned}
 \int x^n         \ dx & = \frac{1}{n} x^{n+1} + C  \qquad (n \neq 0) \\ 
 \int e^x         \ dx & = e^x                 + C \\ 
 \int \frac{1}{x} \ dx & = \ln x               + C \\ 
 \int \cos x      \ dx & = \sin x              + C \\ 
 \int \sin x      \ dx & =-\cos x              + C    
\end{aligned}$$

## Regole di integrazione
(infinitesimal-calculus:integrals:by-parts)=
### Integrazione per parti
La regola di integrazione per parti viene ottenuta integrando la regola di [derivazione del prodotto](infinitesimal-calculus:derivatives:product). Siano $F(x)$, $G(x)$ le primitive delle funzioni $f(x)$, $g(x)$, e quindi vale $F'(x) = f(x)$, $G'(x) = g(x)$.
La regola di derivazione del prodotto $F(x)G(x)$ viene scritta come

$$\begin{aligned}
  (F(x) G(x))' & = F'(x) G(x) + F(x) G'(x) = \\
  & = f(x) G(x) + F(x) g(x)
\end{aligned}$$

Isolando il termine $f(x)G(x)$ e integrando, si ottiene

$$\begin{aligned}
\int f(x) G(x) dx & = \int (F(x) G(x))' dx - \int F(x) g(x) dx = \\
& = F(x) G(x) - \int F(x) g(x) dx  \ .
\end{aligned}$$

(infinitesimal-calculus:integrals:substitution)=
### Integrazione con sostituzione
La regola di integrazione per parti viene ottenuta dalla regola di [derivazione della funzione composta](infinitesimal-calculus:derivatives:product). Sia $\widetilde{F}(x)$ la funzione composta $\widetilde{F}(x) = F( y(x) )$ e siano definite le derivate

$$\widetilde{f}(x) = \dfrac{d}{dx} \widetilde{F}(x)  \qquad , \qquad
             f (y) = \dfrac{d}{dy}            F (y)$$

per la regola di derivazione della funzione composta,

$$\widetilde{f}(x) := \dfrac{d}{dx} \widetilde{F}(x) = \dfrac{d}{dx} F(y(x)) = 
\dfrac{d F}{d y}(y(x)) \frac{d y}{d x}(x) =: f(y(x)) y'(x) \ .$$

Usando il [teorema del calcolo infinitesimale](infinitesimal-calculus:derivatives:thm:fund)

**todo...**





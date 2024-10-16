```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(ode:high-school)=
# Equazioni differenziali ordinarie

**Motivazione.**

**Definizioni.**
Un'equazione differenziale ordinaria è una funzione che coinvolge una funzione reale di una variabile reale, incognita, e le sue derivate. Formalmente una ODE può essere scritta come

$$F(y^{(n)}(x), \dots y'(x), y(x), x) = 0 \ .$$

Il **grado** di una ODE è l'ordine massimo della derivata che compare nell'equazione.

In generale, la soluzione di una ODE di grado $n$ è il risultato di $n$ operazioni di integrazione che producono $n$ costanti arbitrarie. Affinché un problema sia definito, sono necessarie $n$ condizioni sulla funzione incognita o sulle sue derivate.

Si possono definire alcuni problemi:
- problemi differenziali ai valori iniziali
- problemi differenziali con condizioni al contorno

**Equazioni lineari a coefficienti costanti.**
- Soluzione generale (senza dimostrazione): $y(x) = y_o(x) + y_p(x)$
- Equazioni di primo grado

$$m \dot{x} + c x  = f(t)$$

Soluzione dell'equazione omogenea

$$x_o(t) = C e^{-\frac{c}{m} t}$$

- Equazioni di secondo grado

$$m \ddot{x} + c \dot{x} + k x = f(t)$$

Soluzione dell'equazione omogenea

$$s_{1,2} = \sigma \mp i \omega$$

$$\begin{aligned}
x_o(t) & = C_1 e^{s_1 t } + C_2 e^{s_2 t} = \\
       & = e^{\sigma t} \left( C_1 e^{-i \omega t } + C_2 e^{i \omega t} \right) = \\
\end{aligned}$$

con le costanti di integrazione complesse coniugate,

$$C_1 = C_2^* = (A + i B)^* = A - i B$$

al fine di avere una soluzione reale. Ricordando che la somma di un numero complesso e del suo coniugato vale due volte la parte reale,

$$w + w^* = (u+iv) + (u+iv)^* = u+iv + u - i v = 2 u = 2 \text{Re}\{w\}$$

si può riscrivere la soluzione dell'equazione omogenea

$$x_o(t) = 2 \left[ A \cos ( \omega t ) - B \sin (\omega t ) \right] $$

avendo riconosciuto 

$$\begin{aligned}
  \text{Re}\{C_2 e^{i \omega t}\} &= \text{Re}\{ (A + i B)(\cos(\omega t) + i \sin(\omega t)\} = \\
  \text{Re}\{ A \cos(\omega t) - B \sin (\omega t) + i \left[ A \sin (\omega t) + B \cos (\omega t) \right]\} \ .
\end{aligned}$$



**Equazioni separabili: tecnica di soluzione di separazione delle variabili.**

$$\frac{d y}{d x} = f(y(x)) \ g(x) $$

può essere riscritta formalmente come

$$\dfrac{dy}{f(y)} = g(x) \ d x $$

e integrata con le opportune condizioni 

$$\tilde{F}(y(x)) - \tilde{F}(y(x_0)) = G(x) - G(x_0)$$

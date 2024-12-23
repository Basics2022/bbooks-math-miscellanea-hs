(multivariable-calculus:derivatives)=
# Derivate di funzioni di più variabili
## Derivate parziali
```{prf:definition} Derivata parziale
:label: multivariable-calculus-partial-derivative

Data una funzione di più variabili $(x_1, x_2, \dots, x_n) \in \mathbb{R}^n$, la **derivata parziale** rispetto alla variabile $x_1$, se esiste, è la derivata della funzione calcolata tenendo costanti tutte le altre variabili,

$$\frac{\partial f}{\partial x_1}(x_1, x_2, \dots, x_n) := \lim_{h_1 \rightarrow 0} \frac{f(x_1+h_1, x_2, \dots, x_n) - f(x_1, x_2, \dots, x_n)}{h_1}$$
```

La definizione analoga vale per la derivata parziale rispetto a qualsiasi altra variabile indipendente.

Ricordando il significato di infinitesimo $o(h_1)$, $\lim_{h_1 \rightarrow 0} \frac{o(h_1)}{h_1} = 0$, dovrebbe essere semplice convincersi che la definizione di derivata parziale rispetto a $x_1$ implica

$$
  f(x_1+h_1, \dots, x_n) - f(x_1, \dots, x_n) = h_1 \frac{\partial f}{\partial x_1}(x_1, \dots, x_n) + o(h_1) \ .
$$ (multivariable-calculus:derivatives:partial:differential)

````{prf:example} Verifica dell'incremento della funzione dovuto all'incremento di una variabile
:label: multivariable-calculus:increment-1

Verificare la validità dell'espressione {eq}`multivariable-calculus:derivatives:partial:differential`, inserendola nella definizione di derivata parziale e calcolando il limite.

```{dropdown} Soluzione
$$\begin{aligned}
  \lim_{h_1 \rightarrow 0} \frac{f(x_1+h_1, x_2, \dots, x_n) - f(x_1, x_2, \dots, x_n)}{h_1} & = 
  \lim_{h_1 \rightarrow 0} \frac{1}{h_1} \left[ h_1 \frac{\partial f}{\partial x_1}(x_1, \dots, x_n) + o(h_1) \right] = \\
  & = \lim_{h_1 \rightarrow 0} \left[ \frac{\partial f}{\partial x_1}(x_1, \dots, x_n) + O(h_1) \right] = \frac{\partial f}{\partial x_1}(x_1, \dots, x_n) \ .
\end{aligned}$$

```

````

(multivariable-calculus:derivatives:increment)=
## Incremento di una funzione
```{prf:definition} Incremento di una funzione
Dati gli incrementi $h_i$ delle variabili indipendenti $x_i$, l'incremento della funzione partendo dalla $n$-pla $\mathbb{x}$ dopo l'incremento delle variabili è

$$\Delta f(\mathbf{x}, \mathbf{h}) := f(\mathbf{x} + \mathbf{h}) - f(\mathbf{x}) \ .$$
```

(multivariable-calculus:derivatives:differential)=
## Differenziale
```{prf:definition} Differenziale
Il differenziale $d f$ di una funzione di più variabili a valore reale in corrispondenza della $n$-pla $\mathbf{x} = (x_1, x_2, \dots, x_n)$ e dell'incremento delle variabili indipendenti $\mathbf{h} = (h_1, h_2, \dots, h_n)$ può essere definito come

$$d f (\mathbf{x}, \mathbf{h}) = \frac{\partial f}{\partial x_1}(\mathbf{x}) \,  h_1 +   
                                 \frac{\partial f}{\partial x_2}(\mathbf{x}) \,  h_2 + \dots
                                 \frac{\partial f}{\partial x_n}(\mathbf{x}) \,  h_n \ .  $$
```

Il differenziale di una funzione rappresenta al primo ordine l'incremento della funzione rispetto all'incremento delle variabili indipendenti,

$$ \Delta f(\mathbf{x}, \mathbf{h}) = df(\mathbf{x}, \mathbf{h}) + o(||\mathbf{h}||)\ .$$

````{prf:example} Differenziale per una funzione di due variabili, $\ f(x_1, x_2) $
:label: multivariable-calculus:differential

Verificare la relazione tra incremento e differenziale per una funzione di due variabili.

```{dropdown} Soluzione
Usando la relazione {eq}`multivariable-calculus:derivatives:partial:differential` si può scrivere

$$\begin{aligned}
f(x_1 + h_1, x_2 + h_2)
  & = f(x_1 + h_1, x_2 ) + h_2 \, \partial_{2} f(x_1 + h_1, x_2) + o(h_2) = \\
  & = f(x_1, x_2) + h_1 \, \partial_{1} f(x_1, x_2) + o(h_1) \\
  & \ \ + h_2 \left[ \partial_{2} f(x_1, x_2) + h_1 \, \partial_{1}\partial_{2} f(x_1, x_2) + o (h_1) \right] + o(h_2) = \\
  & = f(x_1, x_2) + h_1 \, \partial_{1} f(x_1, x_2) + h_2 \, \partial_{2} f(x_1, x_2) + o(h_1) + o(h_2) + o(h_1 \, h_2) 
\end{aligned}$$

Scegliendo una norma per l'incremento $\mathbf{h}$, si può scrivere (**todo** *sempre? Per ogni norma?*)

$$
f(x_1 + h_1, x_2 + h_2) = f(x_1, x_2) + h_1 \, \partial_{1} f(x_1, x_2) + h_2 \, \partial_{2} f(x_1, x_2) + o(||\mathbf{h}||)
$$

e quindi ottenere la relazione desiderata

$$\begin{aligned}
\Delta f(\mathbf{x}, \mathbf{h}) & = f(x_1 + h_1, x_2 + h_2) - f(x_1, x_2) = \\
                                 & = h_1 \, \partial_{1} f(x_1, x_2) + h_2 \, \partial_{2} f(x_1, x_2) + o(||\mathbf{h}||) = \\
                                 & = d f(\mathbf{x}, \mathbf{h}) + o(||\mathbf{h}||) \ .
\end{aligned}$$
```
````

```{note} **Norma infinito**
La norma infinito di una $n$-pla apprtenente a $\mathbb{R}^n$ è definita come il valore assoluto del valore massimo

$$||\mathbf{h}||_{\infty} = \max_i |h_i| \ .$$
```
```{note} **Norma-2**
La norma-2 di una $n$-pla appartenente a $\mathbb{R}^n$ è definita come la radice della somma dei quadrati delle componenti

$$||\mathbf{h}||_{2} = \sqrt{h_1^2 + \dots h_n^2} \ .$$
```


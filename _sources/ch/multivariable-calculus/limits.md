```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(multivariable-calculus:limit)=
# Limite di una funzione di più variabili

Si considera una funzione $f$ a valori reali di due variabili reali $x,y$, $\mathbf{x} := (x,y) \in \mathbb{R}^2$, $f(x,y): \ D \in \mathbb{R}^2 \rightarrow \mathbb{R}$.

Il limite al finito per $(x,y) \rightarrow (x_0, y_0)$ della funzione a più variabili $f(x,y)$, se esiste ed è unico, è il valore al quale tende la funzione $f(x,y)$ all'avvicinarsi di $(x,y) \rightarrow (x_0, y_0)$, in maniera indipendente dal modo di avvicinarvisi.

Più precisamente, il limite finito al finito di una funzione di più variabili

$$\ell = \lim_{(x,y) \rightarrow (x_0,y_0)} f(x,y) = \lim_{\mathbf{x} \rightarrow \mathbf{x}_0} f(x,y)$$

 viene definito come quel valore $\ell$ che soddisfa la seguente condizione

$$\text{per } \forall \varepsilon > 0 \quad \exists \delta_{\varepsilon} \quad \text{t.c.} \quad |f(x,y) - \ell| < \varepsilon \quad \text{per } \forall (x,y) \quad 0 < || \mathbf{x} - \mathbf{x}_0|| < \delta_\varepsilon \ ,$$

avendo usato una norma per le $n$-uple di numeri reali appartenenti a $\mathbb{R}^n$, per definire un'intorno di $\mathbb{x}_0$.

**todo** Esempi in cui il limite esiste e il limite non esiste

(multivariable-calculus:continuity)=
# Funzioni continue

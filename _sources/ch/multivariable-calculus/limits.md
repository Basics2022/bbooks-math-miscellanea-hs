```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(multivariable-calculus:limit)=
# Limite di una funzione di più variabili

In analogia con la [definizione di limite per le funzioni di una variabile](infinitesimal-calculus:limits:def), il limite $\ell$ finito al finito $\mathbf{x}_0 \in D$ di una funzione di più variabili $f(\mathbf{x})$,

$$\ell = \lim_{\mathbf{x} \rightarrow \mathbf{x}_0} f(x,y)$$

 viene definito come quel valore $\ell$ che soddisfa la seguente condizione

$$\text{per } \forall \varepsilon > 0 \quad \exists \delta_{\varepsilon} \quad \text{t.c.} \quad |f(x,y) - \ell| < \varepsilon \quad \text{per } \forall (x,y) \quad 0 < || \mathbf{x} - \mathbf{x}_0|| < \delta_\varepsilon \ ,$$

avendo usato una norma per le $n$-uple di numeri reali appartenenti a $\mathbb{R}^n$, per definire un'intorno di $\mathbb{x}_0$.

La definizione può essere descritta qualitativamente: il limite $\ell$ della funzione per $\mathbf{x} \rightarrow \mathbf{x}_0$ è il valore al quale tende il valore $f(\mathbf{x})$ all'avvicinarsi di $\mathbf{x}$ al punto $\mathbf{x}_0$, in maniera indipendente dalla direzione di avvicinamento. 

Data la definzione di limite, se il limite esiste esso è unico.

Esistono casi in cui:
- avvicinandosi al punto $\mathbf{x}_0$ lungo direzioni differeti, si ottengono diversi valori; *fare esempio*
- ...

**todo** Esempi in cui il limite esiste e il limite non esiste

(multivariable-calculus:continuity)=
# Funzioni continue



<!--
Il limite di una funzione $f$ a valori reali di due variabili reali $x,y$, $\mathbf{x} := (x,y) \in \mathbb{R}^2$ 

 $$f(x,y): \ D \in \mathbb{R}^2 \rightarrow \mathbb{R} \ ,$$

essa ha limite $\ell$ per $\mathbf{x} \rightarrow \mathbf{x}_0$,

  $$\ell = \lim_{(x,y) \rightarrow (x_0,y_0)} f(x,y) = \lim_{\mathbf{x} \rightarrow \mathbf{x}_0} f(x,y)$$

se 
-->

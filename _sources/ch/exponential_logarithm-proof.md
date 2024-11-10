(math-hs:exp-log:proof)=
# Esponenziale e logaritmo - dimostrazioni

(math-hs:exp-log:proof:convergence)=
## Convergenza della serie di funzioni $\sum_{n=0}^{\infty} \frac{x^n}{n!}$ in ogni intervallo limitato

Per dimostrare la convergenza uniforme di $\sum_{k=0}^{\infty} \frac{x^k}{k!}$ a $e^x$ in ogni intervallo limitato $|x| < M$, è richiesto di dimostrare che per ogni $\varepsilon > 0$ esiste $N \in \mathbb{N}$ tale che 

$$|e^x - S_n(x)| < \varepsilon \ , \qquad \forall |x| < M $$

per tutti gli $n > N$. Bisogna quindi dimostrare che 

$$\left| \sum_{k=n+1}^{\infty} \frac{x^k}{k!} \right| < \varepsilon \ .$$

Definendo $\tilde{M} = \max\{ 1, M \}$

$$\left| \sum_{k=n+1}^{\infty} \frac{x^k}{k!} \right| < \sum_{k=n+1}^{\infty} \frac{\tilde{M}^k}{k!}$$

e scegliendo $k > 2 \tilde{M}$, in maniera da poter scrivere 

$$\frac{\tilde{M}^k}{k!} = \frac{\tilde{M}^{2 \tilde{M}}}{( 2 \tilde{M})!} \frac{\tilde{M}}{2\tilde{M}+1} \dots \frac{\tilde{M}}{k} <  \frac{\tilde{M}^{2 \tilde{M}}}{( 2 \tilde{M})!} 2^{-(k - \tilde{M})} = \frac{(2 \tilde{M})^{2 \tilde{M}}}{(2 \tilde{M})!} 2^{-k}$$

e quindi

$$\sum_{k=n+1}^{\infty} \frac{\tilde{M}}{k!} < \sum_{k=n+1}^{\infty} \frac{(2 \tilde{M})^{2 \tilde{M}}}{(2\tilde{M})!} 2^{-k} =  \frac{(2 \tilde{M})^{2 \tilde{M}}}{(2\tilde{M})!} 2^{-n}$$

avendo usato $\sum_{k=n+1}^{\infty} 2^{-k} = 2^{-n-1} \sum_{k=0}^{\infty} 2^{-k} = 2^{-n-1} \cdot 2 = 2^{-n}$.

Scegliendo $N > \log_2 \left( \frac{1}{\varepsilon} \frac{(2\tilde{M})^{2 \tilde{M}}}{(2 \tilde{M})!)} \right)$, per ogni $n > N$ si ha 

$$\left| \sum_{k=n+1}^{\infty} \frac{x^k}{k!} \right| <  \frac{(2 \tilde{M})^{2 \tilde{M}}}{(2\tilde{M})!} 2^{-n} <  \frac{(2 \tilde{M})^{2 \tilde{M}}}{(2\tilde{M})!} 2^{-N} < \varepsilon \ .$$


<!--
Poiché $\frac{1}{k!} < \frac{1}{2^{k-1}}$ per $k > 2$, e usando la limitatezza dell'intervallo $|x| < M$ si può scrivere

$$ \left| \sum_{k=n+1}^{\infty} \frac{x^k}{k!} \right| < \left| \sum_{k=n+1}^{\infty} \frac{M^k}{2^{k-1}} \right| =  $$
-->

(math-hs:exp-log:proof:equivalence)=
## Equivalenza delle due definizioni

**todo**

(math-hs:exp-log:proof:powers)=
## Giustificazione della notazione $\ e^x$

Per evitare la forma indeterminata nel termine $0^0$, si calcola qui il limite per $x \rightarrow 0$ (**todo** *motivare la validità di questa operazione/interpretazione della funzione $e^x$*)

$$e^0 := \lim_{x \rightarrow 0} e^x = \lim_{x \rightarrow 0} \sum_{n = 0}^{\infty} \frac{x^n}{n!} = 1 + \lim_{x \rightarrow 0} \sum_{n=1}^{\infty} \frac{x^n}{n!} = 1 \ .$$

Ricordando la definizione della $e$ di Eulero, è immediato verificare che il valore della serie di funzioni per $x = 1$ coincide con il valore di $e$

$$e^1 = \sum_{n=0}^{\infty} \frac{x^n}{n!} \bigg|_{x=1} = \sum_{n=0}^{\infty} \frac{1}{n!} = e \ .$$

La serie che definisce la esponenziale soddisfa la proprietà delle potenze $e^x \, e^y = e^{x+y}$,

$$\begin{aligned}
  e^x \, e^y 
  & = \sum_{n=0}^{\infty} \frac{x^n}{n!} \sum_{m = 0}^{\infty} \frac{y^m}{m!} = \\
  & = \sum_{n=0}^{\infty} \sum_{m=0}^{\infty} \frac{y^m}{m!} \frac{x^n}{n!} =  & \text{($m,n \  \rightarrow \ m,p=m+n$)}\\
  & = \sum_{p=0}^{\infty} \sum_{m=0}^{p} \frac{y^m \, x^{p-m}}{m! (p-m!)} = \\
  & = \sum_{p=0}^{\infty} \frac{1}{p!} \underbrace{\sum_{m=0}^{p} \frac{p!}{m! (p-m)!} y^m \, x^{p-m}}_{(x+y)^p} = \\
  & = \sum_{p=0}^{\infty} \frac{(x+y)^p}{p!} = \\
  & = e^{x+y} \ ,
\end{aligned}$$

avendo usato il [teorema binomiale](math-hs:precalculus:polynomials:binomial-thm).



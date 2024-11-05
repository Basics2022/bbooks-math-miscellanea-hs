(math-hs:exp-log:proof)=
# Esponenziale e logaritmo - dimostrazioni

## Equivalenza delle due definizioni


## Giustificazione della notazione $\ e^x$

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



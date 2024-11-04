```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(math-hs:series)=
# Serie e successioni

- successioni numeriche
- successioni di funzioni
- serie numeriche
- serie di funzioni

## Serie numeriche reali

**Carattere della serie**

### Criteri di convergenza

#### Serie a termini concordi

- **Criterio del confronto.**
- **Criteri  del confronto con serie geometrica.**
  - criterio della radice
  - criterio del rapporto
- **Criterio di Raabe**
- ...

#### Serie a termini concordi

- **Criterio di convergenza assoluta.**
- ...

### Esempi

**Serie armonica.** La serie armonica,

$$\sum_{n=1}^{\infty} \frac{1}{n} \ ,$$

è una serie divergente. Non è difficile dimostrare che la serie è crescente e non è limitata superiormente: infatti

$$\sum_{n=1}^{\infty} \frac{1}{n} = 1 + \frac{1}{2} + \underbrace{\frac{1}{3} + \frac{1}{4}}_{> \frac{1}{2}} + \underbrace{\frac{1}{5} + \frac{1}{6} + \frac{1}{7} + \frac{1}{8}}_{> \frac{1}{2}} + \dots \ ,$$

la somma dei primi $2^N$ termini della serie è maggiore di $1 + \frac{N}{2}$, $\sum_{n=1}^{2^N} \frac{1}{n} > 1 + \frac{N}{2}$.

**Serie geometrica.**

$$\sum_{n=0}^{\infty} a^n$$

La serie risulta convergente per $|a|<1$. Infatti

$$S_N = \sum_{n=0}^{N} a^n = 1 + a \sum_{n=0}^{N} - a^{N+1} = 1 - a^{N+1} - a \, S_N$$

**Serie telescopiche.**

$$\sum_{n=1}^{\infty} a_n = \sum_{n=1}^{\infty} \left( A_{n} - A_{n+1} \right) = A_1 - \lim_{n \rightarrow \infty} A_n $$

**Serie di Mengoli.** La serie di Mengoli è un esempio di serie telescopica, con 

$$a_n = \frac{1}{n(n+1)} = \frac{1}{n} - \frac{1}{n+1}$$

e quindi la serie risulta convergente,

$$\sum_{n=1}^{\infty} \frac{1}{n(n+1)} = 1 - \lim_{n \rightarrow \infty} \frac{1}{n+1} = 1 \ .$$

**$e$ di Eulero o di Nepero.** La serie

$$\sum_{n=0}^{\infty} \frac{1}{n!}$$

converge a un numero irrazionale $e$, che viene definito il **numero di Eulero o di Nepero**, e il cui valore approssimato è

$$e = 2.718281828\text{"e poi la magia finisce"} \ ,$$

cioè le cifre decimali successive non sono periodiche.



## Serie numeriche complesse



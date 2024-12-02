<!--
```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
-->

(math-hs:algebra:real-n)=
# Algebra su $\mathbb{R}^n$

L'algebra in $ \mathbb{R}^n $ si occupa delle $n$-uple $\mathbf{x} = (x_1, \dots, x_n) \in \mathbb{R}^n$ di $n$ numeri reali e dei problemi che hanno più di un'incongita, come i sistemi di equazioni e di disequazioni. Alle operazioni sui numeri reali che possono essere compiute sulle singole componenti delle $n$-uple, si aggiungono le operazioni di:
- **Addizione di $n$-uple** che produce una $n$-upla le cui componenti sono le somme delle componenti,

   $$\mathbf{a} + \mathbf{b} = (a_1,\dots,a_n) + (b_1,\dots,b_n) = (a_1+b_1,\dots,a_n+b_n) \ ,$$

- **Moltiplicazione di una $n$-upla per uno scalare** che produce una $n$-upla le cui componenti sono il prodotto delle componenti per lo scalare

   $$c \, \mathbf{a} = c \, (a_1,\dots,a_n) = (c \, a_1, \dots, c \, a_n) \ .$$



---

## Problemi

### Forma generale

**Sistemi di equazioni.** Un sistema di $m$ equazioni in $n$ incognite è un insieme di $m$ equazioni che devono essere soddisfatte simultaneamente,

$$
\begin{cases} f_1(x_1,\dots,x_n) = 0 \\ \dots \\f_m(x_1, \dots, x_n) = 0 \end{cases}
\qquad , \qquad \mathbf{f}(\mathbf{x}) = \mathbf{0} \ .$$ 

Le $n$-uple che soddisfano simultaneamente le $m$ condizioni sono le soluzioni del problema. In generale, non si può dire nulla sull'esistenza e l'eventuale unicità delle soluzioni del problema. Risultati di esistenza e unicità esistono per i problemi lineari, come descritto nella sezione sull'[algebra lineare]() **todo** *collegamento. Serve un capitolo sull'algebra lineare? Rinominare quello sull'algebra matriciale in algebra lineare?*.

**Sistemi di disequazioni.** Un sistema di $m$ disequazioni in $n$ incognite è un insieme di $m$ disequazioni che devono essere soddisfatte simultaneamente,

$$
\begin{cases} g_1(x_1,\dots,x_n) > 0 \\ \dots \\g_m(x_1, \dots, x_n) > 0 \end{cases}
\qquad , \qquad \mathbf{g}(\mathbf{x}) > \mathbf{0} \ .$$ 

Le $n$-uple che soddisfano simultaneamente le $m$ condizioni sono le soluzioni del problema. In generale, non si può dire nulla sull'esistenza e l'eventuale unicità delle soluzioni del problema. 

**Sistemi di equazioni e disequazioni.** Un sistema di $m_1$ equazioni e $m_2$ disequazioni in $n$ incognite è un insieme di $m_1$ equazioni e $m_2$ disequazioni che devono essere soddisfatte simultaneamente,

$$
\begin{cases} f_1(x_1,\dots,x_n) = 0 \\ \dots \\ f_{m_1}(x_1,\dots,x_n) = 0 \\ g_1(x_1,\dots,x_n) > 0 \\ \dots \\g_{m_2}(x_1, \dots, x_n) > 0 \end{cases}
\qquad , \qquad \begin{cases} \mathbf{f}(\mathbf{x}) = \mathbf{0} \\ \mathbf{g}(\mathbf{x}) > \mathbf{0} \end{cases}
$$ 

Le $n$-uple che soddisfano simultaneamente le $m$ condizioni sono le soluzioni del problema. In generale, non si può dire nulla sull'esistenza e l'eventuale unicità delle soluzioni del problema. 

<!--
## ...
-->

## Problemi

### Sistemi lineari di equazioni

1. Risolvi il sistema:

   $$
   \begin{cases}
   x + y = 7 \\
   2x - y = 4
   \end{cases}
   $$

2. Risolvi il sistema:

   $$
   \begin{cases}
   3x + 4y = 12 \\
   x - 2y = -1
   \end{cases}
   $$

3. Risolvi il sistema:

   $$
   \begin{cases}
   5x - y = 10 \\
   2x + 3y = 14
   \end{cases}
   $$

4. Risolvi il sistema:

   $$
   \begin{cases}
   x + 2y = 5 \\
   3x - y = 4
   \end{cases}
   $$

5. Risolvi il sistema:

   $$
   \begin{cases}
   2x + 3y = 7 \\
   4x - y = 9
   \end{cases}
   $$

6. Risolvi il sistema:

   $$
   \begin{cases}
   x - y = 1 \\
   2x + y = 8
   \end{cases}
   $$

7. Risolvi il sistema:

    $$
    \begin{cases}
    x + y + z = 6 \\
    2x - y + z = 5 \\
    x - y - z = -2
    \end{cases}
    $$

8. Risolvi il sistema:

    $$
    \begin{cases}
    x + y + z = 5 \\
    2x + 2y + 2z = 10 \\
    x - y + z = 1
    \end{cases}
    $$

9. Verifica che il sistema non abbia soluzioni:

    $$
    \begin{cases}
    x + y + z = 4 \\
    x - y + z = 6 \\
    2x + 2y + 2z = 5
    \end{cases}
    $$

10. Risolvi il sistema:

    $$
    \begin{cases}
    2x + y + z = 7 \\
    x - y + 2z = 3 \\
    x + 2y - z = 4
    \end{cases}
    $$

### Sistemi lineari di disequazioni

1. Risolvi il sistema:

   $$
   \begin{cases}
   x + y \leq 4 \\
   2x - y > 3
   \end{cases}
   $$

2. Risolvi il sistema:

   $$
   \begin{cases}
   x - 2y \geq 1 \\
   3x + y < 7
   \end{cases}
   $$

3. Risolvi il sistema:

   $$
   \begin{cases}
   x + y \geq 0 \\
   x - y \leq 3
   \end{cases}
   $$

4. Risolvi il sistema:

    $$
    \begin{cases}
    2x - y < 5 \\
    x + 3y \geq -4
    \end{cases}
    $$

5. Risolvi il sistema:

    $$
    \begin{cases}
    x - y \leq 2 \\
    x + y > 6
    \end{cases}
    $$

6. Risolvi il sistema:

    $$
    \begin{cases}
    4x + y \geq 8 \\
    x - y \leq 1
    \end{cases}
    $$

---

### Sistemi di equazioni e disequazioni
1. Risolvi il sistema:

    $$
    \begin{cases}
    x + y = 3 \\
    2x - y \geq 1
    \end{cases}
    $$

2. Risolvi il sistema:

    $$
    \begin{cases}
    x - y > 0 \\
    x + y = 5
    \end{cases}
    $$

3. Risolvi il sistema:

    $$
    \begin{cases}
    2x + y \leq 6 \\
    x - y = 2
    \end{cases}
    $$

---

### Equazioni Quadratiche
1. Risolvi il sistema:

    $$
    \begin{cases}
    x^2 + y = 4 \\
    x + y = 3
    \end{cases}
    $$

2. Risolvi il sistema:

    $$
    \begin{cases}
    y = x^2 + 2x \\
    y = -x + 3
    \end{cases}
    $$

3. Risolvi il sistema:

    $$
    \begin{cases}
    x^2 + y^2 = 25 \\
    x + y = 7
    \end{cases}
    $$

4. Risolvi il sistema:

    $$
    \begin{cases}
    x^2 - 4y = 3 \\
    2x + y = 5
    \end{cases}
    $$

5. Risolvi il sistema:

    $$
    \begin{cases}
    y = x^2 - 3x + 2 \\
    y = 2x - 1
    \end{cases}
    $$

### Disequazioni Quadratiche
1. Risolvi il sistema:

    $$
    \begin{cases}
    x^2 + y > 4 \\
    x + y \leq 3
    \end{cases}
    $$

2. Risolvi il sistema:

    $$
    \begin{cases}
    y > x^2 + 2x \\
    y \leq -x + 3
    \end{cases}
    $$

3. Risolvi il sistema:

    $$
    \begin{cases}
    x^2 + y^2 \leq 25 \\
    x + y > 7
    \end{cases}
    $$

4. Risolvi il sistema:

    $$
    \begin{cases}
    x^2 - 4y > 3 \\
    2x + y \leq 5
    \end{cases}
    $$

5. Risolvi il sistema:

    $$
    \begin{cases}
    y \leq x^2 - 3x + 2 \\
    y \geq 2x - 1
    \end{cases}
   $$


### Problemi vari
0. Risolvi il sistema:

   $$
   \begin{cases}
   \frac{x}{y} + 2 = 3 \\
   x - \sqrt{y} = 2
   \end{cases}
   $$

1. Risolvi il sistema:

   $$
   \begin{cases}
   \log(x) + y = 2 \\
   x^y = 4
   \end{cases}
   $$

2. Risolvi il sistema:

   $$
   \begin{cases}
   x^3 + y^2 = 10 \\
   x - y = 2
   \end{cases}
   $$

3. Risolvi il sistema:

   $$
   \begin{cases}
   x^2 + y^3 = 9 \\
   x + \sqrt{y} = 3
   \end{cases}
   $$

4. Risolvi il sistema:

   $$
   \begin{cases}
   \frac{x}{y} = 2 \\
   x^2 - y^2 = 16
   \end{cases}
   $$

5. Risolvi il sistema:

   $$
   \begin{cases}
   \frac{1}{x} + \frac{1}{y} = 1 \\
   x - y = 2
   \end{cases}
   $$

6. Risolvi il sistema:

   $$
   \begin{cases}
   e^x + y = 5 \\
   x + \ln(y) = 2
   \end{cases}
   $$

7. Risolvi il sistema:

   $$
   \begin{cases}
   x^3 - y = 8 \\
   y + \sqrt{x} = 10
   \end{cases}
   $$

8. Risolvi il sistema:

   $$
   \begin{cases}
   \log(x) + y^2 = 4 \\
   x + y = 3
   \end{cases}
   $$

9. Risolvi il sistema:

    $$
    \begin{cases}
    x^2 - y = 3 \\
    \frac{x + y}{x - y} = 2
    \end{cases}
    $$

10. Risolvi il sistema:

    $$
    \begin{cases}
    2^x + y = 10 \\
    x + \log_2(y) = 3
    \end{cases}
    $$

11. Risolvi il sistema:

    $$
    \begin{cases}
    x^2 + y^2 = 25 \\
    x^3 - y = 15
    \end{cases}
    $$

12. Risolvi il sistema:

    $$
    \begin{cases}
    x + \frac{1}{y} = 4 \\
    \frac{x}{y} + 2 = 5
    \end{cases}
    $$

13. Risolvi il sistema:

    $$
    \begin{cases}
    x^4 - y^2 = 16 \\
    x + y = 6
    \end{cases}
    $$

14. Risolvi il sistema:

    $$
    \begin{cases}
    \sqrt{x} + y^3 = 10 \\
    x + \frac{1}{y} = 4
    \end{cases}
    $$

15. Risolvi il sistema:

    $$
    \begin{cases}
    e^x - y = 2 \\
    x + \ln(y) = 1
    \end{cases}
    $$

16. Risolvi il sistema:

    $$
    \begin{cases}
    \frac{1}{x} + y^2 = 5 \\
    x^2 + y = 6
    \end{cases}
    $$

17. Risolvi il sistema:

    $$
    \begin{cases}
    x^2 + y^3 = 12 \\
    \ln(x) + y = 2
    \end{cases}
    $$

18. Risolvi il sistema:

    $$
    \begin{cases}
    x + y = 7 \\
    x^2 + y^2 = 49
    \end{cases}
    $$

19. Risolvi il sistema:

    $$
    \begin{cases}
    x - \sqrt{y} = 3 \\
    x^2 + y = 18
    \end{cases}
    $$

20. Risolvi il sistema:

    $$
    \begin{cases}
    3^x + y = 10 \\
    x + \log_3(y) = 2
    \end{cases}
    $$

21. Risolvi il sistema:

    $$
    \begin{cases}
    x^3 + y^2 = 20 \\
    x + y = 6
    \end{cases}
    $$

22. Risolvi il sistema:

    $$
    \begin{cases}
    \frac{x}{y} = 3 \\
    x^2 + y^2 = 25
    \end{cases}
    $$

23. Risolvi il sistema:

    $$
    \begin{cases}
    x^2 - y = 4 \\
    x + y^2 = 10
    \end{cases}
    $$

---


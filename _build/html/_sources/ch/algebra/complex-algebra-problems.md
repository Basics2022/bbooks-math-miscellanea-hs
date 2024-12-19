(math-hs:algebra:complex:problems)=
# Problemi

(math-hs:algebra:complex:problems:def)=
## Definizioni
**todo**

(math-hs:algebra:complex:problems:complex-plane)=
## Rappresentazione dei numeri complessi nel piano complesso (Argand-Gauss)

```{exercise}
1. Rappresenta il numero complesso $ z = 3 + 4i $ nel piano complesso e calcola il modulo e l'argomento.
2. Converti il numero complesso $ z = 1 - i $ in forma polare.
3. Determina la forma cartesiana di $ z = 4 \text{cis}\frac{\pi}{3} $.
4. Calcola il prodotto di $ z_1 = 2 \text{cis}\frac{\pi}{4} $ e $ z_2 = 3 \text{cis}\frac{\pi}{6} $, e rappresenta il risultato in forma polare.
5. Trova le radici cubiche di $ z = 8 $ e rappresentale nel piano complesso.
```
<!--
**todo**
Enti geometrici nel piano complesso...
- rette, semipiano,..., circonferenze,...
-->

(math-hs:algebra:complex:problems:operations)=
## Operazioni con i numeri complessi
(math-hs:algebra:complex:problems:operations:cc:re-im)=
````{exercise} Parte reale e parte immaginaria
Dimostrare le relazioni {eq}`complex:cc:re-im`

$$\begin{aligned}
  \text{re}\{z\} & = \frac{z + z^*}{2} \\
  \text{im}\{z\} & = \frac{z - z^*}{2i} \\
\end{aligned}$$

```{dropdown} Soluzione
Dato il numero $z = \text{re}\{z\} + i \text{im}\{z\} = x + i y$,

$$\begin{aligned}
 \frac{z + z^*}{2}  & = \frac{x+iy+x-iy}{2}  = \frac{2x}{2} = x = \text{re}\{z\} \\
 \frac{z - z^*}{2i} & = \frac{x+iy-x+iy}{2i} = \frac{i2y}{2i} = y = \text{im}\{z\}
\end{aligned}$$

```

````

(math-hs:algebra:complex:fund-thm)=
## Teorema fondamentale dell'algebra

(math-hs:algebra:complex:fund-thm:ex)=
```{exercise}
1. Dimostra che $z^2 + 1 = 0$ ha due soluzioni complesse e determinane i valori.
2. Risolvi $z^3 - 8 = 0$ e rappresenta le radici nel piano complesso.
3. Determina tutte le radici quarte di $z = 16$ in forma polare.
4. Trova i valori di $z$ tali che $z^4 = 81 \text{cis}\frac{\pi}{2}$.
5. Verifica che il prodotto delle radici di $z^3 + 27 = 0$ è uguale a $-27$.
6. Risolvi $z^5 + z^3 - z + 1 = 0$ per $z \in \mathbb{C}$.
7. Dimostra che $z = i$ è una radice di $z^3 + z^2 + z + 1 = 0$ e trova le altre radici.
8. Calcola le soluzioni di $z^6 - 64 = 0$ in forma esponenziale.
9. Trova le radici di $z^4 + 4z^2 + 16 = 0$ e verifica che soddisfano l'equazione.
10. Determina la radice principale di $z = \sqrt[3]{-8}$ in forma polare.
```

(math-hs:algebra:complex:problems:geometry-2d)=
## Numeri complessi e geometria nel piano euclideo
```{exercise}
:label: math-hs:algebra:complex:problems:geometry-2d:ex

1. Disegna il punto $z = 2 + 3i$ e calcola la distanza dall'origine.
2. Trova il punto medio del segmento che collega $z_1 = 1 + 2i$ e $z_2 = 3 + 4i$.
3. Verifica che i punti $z_1 = 0$, $z_2 = 3 + 4i$, e $z_3 = 6 + 0i$ formano un triangolo rettangolo.
4. Trova l'equazione del cerchio con centro $z = 2 + i$ e raggio $3$.
5. Dimostra che la distanza tra $z_1 = 2 + i$ e $z_2 = -1 + 2i$ è $\sqrt{10}$.
6. Rappresenta graficamente la regione definita da $|z - 1| < 2$.
7. Determina il luogo geometrico di $z$ per cui $|z - 2i| = |z + 2i|$.
8. Disegna e descrivi il luogo geometrico definito da $\text{Re}(z) = 2$.
9. Trova il punto $z$ nel piano complesso che soddisfa $|z - 1| = 3$ e $\text{Im}(z) > 0$.
10. Dimostra che i punti $z_1 = 1 + i$, $z_2 = -1 - i$, e $z_3 = 0$ sono collineari.
```

(math-hs:algebra:complex:problems:equations)=
## Equazioni e disequazioni con i numeri complessi

(math-hs:algebra:complex:problems:equations:eq)=
### Equazioni
```{exercise} Equazioni

Risolvere le seguenti equazioni

1. Risolvi $|z| = 2$ e rappresenta graficamente le soluzioni.
2. Trova i numeri complessi $z$ che soddisfano $z + \overline{z} = 2$.
3. Risolvi $z^2 - 2z + 5 = 0$ e calcola il modulo delle soluzioni.
4. Risolvi $|z - 3 + 1| = 2$ e rappresenta graficamente le soluzioni.
5. Trova i valori di $z$ per cui $z^3 = 27$.
6. Risolvi $(z-1)^4 + 16 = 0$ e rappresenta graficamente le soluzioni nel piano complesso.
7. Risolvi $|z - 2| = |z + 1|$ e descrivi il luogo geometrico delle soluzioni.
8. Trova le soluzioni di $z^5 - 32 = 0$ e rappresentale in forma polare.
9. Determina i numeri complessi $z$ per cui $|z|^2 + |z - 2|^2 = 8$.
10. Risolvi $|z + i| = 3$ per $z \in \mathbb{C}$.
11. $z^2 + 4 = 0$
12. $z^2 - 2z + 5 = 0$
13. $z^3 + 8 = 0$
14. $|z-2-i| = 2$
15. $|z-2-i| = |z-1|$
16. $z + \bar{z} = 1$
<!--
17. $\begin{cases} z + \bar{z} = 6 \\ |z| = 5 \end{cases}$
-->
```

(math-hs:algebra:complex:problems:equations:ineq)=
### Disequazioni

```{exercise} Disequazioni

**1.** Trova i numeri complessi $z$ che soddisfano $|z| < 3$.

**2.** Determina $z$ per cui $|z - 2| \geq 4$.

**3.** Risolvi $|z + i| \leq 2$.

**4.** Trova $z$ tali che $\text{Re}(z) > \text{Im}(z)$.

**5.** Risolvi $|z - 1| > |z + 1|$.

**6.** Determina il luogo geometrico di $z$ per cui $|z| - |z-2| \leq 1$.

**7.** Risolvi $\text{Re}(z) + \text{Im}(z) \leq 2$.

**8.** Trova $z$ tali che $|z| + |z - 1| \leq 5$.

**9.** Trova $z$ tali che $|z+i| + |z - 1| \leq 5$.

**10.** Risolvi $|z - i| \geq |z + 2|$.

**11.** Determina il luogo geometrico di $z$ per cui $|z| - |z-2| \leq 3$.
```



(math-hs:algebra:complex:problems:equations:sys)=
### Sistemi di equazioni

```{exercise} Sistemi di equazioni

1. Risolvi il sistema:  
   $\begin{cases} 
   z + \overline{z} = 6 \\
   |z| = 5 
   \end{cases}$

2. Trova $z_1$ e $z_2$ che soddisfano il sistema:  
   $\begin{cases} 
   |z_1| = 3 \\
   z_1 z_2 = 9 
   \end{cases}$

3. Risolvi il sistema:  
   $\begin{cases} 
   z^2 + w^2 = 5 \\
   z w = 4 
   \end{cases}$

4. Determina le soluzioni del sistema:  
   $\begin{cases} 
   |z| = 4 \\
   z + \overline{z} = 6 
   \end{cases}$

5. Risolvi il sistema:  
   $\begin{cases} 
   z^3 + w = 1 \\
   z w^3 = -1 
   \end{cases}$

6. Trova $z$ e $w$ per il sistema:  
   $\begin{cases} 
   z^2 + w^2 = 7 \\
   z + w = 3 
   \end{cases}$

7. Risolvi il sistema:  
   $\begin{cases} 
   |z| = 2 \\
   z + w = 0 
   \end{cases}$

8. Trova $z$ e $w$ che soddisfano il sistema:  
   $\begin{cases} 
   z w = 1 \\
   z - w = i 
   \end{cases}$

9. Determina le soluzioni del sistema:  
   $\begin{cases} 
   z^2 + \overline{z}^2 = 8 \\
   z \cdot \overline{z} = 9 
   \end{cases}$

10. Risolvi il sistema:  
    $\begin{cases} 
    z + w = 5 + i \\
    z \cdot w = 6 - i 
    \end{cases}$
```


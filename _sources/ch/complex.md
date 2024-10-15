```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(complex_numbers:high-school)=
# Numeri complessi

Utilità dei numeri complessi
- utilizzo in molti ambiti della matematica, della fisica e dell'ingegneria
- facile rappresentazione di funzioni armoniche, grazie all'identità di Eulero

## Definizione
I numeri complessi estendono il campo dei numeri reali, grazie all'introduzione dell'**unità immaginaria**, $i$, definita come la radice quadra di $-1$,

$$i := \sqrt{-1} \ .$$

L'insieme dei numeri complessi, indicato con $\mathbb{C}$, è l'insieme di quei numeri che possono essere scritti come 

$$z = x + i y \ ,$$

con $x, \ y \in \mathbb{R}$.

I numeri complessi formano la struttura algebrica di **campo** con le operazioni di somma e prodotto. Dati due numeri complessi $z_1 = x_1 + i y_1$, $z_2 = x_2 + i y_2$, grazie alle proprietà **todo** delle operazioni, si può scrivere

- la somma

   $$z_1 + z_2 = (x_1 + x_2) + i (y_1 + y_2) \ $$

- il prodotto,

$$\begin{aligned}
z_1 \, z_2 & = (x_1 + i y_1) (x_2 + i y_2) = \\
& = x_1 \, x_2 - y_1 \, y_2 + i ( x_1 \, y_2 + x_2 \, y_1 )
\end{aligned}$$

## Rappresentazione nel piano complesso
Ogni numero complesso $z = x + i \, y$ può essere rappresentato nel piano complesso, ... **todo**

La rappresentazione grafica suggerisce una rappresentazione alternativa, la **rappresentazione polare**, con il cambio di coordinate

$$\begin{cases}
x = r \cos \theta \\
y = r \sin \theta
\end{cases} \quad \rightarrow \quad 
z = r \cos \theta + i \ r \sin \theta \ .$$

```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```

(math-hs:algebra:complex)=
# Algebra complessa

Utilità dei numeri complessi:
- utilizzo in molti ambiti della matematica, della fisica e dell'ingegneria: soluzione ODE, soluzione PDE, teoria delle trasformate
- facile rappresentazione di funzioni armoniche, grazie all'identità di Eulero

**Argomenti**
- Definizioni e rappresentazioni
- Algebra:
  - operazioni
  - equazioni e disequazioni
  - teorema fondamentale dell'algebra

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
\begin{aligned}
z & = r \cos \theta + i \ r \sin \theta = \\
  & = r \left( \cos \theta + i \sin \theta \right) = r \, e^{i \, \theta} \ ,
\end{aligned}$$

avendo anticipato qui la **formula di Eulero** per l'esponenziale di un numero immaginario,

$$e^{i \, \theta} = \cos \theta + i \, \sin \theta \ .$$

**todo** 
- Riferimento alla formula di Eulero. Dimostrazione con serie? Cosa serve? Serie di Taylor? Crietri di convergenza delle serie?
- Riferimento alla definizione di esponenziale

**todo** Le due rappresentazioni non sono equivalenti. Mentre la rappresentazione cartesiana permette di creare una relazione biunivoca tra i numeri complessi $z = x + i \ y$ e i punti nel piano $(x, \ y)$, la rappresentazione polare assegna infiniti numeri complessi, seppur di uguale valore $r \, e^{i \theta} = r \, e^{i (\theta + n \, 2 \pi)}$, con $n \in \mathbb{Z}$ allo stesso punto nello spazio.

## Operazioni con i numeri complessi
- somma

  $$z_1 + z_2 = (x_1 + x_2) + i(y_1 + y_2)$$

- prodotto

  $$z_1 \ z_2 = r_1 \, r_2 e^{i(\theta_1 + \theta_2)}$$

- valore assoluto
  
  $$|z| = \sqrt{x^2 + y^2} = r$$

- potenza
- esponenziale
- logaritmo



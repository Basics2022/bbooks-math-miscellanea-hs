(math-hs:trigonometry)=
# Trigonometria

## Definizione delle funzioni trigonometriche e relazione fondamentale

### Seno e coseno

````{only} latex

$$
\begin{minipage}[t]{.55\textwidth}
  \vspace{0pt}
  Facendo riferimento a una circonferenza di raggio $R$, e scegliendo una semiretta di riferimento come origine per la misura degli angoli, positivi in senso orario, si possono definire le funzioni trigonometriche \textbf{seno} e \textbf{coseno}, 

  \begin{equation}
  \begin{aligned}
    \sin \theta & := \frac{\overline{PH}}{R} \\
    \cos \theta & := \frac{\overline{OH}}{R} \\
  \end{aligned}
  \end{equation}

\end{minipage}
\hspace{.05\textwidth}
\begin{minipage}[t]{.40\textwidth}
  \vspace{0pt}
  \includegraphics[width=.95\textwidth]{../../media/trigonometry-def.png}
\end{minipage}
$$

````

````{only} html
Facendo riferimento a una circonferenza di raggio $R$, e scegliendo una semiretta di riferimento come origine per la misura degli angoli, positivi in senso orario, si possono definire le funzioni trigonometriche

$$\sin \theta := \frac{\overline{PH}}{R}$$
$$\cos \theta := \frac{\overline{OH}}{R}$$

```{figure} ../media/trigonometry-def.png
```

````

### Relazione fondamentale della trignometria
Usando il teorema di Pitagora è immediato dimostrare la **relazione fondamentale della trigonometria** tra le funzioni seno e coseno di un angolo,

$$\sin^2 \theta + \cos^2 \theta = 1 \ .$$

```{admonition} Notazione.
Nell'uso delle funzioni trigonometriche, $\sin^2 x$ indica il quadrato della funzione e non la [composizione della funzione](math-hs:precalculus:real-functions:composite) con se stessa,

$$\sin^2 x = (\sin x)^2 \neq \sin( \sin x) \ .$$
```

### Altre funzioni trigonometriche
**Tangente.** $\tan \theta := \dfrac{\sin \theta}{\cos \theta} = \dfrac{\overline{PH}}{\overline{OH}} \ .$

*Cosecante, secante, cotangente.* Definizioni al limite tra l'inutile e il dannoso,

$$\begin{aligned}
  \text{cosec} \ \theta & := \frac{1}{\sin \theta} \\
  \text{sec  } \ \theta & := \frac{1}{\cos \theta} \\
  \text{cotan} \ \theta & := \frac{1}{\tan \theta} \\
\end{aligned}$$

## Angoli particolari e proprietà

```{only} latex
$$
\begin{minipage}[t]{.40\textwidth}
  \vspace{0pt}
  \textbf{Angoli particolari.}
  \begin{equation*}
  \begin{matrix}
   \theta & \cos \theta & \sin \theta & \tan \theta \\
   \hline 
   0             & 1                  & 0                  & 0                  \\
   \frac{\pi}{6} & \frac{\sqrt{3}}{2} & \frac{1}{2}        & \frac{1}{\sqrt{3}} \\
   \frac{\pi}{4} & \frac{\sqrt{2}}{2} & \frac{\sqrt{2}}{2} & 1                  \\
   \frac{\pi}{3} & \frac{1}{2}        & \frac{\sqrt{3}}{2} & \sqrt{3}           \\
   \frac{\pi}{2} & 0                  & 1                  & \rightarrow \infty \\
  \end{matrix}
  \end{equation*}
  \textbf{Proprietà.}
  \begin{equation*}
  \begin{aligned}
    \sin\left(-x\right)              & = - \sin x \\ 
    \cos\left(-x\right)              & =   \cos x \\ 
    \sin\left(x+\frac{\pi}{2}\right) & =   \cos x \\  
    \cos\left(x+\frac{\pi}{2}\right) & = - \sin x \\  
    \sin(x + \pi)                    & = - \sin x \\
    \cos(x + \pi)                    & = - \cos x \\
  \end{aligned}
  \end{equation*}
\end{minipage}
\hspace{.05\textwidth}
\begin{minipage}[t]{.55\textwidth}
  \vspace{0pt}
  \includegraphics[width=.95\textwidth]{../../media/trigonometry-particular.png}
\end{minipage}
$$
```

````{only} html
<!-- ### Angoli particolari -->
In tabella vengono riportati i valori del seno, coseno e tangente di alcuni angoli particolari $\theta \in \left[0, \frac{\pi}{2} \right]$

```{list-table}
:header-rows: 1
* - $\theta$
  - $\cos \theta$ 
  - $\sin \theta$
  - $\tan \theta$
* - $0$               
  - $1$                    
  - $0$                 
  - $0$                 
* - $\frac{\pi}{6}$  
  - $\frac{\sqrt{3}}{2}$ 
  - $\frac{1}{2}$       
  - $\frac{1}{\sqrt{3}}$                 
* - $\frac{\pi}{4}$   
  - $\frac{\sqrt{2}}{2}$  
  - $\frac{\sqrt{2}}{2}$
  - $1$
* - $\frac{\pi}{3}$ 
  - $\frac{1}{2}$
  - $\frac{\sqrt{3}}{2}$
  - $\sqrt{3}$
* - $\frac{\pi}{2}$ 
  - $0$                   
  - $1$       
  - $\rightarrow \infty$
```

Con le proprietà

$$\begin{aligned}
  \sin x & = -   \sin (-x) = - \ \ \cos \left( x + \frac{\pi}{2} \right) = -   \sin( x + \pi) \\
  \cos x & = \ \ \cos (-x) = - \ \ \sin \left( x + \frac{\pi}{2} \right) = -   \cos( x + \pi) \\
\end{aligned}$$

è possibile calcolare il valore delle funzioni trigonometriche di angoli particolari nei quattro quadranti. 

```{figure} ../media/trigonometry-particular.png
```

````

## Formule di somma e sottrazione
Valgono le seguenti formule per il coseno e il seno della somma e della differenza di angoli,

$$\begin{aligned}
  \cos ( x \mp y ) & = \cos x \ \cos y \pm \sin x \ \sin y \\
  \sin ( x \mp y ) & = \sin x \ \cos y \mp \cos x \ \sin y \\
\end{aligned}$$


Per completezza, come utile esercizio di geometria sulla similitudine dei triangoli, e per familiarizzare con le funzioni armoniche, si fornisce la dimostrazione della formula del coseno della somma.

````{dropdown} Dimostrazione di $\ \cos ( x + y ) = \cos x \ \cos y - \sin x \ \sin y$

```{figure} ../media/trigonometry-sum.png
```

Partendo dall'interpretazione geometrica del coseno di $\alpha + \beta$,

$$\cos ( \alpha + \beta ) = \frac{\overline{OF}}{R}$$

è necessario esprimere la lunghezza del segmento $OF$ come multiplo del raggio $R$.

<!-- $$\sin ( \alpha + \beta ) = \frac{BF}{R}$$ -->

Usando la similitudine dei triangoli $OFE$, $OCA$, e riconoscendo il coseno dell'angolo $\alpha$,

$$\overline{OF} = \frac{\overline{OC}}{\overline{OA}} \overline{OE} = \cos \alpha \ \overline{OE} \ .$$

La lunghezza del segmento $OE$ può essere scritta come differenza della lunghezza di $OD$ e quella di $ED$; queste ultime due lunghezze possono essere espresse come frazioni del raggio della circonferenza $R = \overline{OB}$, grazie all'uso delle funzioni trigonometriche e alla similitudine dei triangoli ($\overline{ED} = \sin \alpha \, \overline{BE} = \sin \alpha \, \frac{\overline{BD}}{\cos \alpha} = \sin \alpha \, \frac{\overline{OB} \sin \beta}{\cos \alpha}$),

$$\begin{aligned}
\overline{OE} = \overline{OD} - \overline{ED} & = \overline{OB} \cos \beta - \overline{OB} \sin \beta \frac{\sin \alpha}{\cos \alpha} = \\
& = R \left( \cos \beta - \overline{OB} \sin \beta \frac{\sin \alpha}{\cos \alpha} \right)
\end{aligned}$$

Sostituendo questa espressione di $\overline{OE}$ nell'espressione di $\overline{OF}$, si ottiene

$$\overline{OF} = \overline{OB} \left( \cos \alpha \cos \beta - \sin \beta \sin \alpha  \right)$$

dalla quale si ottiene la relazione desiderata,

$$\cos (\alpha + \beta) = \cos \alpha \cos \beta - \sin \beta \sin \alpha \ .$$
````

## Werner

$$\begin{aligned}
  \cos x \cos y & = \dfrac{1}{2} \left[ \cos( x - y ) + \cos ( x + y ) \right] \\
  \sin x \sin y & = \dfrac{1}{2} \left[ \cos( x - y ) - \cos ( x + y ) \right] \\
  \sin x \cos y & = \dfrac{1}{2} \left[ \sin( x - y ) + \sin ( x + y ) \right] \\
\end{aligned}$$

```{dropdown} Dimostrazione di $\ \cos x \cos y = \dfrac{1}{2} \left[ \cos( x - y ) + \cos ( x + y ) \right]$

Usando le formule del coseno della somma e della sottrazione di una coppia di angoli,

$$\begin{aligned}
  \cos( x - y ) & = \cos x \cos y + \sin x \sin y \\
  \cos( x + y ) & = \cos x \cos y - \sin x \sin y \\
\end{aligned}$$

sommando termine a termine si ottiene

$$\cos (x - y) + \cos( x + y ) = 2 \cos x \cos y \ ,$$

dalla quale risulta evidente la relazione desiderata.
```

## Prostaferesi

Definendo $p = x-y$ e $q = x+y$ nelle formule di Werner, è immediato ricavare

$$\begin{aligned}
  \cos p + \cos q & = 2 \cos\left(\frac{p+q}{2} \right) \cos\left(\frac{q-p}{2} \right) \\
  \cos p - \cos q & = 2 \sin\left(\frac{p+q}{2} \right) \sin\left(\frac{q-p}{2} \right) \\
  \sin p + \sin q & = 2 \sin\left(\frac{p+q}{2} \right) \cos\left(\frac{q-p}{2} \right) \\
\end{aligned}$$


```{dropdown} Dimostrazione di $\ \cos p + \cos q = 2 \cos\left(\frac{p+q}{2} \right) \cos\left(\frac{q-p}{2} \right)$

Usando la formula di Werner per il prodotto dei coseni,

$$\cos x \cos y = \frac{1}{2} \left[ \cos(x-y) + \cos(x+y) \right]$$

e definendo

$$\begin{cases}
  x-y = p \\
  x+y = q \\
\end{cases}
\qquad \rightarrow \qquad
\begin{cases}
  2 x = p + q \\
  2 y = q - p \\
\end{cases}
\qquad \rightarrow \qquad
\begin{cases}
  x = \frac{ p + q }{2} \\
  y = \frac{ q - p }{2} \\
\end{cases}
$$

si ottiene

$$\cos \frac{p+q}{2} \cos\frac{q-p}{2} = \frac{1}{2} \left( \cos p + \cos q \right) \ ,$$

dalla quale è evidente la relazione desiderata.

```







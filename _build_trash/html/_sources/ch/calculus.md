<!--
```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
-->

(math-hs:calculus)=
# Introduzione al calcolo

Il calcolo si occupa della variazione continua di grandezze matematiche che possono essere rappresentate come funzioni di variabili indipendenti.

```{dropdown} Argomenti del capitolo
:open:
In questa sezione vengono inizialmente introdotti i concetti fondamentali dell'analisi per le funzioni reali di una variabile reale, $f: \mathbb{R} \rightarrow \mathbb{R}$ e successivamente vengono estesi al calcolo per funzioni reali di più variabili $f: \mathbb{R}^n \rightarrow \mathbb{R}$ e al calcolo vettoriale su spazi euclidei per campi $f: E^n \rightarrow V$.

[**Introduzione all'analisi**](infinitesimal-calculus:analysis). Viene richiamato il concetto di **funzione** di variabile reale a valore reale, $f: D \in \mathbb{R} \rightarrow \mathbb{R}$, e la sua rappresentazione grafica in un piano cartesiano. <br>
Viene introdotto il concetto di **limite** per funzioni reali e viene usato per definire le **funzioni continue**. Vengono quindi presentati alcuni teoremi sulle funzioni continue e sui limiti che ne permettono il calcolo. Vengono presentate le forme indeterminate al finito e all'infinito, e calcolati i *limiti fondamentali*.

[**Calcolo differenziale**](infinitesimal-calculus:derivatives). Usando i concetti di limite della sezione precedente, viene introdotto il concetto di **derivata** di una funzione reale, e viene data una sua interpretazione geometrica, legata alla retta tangente al grafico della funzione. Seguono alcune proprietà e teoremi sulle derivate che permettono di valutare le *derivate fondamentali* e combinare questi risultati per il calcolo della derivata di una funzione qualsiasi. Infine viene introdotto il concetto di derivate di ordine superiore, e vengono mostrate alcune applicazioni: ricerca di punti di estremo locale e di flesso nello studio di funzione, ottimizzazione, approssimazione locale tramite sviluppi in serie polinomiali

[**Calcolo integrale**](infinitesimal-calculus:integrals). Viene data la definizione di **integrale di Riemann** e una sua interpretazione geometrica, legata all'area sottesa dal grafico della funzione. Seguono alcune proprietà degli integrali che permettono di definire l'integrale definito e indefinito, e la primitiva di una funzione. Viene presentato il **teorema fondamentale del calcolo infinitesimale**, che permette di riconoscere l'operazione di integrazione come inversa dell'integrazione. Usando questo risultato, vengono valutati gli *integrali fondamentali*; poche regole di integrazione permettono poi di calcolare l'integrale di funzioni generiche. Infine vengono mostrate alcune applicazioni: ... **todo**

[**Equazioni differenziali ordinarie**](ode-hs). Vengono introdotte le equazioni differenziali ordinarie, e si cerca di trasmettere la rilevanza di queste in molti ambiti scientifici. Vengono definiti i principali problemi che coinvolgono le equazioni differenziali, e vengono presentati i metodi risolutivi di alcuni tipi particolari di ODE: le equazioni differenziali lineari a coefficienti costanti le equazioni differenziali separabili.

[**Introduzione al calcolo multi-variabile**](multivariable-calculus). Gli strumenti del calcolo introdotti nelle sezioni precedenti per funzioni di variabile reale a valore reale $f: \mathbb{R} \rightarrow \mathbb{R}$ vengono qui estesi alle funzioni di più variabili reali a variabile reale, $g: \mathbb{R}^n \rightarrow \mathbb{R}$.

[**Introduzione al calcolo vettoriale su spazi euclidei**](vector-calculus). Gli strumenti del calcolo sviluppati per le funzioni di più variabili vengono qui estesi per le funzioni scalari e vettoriali definite su spazi euclidei.

```

<!--
```{dropdown} Dipendenze
```

```{dropdown}
```
-->

```{dropdown} Breve storia dello sviluppo del calcolo
Gli strumenti matematici del calcolo vengono sviluppati e formalizzati tra la fine del XVII secolo e il XIX secolo, come strumenti necessari alla costruzione delle teorie fisiche della meccanica razionale di Newton prima, e della meccanica dei mezzi continui (fluidi e solidi) poi.

Newton introduce i concetti fondamentali calcolo differenziale e integrale delle funzioni di una variabile, qui chiamato [calcolo infinitesimale](infinitesimal-calculus:analysis), necessari allo sviluppo della meccanica: nella meccanica di Newton, il moto di un sistema meccanico è descritto dai suoi gradi di libertà in funzione della variabile tempo, e le equazioni che ne governano il moto sono equazioni differenziali ordinarie. Il lavoro di Newton, e il lavoro contemporaneo di Leibniz, parte dalla [geometria analitica](geometry:analytic), che permette di associare una curva a una funzione, e sviluppa la risposta ad alcuni problemi riguardanti la geometria delle curve, come il calcolo della tangente a una curva, la ricerca dei minimi e dei massimi di una funzione o il calcolo delle aree.

I risultati del calcolo differenziale e integrale vengono connessi tra di loro dal **teorema fondamentale del calcolo** (**todo** aggiungere riferimento).

A Eulero si deve una prima raccolta degli strumenti utili a un'introduzione al calcolo, come discusso nel capitolo sul [precalcolo](math-hs:precalculus).

Al lavoro di Johann e Jakob Bernoulli e ancora Eulero si deve l'ideazione del calcolo delle variazioni (**todo** *aggiungere una sezione?*), ampiamente sviluppato da **Lagrange** nella sua riformulazione geometrica della meccanica.

Nel corso del XVIII e del XIX secolo, il calcolo infinitesimale si sviluppo come lo strumento matematico indispensabile nei problemi di fisica: Lagrange introduce il concetto di potenziale in meccanica, mentre Green sviluppa gli strumenti del calcolo infinitesimale per funzioni di più variabili (teorema di Green, estensione del rotore allo spazio 3-dimensionale, metodo della funzione di Green) nel suo "Saggio sull'Applicazione della Analisi Matematica alle Teorie dell'Elettricità e del Magnetismo" del 1828, testo "in anticipo di 30 anni rispetto al suo tempo" secondo Einstein, ma rimasto a lungo trascurato. 

Nel XIX secolo Gauss contribuì allo sviluppo del calcolo multivariabile applicato allo studio delle curve e delle superfici, e alla teoria matematica dell'elettromagnetismo.

Nel XIX secolo il calcolo infinitesimale si impose come strumento matematico fondamentale in diversi ambiti:
- meccanica dei solidi e dei fluidi:
- diffusione del calore per conduzione
- elettromagnetismo

Cauchy diede importanti contributi allo sviluppo del calcolo complesso, successivamente sviluppato da Riemann.

Cauchy contribuì inoltre alla definizione rigorosa dei fondamenti del calcolo, portata avanti da Weierstrass nella seconda metà del XIX secolo con la definizione di limite e continuità di una funzione.
```


<!--

**Brev(issima) storia del calcolo.**
- Precursori: ...
- Prima formalizzazione: Newton, sviluppo del calcolo infinitesimale come strumento matematico necessario alla sua trattazione della [meccanica]() razionale, presentata nei *Principia Mathematica*, 1687; Leibniz *Nova Methodus pro Maximis et Minimis*, 1684
- Sviluppo rigoroso del calcolo infinitesimale, del calcolo multivariabile, dell'analisi complessa, e del calcolo su spazi e varietà
  - Cauchy (1789-1857)
  - Weierstrass (1815-1897)
  - Riemann (1826-1866)
  - ...

-->







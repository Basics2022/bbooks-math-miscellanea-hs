(multivariable-calculus)=
# Introduzione al calcolo multi-variabile

Questo capitolo è un'introduzione al calcolo per funzioni di più variabili reali a valore reale, $f: A \subset \mathbb{R}^n \rightarrow \mathbb{R}$, estendendo gli strumenti del calcolo introdotti per funzioni a una variabile a funzioni di più variabili,

$$f(x_1, x_2, \dots, x_n) \ .$$

**Contenuti.** Questo capitolo introduce il calcolo multivariabile, seguendo lo stesso approccio adottato per l'introduzione al calcolo infinitesimale, ma ponendo l'attenzione alla discussione sulla maggior complessità dei casi e delle condizioni che emergono in un contesto multidimensionale.
Inizialmente, viene definito il concetto di [limite](multivariable-calculus:limit) per funzioni di più variabili, viene utilizzato per definire le [funzioni continue](multivariable-calculus:continuity) e caratterizzare i casi "patologici" di discontinuità.
Successivamente, l'operazione di limite viene utilizzata per introdurre l'operazione di [derivazione](multivariable-calculus:derivatives), che consente di ottenere informazioni sul comportamento locale di una funzione: vengono introdotte le derivate parziali e il concetto di differenziale. Vengono poi discusse le derivate di ordine superiore, e presentata l'approssimazione in serie polinomiale di una funzione nell'intorno di un punto.
Infine viene introdotta l'operazione di [integrazione](multivariable-calculus:integrals) su domini di dimensione diversa, da $1$ a $n$.

Senza nessuna pretesa di una discussione completa nei dettagli, questo capitolo ha come obiettivo quello di fornire gli strumenti fondamentali per esplorare gli ambiti in cui compaiono le funzioni di più variabili. **todo** *in maniera autonoma, matura, con il dettaglio necessario per una comprensione più intima della materia, "sblocccando" la possibilità di comprendere esempi e lanciarsi in semplici applicazioni, che aiutino l'apprendimento*

Il calcolo multi-variabile consente di introdurre il [calcolo vettoriale](vector-calculus), presentato nel capitolo successivo per spazi euclidei.

**todo**
- collegamento a funzioni a più variabili
- collegamento a calcolo per funzioni a una variabile

**Esempi e applicazioni.** Il calcolo multivariabile è uno strumento indispensabile in molti ambiti. Così, ad esempio:
- in [**meccanica**](https://basics2022.github.io/bbooks-physics-hs/ch/mechanics.html) la distribuzione di alcune grandezze fisiche nello spazio fisico può essere rappresentata come funzione delle coordinate che descrivono lo spazio; es. la distribuzione di massa continua in un corpo può essere rappresentata dalla densità $\rho(x,y,z)$, la temperatura in una stanza $T(x,y,z)$, la quota del terreno in una regione $z(x,y)$,...; così, gli strumenti del calcolo multivariabile consento di calcolare le proprietà di [inerzia](https://basics2022.github.io/bbooks-physics-hs/ch/mechanics/inertia.html) di un corpo con distribuzione di massa nota
- la [formulazione di Gibbs](https://basics2022.github.io/bbooks-physics-hs/ch/thermodynamics/principles-gibbs-phase-rule.html) della [**termodinamica classica**](https://basics2022.github.io/bbooks-physics-hs/ch/thermodynamics/foundation.html), consiste in un modello matematico costruito con gli strumenti del calcolo multivariabile, nel quale lo stato termodinamico di un sistema può essere espresso in funzione di un numero limitato di variabili indipendenti; così, ad esempio, in molte condizioni lo stato di un gas può essere completamente determinato dai valori della temperatura e della pressione: dati i valori di queste due grandezze, tutte le altre grandezze fisiche (come la densità, l'energia interna, l'entropia specifica,...) possono essere rappresentate come funzioni $\rho(P,T)$, $e(P,T)$, $s(P,T)$,...
- in **economia** **todo** ...
- in ogni ambito in cui viene svolta un'attività di **ottimizzazione** su grandezze che possono essere rappresentate da funzioni algebriche di più variabili:
  - attività di approssimazione/regressione/stima: ricerca dei parametri di un modello che rendono minimo l'errore
  - controllo ottimo: ricerca dei parametri di un controllore che rendono minimo l'errore
  - ...
  - attività di apprendimento di un sistema di AI: ricerca dei parametri di un modello che rendono minimo l'errore (*come attività di approssimazione, per regressione e/o classificazione*)
  - ...

<!--
I concetti di limite, derivata e integrale introdotti per le funzioni reali di variabile reale, $f: D \subset \mathbb{R} \rightarrow \mathbb{R}$ nella sezione del calcolo infinitesimale, vengono qui estesi alle funzoni a valore reale di più variabili, $f: D \subset \mathbb{R}^n \rightarrow \mathbb{R}$.

Gli strumenti del calcolo multi-variabile vengono successivamente utilizzati per il calcolo vettoriale.

Le funzioni e il calcolo multi-variabile trovano la loro applicazione in molti ambiti, tra i quali:
- la **formulazione di Gibbs della termodinamica classica** **todo** *link*
- l'**ottimizzazione** **todo** *link* e le molte applicazioni che coinvolgono un'ottimizzazione di funzioni continue e differenziabili come:
  - l'approssimazione con metodi di massima somiglianza, MLE, che prevedono la minimizzazione di una funzione di errore
  - la programmazione ottima
  - il controllo ottimo
  - ...
-->


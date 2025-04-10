<!--
```{article-info}
:author: basics
:date: "{sub-ref}`today`"
:read-time: "{sub-ref}`wordcount-minutes` min read"
```
-->

(math-hs:precalculus)=
# Introduzione al pre-calcolo

Nel gran calderone del pre-calcolo finiscono qui tutti gli argomenti propedeutici allo studio del [calcolo](math-hs:calculus), seguendo quanto fatto da **Eulero** - ovviamente come Eulero, ma peggio - nel 1748 nel suo **"Introductio in analysin infinitorum"** {cite}`euler1748introductio1,euler1748introductio2`, pensato come una raccolta di concetti e metodi di analisi e geometria analitica in preparazione al calcolo differenziale e integrale.

```{admonition} Leonhard Euler (1707-1783)
:class: dropdown

Eulero bla bla

```

Senza fare uso di nessun concetto di calcolo differenziale o integrale, nel primo volume dell'opera Eulero fornisce alcuni **fondamenti dell'analisi** e delle **serie infinite**; nel secondo volume Eulero applica i risultati del primo volume allo studio delle **curve** e delle **superfici** nel piano e nello spazio.

```{list-table}
:header-rows: 0
* - ![](../media/euler-introductio-1.png)
  - ![](../media/euler-introductio-2.png)
  - ![](../media/euler-introductio-3.png)
```

```{dropdown} Argomenti del capitolo
:open:

[**Funzioni reali a variabile reale**, $f: D \subseteq \mathbb{R} \rightarrow \mathbb{R}$](math-hs:precalculus:real-functions) (Introductio vol.1 cap.1-3)*. Riprendendo la [definizione di funzione](math-hs:fun), vengono definite le funzioni reali a valore reale $f: D \subseteq \mathbb{R} \rightarrow \mathbb{R}$ che saranno oggetto di studio del calcolo. Il [grafico](math-hs:precalculus:real-functions:plot) di una funzione in un piano cartesiano viene usato per mostrare alcune [caratteristiche](math-hs:precalculus:real-functions:types) che può avere una funzione (crescente/decrescente, pari/dispari,...). Infine viene discussa l'[invertibilità di funzioni](math-hs:precalculus:real-functions:inverse).

[**Successioni e serie infinite**](math-hs:series) *(Introductio vol.1 cap.4)*. Vengono presentati alcuni risultati di convergenza sulle successioni e le serie infinite. Questi risultati sono utili nella formulazione dei fondamenti dell'analisi (*saranno trattati qui? Probabilmente no*), nella [definizione della funzione esponenziale](math-hs:exp:def), e in matematica discreta (come ad esempio nei metodi numerici).

[**Funzioni esponenziale con base $e$ e logaritmo naturale**](math-hs:exp-log) *(Introductio vol.1 cap.6-7)*. Viene introdotta la funzione esponenziale $e^x$. che ricopre un ruolo **fondamentale** nel calcolo, come apprezzabile nei capitoli su [*derivate*](infinitesimal-calculus:derivatives), [*integrali*](infinitesimal-calculus:integrals) e [*equazioni differenziali*](ode-hs). 
Viene introdotta anche la sua funzione inversa $\ln x$, definita come il logaritmo con base $e$.

[**Funzioni trigonometriche**](math-hs:trigonometry) *(Introductio  vol.1 cap.8)*. Vengono introdotte le funzioni trigonometriche, partendo dalla geometria di una circonferenza, dove l'argomento di tali funzioni sono angoli. Viene presentata la relazione fondamentale della trigonometria e le regole per la somma e la differenza, e regole ricavate da queste.

[**Fattorizzazione di polinomi**](math-hs:precalculus:polynomials) *(Introduction vol.* **XXX** *cap.* **todo** *)*. Vengono collezionati alcuni risultati utili sui polinomi che possono essere utili in seguito, come ad esempio il teorema fondamentale dell'algebra per la fattorizzazione dei polinomi, e il teorema binomiale per le potenze di binomi.

[**Funzioni a più variabili**](math-hs:precalculus:multivariable-real-fun) (*Introductio vol.1 cap.5*). **todo**

[**Algebra sui numeri complessi**](math-hs:algebra:complex) *(Introduction vol.* **XXX** *cap.* **todo** *)*.

```

<!--
```{dropdown} Approccio
:open:

...funzioni reali, invertibili,...

...serie e successioni...*non perderci troppo tempo*

...funzioni a più variabili: compaiono in molti ambiti, come geometria, ottimizzazione,...

...esponenziale: sezione utile a capire da dove arrivano tutte le **"proprietà magiche"** della funzione $e^x$

...funzioni trigonometriche: funzioni che compaiono in geometria e in molti altri ambiti (ODE**(!)**,...), essendo intimamente collegate alla funzione esponenziale, come mostrato nella sezione sull'algebra dei numeri complessi con l'identità di Eulero, $e^{i x} = \cos x + i \, \sin x$.

...algebra complessa: i numeri complessi risultano uno strumento matematico fondamentale in molti ambiti; l'uso dei numeri complessi invece della controparte reale, può semplificare spesso gli sviluppi algebrici, fornendo una trattazione sintetica e più omogenea

**todo**

```
-->

---

```{bibliography}
:style: unsrt
:filter: docname in docnames
```



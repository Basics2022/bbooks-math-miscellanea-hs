(geometry:analytic:2d:conics)=
# Coniche nel piano
- Sezioni di un cono
- Definibili tramite le distanze dei loro punti da punti (centro o fuochi) e rette caratteristiche (direttrici)
- Espressioni usando coordinate cartesiane e polari
- Proprietà "ottiche"
- Applicazioni nella teoria della gravitazione di Newton 

## Circonferenza

 **Definizione.** Una circonferenza è il luogo dei punti equidistanti da un punto $C$ dato, detto centro della criconferenza. La distanza tra i punti del circonferenza e il centro viene definito raggio della circonferenza.

$$|P - C| = R$$

**Equazione in coordinate cartesiane.** Per ricavare l'equazione di una criconferenza in coordinate cartesiane, si usa la formula per il calcolo della distanza tra punti. La condizione che identifica le coordinate cartesiane $(x,y)$ dei punti di una circonferenza di raggio $R$ centrata in $C:(x_C, y_C)$ è

$$R^2 = |P-C|^2 = (x-x_C)^2 + (y-y_C)^2 \ ,$$

che può essere riscritta come

$$x^2 - 2 x_C \, x + x_C^2 + y^2 - 2 x_C \, y + y_C^2 - R^2 = 0 \ .$$

**Eqauzione in coordinate polari.** Usando un sistema di coordinate polari $\{r, \theta\}$ con origine nel centro della circonferenza, la condizione che identifica una criconferenza di raggio $R$ è

$$r = R$$

## Parabola

$$|P - d| = |P - F|$$

**Equazione in coordinate cartesiane.**

$$\left(y+\dfrac{d}{2}\right)^2 = x^2 + \left(y-\dfrac{d}{2}\right)^2$$

$$y^2 + d y + \dfrac{d^2}{4} = x^2 + y^2 - d y + \dfrac{d^2}{4}$$

$$y = \frac{1}{4d} x^2$$

## Ellisse

$$|P - F_1| + |P - F_2| = 2a$$

Con la scelta $F_1 \equiv (-c,0)$, $F_2 \equiv (c,0)$

$$\sqrt{(x+c)^2 + y^2} = 2a - \sqrt{(x-c)^2 + y^2}$$
$$x^2 + 2 c x + c^2 + y^2 = 4 a^2 - 4a \sqrt{(x-c)^2 + y^2} + x^2 - 2 c x + c^2 + y^2$$
$$4a \sqrt{(x-c)^2 + y^2} = 4 a^2 - 4 c x$$
$$a^2 x^2-2 a^2 c x + a^2 c^2 + a^2 y^2 = a^4 - 2 a^2 c x + c^2 x^2$$
$$(a^2 - c^2)x^2 + a^2 y^2 = a^2 ( a^2 - c^2 )$$
$$\dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} = 1$$

avendo definito $b^2 := a^2 - c^2$.


## Iperbole

$$\big| |P - F_1| - |P - F_2| \big| = 2a$$

Con la scelta $F_1 \equiv (-c,0)$, $F_2 \equiv (c,0)$

$$\sqrt{(x+c)^2 + y^2} = \mp 2a + \sqrt{(x-c)^2 + y^2}$$
$$x^2 + 2 c x + c^2 + y^2 = 4 a^2 \mp 4a \sqrt{(x-c)^2 + y^2} + x^2 - 2 c x + c^2 + y^2$$
$$\pm 4a \sqrt{(x-c)^2 + y^2} = 4 a^2 - 4 c x$$
$$a^2 x^2-2 a^2 c x + a^2 c^2 + a^2 y^2 = a^4 - 2 a^2 c x + c^2 x^2$$
$$(a^2 - c^2)x^2 + a^2 y^2 = a^2 ( a^2 - c^2 )$$
$$\dfrac{x^2}{a^2} - \dfrac{y^2}{b^2} = 1$$

avendo definito $b^2 := c^2 - a^2$.


#set text(size: 11pt)
#set page(margin: 1cm, width: 29.7cm, height: 21cm)
#columns(3)[

= Programování micro:bit v Pythonu

== 1. První program – výstup

Doplň chybějící části programu tak, aby micro:bit zobrazil text „Ahoj“, poté srdce a po 1 sekundě displej vymazal.

```python
from microbit import *

display.________("Ahoj")
display.________(Image.HEART)
sleep(________)
display.________()
```

Co dělá funkce sleep()?

== 2. Cyklus – opakování

Cyklus while True: znamená:

.....................................................................................

Doplň program tak, aby srdce blikalo každých 500 ms.

```python
from microbit import *

while ______:
    display.show(Image.HEART)
    sleep(______)
    display.________()
    sleep(______)
```
Co by se stalo, kdybychom cyklus odstranili?

.....................................................................................
#colbreak()
== 3. Proměnná

Proměnná je:

.....................................................................................

Doplň program tak, aby micro:bit počítal od 0 výše.

```python
from microbit import *

cislo = ______

while True:
    display.scroll(________(cislo))
    cislo = cislo + ______
    sleep(1000)
```

Co znamená tento řádek?

cislo = cislo + 1

..................................................................................... 
== 4. Podmínky

Podmínka if znamená:

.....................................................................................

Doplň program:

Pokud je stisknuto tlačítko A → zobraz smajlíka

Jinak → zobraz smutný obličej
```python
from microbit import *

while True:
    if button_a.____________():
        display.show(Image.________)
    else:
        display.show(Image.________)
```
 Jaký je rozdíl mezi is_pressed() a was_pressed()?

.....................................................................................   
#colbreak()
== 5. Počítadlo bodů

Dokonči program tak, aby:

tlačítko A přidalo bod

tlačítko B odečetlo bod

zobrazovalo se aktuální skóre
```python

from microbit import *

body = 0

while True:
    if button_a.____________():
        body = body + ______

    if button_b.____________():
        body = body - ______

    display.show(________(body))
```
== 6. Rozšíření – přemýšlej

Uprav program tak, aby:

při dosažení 10 bodů zobrazil nápis „WIN“

skóre nikdy nekleslo pod 0

Napiš vlastní řešení:

```python
from microbit import *

# zde napiš svůj kód
```

]

















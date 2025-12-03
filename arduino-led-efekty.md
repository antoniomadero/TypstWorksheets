# Arduino – 8 LED diod: různé efekty + PWM stmívání

**Počet LED:** 8 ks  
**Piny:** 2, 3, 4, 5, 6, 7, 8, 9 (piny 3, 5, 6, 9, 10, 11 podporují PWM → ideální na stmívání)

---

### 1. Klasické běžící světlo (jedna LED svítí)

```cpp
const int prvniPin = 2;
const int pocetLed = 8;

void setup() {
  for (int i = 0; i < pocetLed; i++) {
    pinMode(prvniPin + i, OUTPUT);
  }
}

void loop() {
  for (int i = 0; i < pocetLed; i++) {
    digitalWrite(prvniPin + i, HIGH);
    delay(100);                       // rychlost
    digitalWrite(prvniPin + i, LOW);
  }
}
```
### 2. Postupné plnění (všechny zůstávají svítit)

```cpp

const int prvniPin = 2;
const int pocetLed = 8;

void setup() {
  for (int i = 0; i < pocetLed; i++) {
    pinMode(prvniPin + i, OUTPUT);
  }
}

void loop() {
  // Rozsvěcování
  for (int i = 0; i < pocetLed; i++) {
    digitalWrite(prvniPin + i, HIGH);
    delay(100);
  }
  delay(400);

  // Zhasnutí všech
  for (int i = 0; i < pocetLed; i++) {
    digitalWrite(prvniPin + i, LOW);
  }
  delay(200);
}
```
### 3. Běžící světlo tam a zpět

```cpp

const int prvniPin = 2;
const int pocetLed = 8;

void setup() {
  for (int i = 0; i < pocetLed; i++) {
    pinMode(prvniPin + i, OUTPUT);
  }
}


void loop() {
  // Dopředu
  for (int i = 0; i < pocetLed; i++) {
    digitalWrite(prvniPin + i, HIGH);
    delay(80);
    digitalWrite(prvniPin + i, LOW);
  }
  // Dozadu (od předposlední, aby se neopakovala poslední)
  for (int i = pocetLed - 2; i > 0; i--) {
    digitalWrite(prvniPin + i, HIGH);
    delay(80);
    digitalWrite(prvniPin + i, LOW);
  }
}
```
### 4. Stmívání LED (PWM)

```cpp
const int pwmPiny[] = {3, 5, 6, 9};   // použijeme jen 4 PWM piny (můžeš přidat 10 a 11)
const int pocet = 4;

void setup() {
  for (int i = 0; i < pocet; i++) {
    pinMode(pwmPiny[i], OUTPUT);
  }
}

void loop() {
  // Pomalu rozsvěcujeme (0 → 255)
  for (int jas = 0; jas <= 255; jas += 1) {
    for (int i = 0; i < pocet; i++) {
      analogWrite(pwmPiny[i], jas);
    }
    delay(10);
  }

  // Pomalu zhasínáme (255 → 0)
  for (int jas = 255; jas >= 0; jas -= 1) {
    for (int i = 0; i < pocet; i++) {
      analogWrite(pwmPiny[i], jas);
    }
    delay(10);
  }

  delay(300); // pauza dole
}
```
### 5. Stmívání jednotlivých LED po sobě

```cpp
const int pwmPiny[] = {3, 5, 6, 9, 10, 11};  // všechny PWM piny (můžeš použít i méně)
const int pocet = 6;

void setup() {
  for (int i = 0; i < pocet; i++) {
    pinMode(pwmPiny[i], OUTPUT);
  }
}

void loop() {
  for (int led = 0; led < pocet; led++) {
    // Rozsvěcování aktuální LED
    for (int jas = 0; jas <= 255; jas += 2) {
      analogWrite(pwmPiny[led], jas);
      delay(8);
    }
    // Zhasínání aktuální LED
    for (int jas = 255; jas >= 0; jas -= 2) {
      analogWrite(pwmPiny[led], jas);
      delay(8);
    }
  }
}
```
### 6. Náhodné blikání LED

```cpp
const int piny[] = {2,3,4,5,6,7,8,9};
const int pocet = 8;

void setup() {
  for (int i = 0; i < pocet; i++) pinMode(piny[i], OUTPUT);
  randomSeed(analogRead(0));
}

void loop() {
  int led = random(pocet);
  int jas = random(50, 256);      // od slabého po plný jas
  int doba = random(30, 150);

  analogWrite(piny[led], jas);
  delay(doba);
  analogWrite(piny[led], 0);
}
```
### 7. Vlnový efekt (wave)

```cpp  
const int pwmPiny[] = {3, 5, 6, 9};   // použijeme jen 4 PWM piny
const int pocet = 4; 
void setup() {
  for (int i = 0; i < pocet; i++) {
    pinMode(pwmPiny[i], OUTPUT);
  }
}
void loop() {
  for (int jas = 0; jas < 256; jas++) {
    for (int i = 0; i < pocet; i++) {
      int jas = (sin((jas + i * 64) * 0.1) + 1) * 127.5; // Vlnový efekt
      analogWrite(pwmPiny[i], jas);
    }
    delay(30);
  }
}
```
### 8. Blesk (simulace blesku)

```cpp
const int pwmPiny[] = {3, 5, 6, 9};   // použijeme jen 4 PWM piny
const int pocet = 4;
void setup() {
  for (int i = 0; i < pocet; i++) {
    pinMode(pwmPiny[i], OUTPUT);
  }
}
void loop() {
  // Náhodné blesky
  for (int i = 0; i < random(3, 7); i++) {
    for (int j = 0; j < pocet; j++) {
      int jas = random(200, 256);
      analogWrite(pwmPiny[j], jas);
    }
    delay(random(50, 150));
    for (int j = 0; j < pocet; j++) {
      analogWrite(pwmPiny[j], 0);
    }
    delay(random(100, 300));
  }
  delay(1000); // Pauza mezi blesky
}
```
### Poznámky
- Můžeš kombinovat různé efekty nebo je upravovat podle svých představ.
- Experimentuj s rychlostmi a jasem pro dosažení různých vizuálních efektů.
- Ujisti se, že máš správně zapojené rezistory, aby nedošlo k přetížení LED diod.

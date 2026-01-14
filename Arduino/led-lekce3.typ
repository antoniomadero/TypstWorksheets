
#set page(margin: 1cm, columns: 2)
#set text(size: 0.75em)
= Lekce 3 – Automatický pohyb a kolize se zdí
\
```cpp
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, -1);

// --- MŘÍŽKA ---
const int CELL = 3;
const int GAP  = 1;
const int STEP = CELL + GAP;

const int GRID_W = 32;
const int GRID_H = 16;

// --- POSTAVA ---
int playerX = 0;
int playerY = 0;

// --- SMĚR ---
enum Direction { UP, DOWN, LEFT, RIGHT };
Direction dir = RIGHT; // výchozí směr

// --- TLAČÍTKA ---
const int BTN_UP    = 2;
const int BTN_DOWN  = 3;
const int BTN_LEFT  = 4;
const int BTN_RIGHT = 5;

// --- ČAS ---
unsigned long lastMove = 0;
const unsigned long MOVE_INTERVAL = 500; // 0,5 s

// --- DEBOUNCING ---
unsigned long lastButtonPress = 0;
const unsigned long DEBOUNCE_TIME = 50; // 50ms

// --- STAV HRY ---
bool gameOver = false;
unsigned long gameOverTime = 0;



// --- OVLÁDÁNÍ TLAČÍTKY ---
void handleInput() {
  unsigned long now = millis();
  
  // Debounce: ignorujeme tlačítka pokud byly stisknuta před málo než DEBOUNCE_TIME
  if (now - lastButtonPress < DEBOUNCE_TIME) return;
  
  if (digitalRead(BTN_UP) == LOW) {
    dir = UP;
    lastButtonPress = now;
  }
  else if (digitalRead(BTN_DOWN) == LOW) {
    dir = DOWN;
    lastButtonPress = now;
  }
  else if (digitalRead(BTN_LEFT) == LOW) {
    dir = LEFT;
    lastButtonPress = now;
  }
  else if (digitalRead(BTN_RIGHT) == LOW) {
    dir = RIGHT;
    lastButtonPress = now;
  }
}

// --- POHYB ---
void handleMovement() {
  if (millis() - lastMove < MOVE_INTERVAL) return;
  lastMove = millis();

  switch (dir) {
    case UP:    playerY--; break;
    case DOWN:  playerY++; break;
    case LEFT:  playerX--; break;
    case RIGHT: playerX++; break;
  }

  // kontrola kolize se zdí
  if (playerX < 0 || playerX >= GRID_W ||
      playerY < 0 || playerY >= GRID_H) {
    gameOver = true;
    gameOverTime = millis();
  }
}

// --- KRESLENÍ ---
void drawGame() {
  display.clearDisplay();

  // mřížka
  for (int x = 0; x <= SCREEN_WIDTH; x += STEP) {
    display.drawLine(x, 0, x, SCREEN_HEIGHT, SSD1306_WHITE);
  }
  for (int y = 0; y <= SCREEN_HEIGHT; y += STEP) {
    display.drawLine(0, y, SCREEN_WIDTH, y, SSD1306_WHITE);
  }

  // postava
  int px = playerX * STEP + GAP;
  int py = playerY * STEP + GAP;
  display.fillRect(px, py, CELL, CELL, SSD1306_WHITE);

  display.display();
}
// --- RESET HRY ---
void resetGame() {
  playerX = 0;
  playerY = 0;
  dir = RIGHT;
  gameOver = false;
  lastMove = millis();
}

// --- GAME OVER ---
void showGameOver() {
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(10, 28);
  display.println("Narazil jsi do zdi");
  display.display();

  if (millis() - gameOverTime > 3000) { // restart po 3 s
    resetGame();
  }
}


// --- SETUP A LOOP ---

void setup() {
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);

  pinMode(BTN_UP,    INPUT_PULLUP);
  pinMode(BTN_DOWN,  INPUT_PULLUP);
  pinMode(BTN_LEFT,  INPUT_PULLUP);
  pinMode(BTN_RIGHT, INPUT_PULLUP);

  resetGame();
}

void loop() {
  if (!gameOver) {
    handleInput();    // mění směr
    handleMovement(); // pohyb automaticky po čase
    drawGame();
  } else {
    showGameOver();
  }
}

```

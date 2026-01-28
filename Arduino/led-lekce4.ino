#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, -1);

// --- MŘÍŽKA ---
const int CELL = 7;
const int GAP  = 1;
const int STEP = CELL + GAP;

const int GRID_W = 16;
const int GRID_H = 8;

// --- HAD ---A
const int MAX_LEN = 50;
int snakeX[MAX_LEN];
int snakeY[MAX_LEN];
int snakeLen = 1;

// --- SMĚR ---
enum Direction { UP, DOWN, LEFT, RIGHT };
Direction dir = RIGHT;

// --- JÍDLO ---
int foodX;
int foodY;

// --- TLAČÍTKA ---
const int BTN_UP    = 2;
const int BTN_DOWN  = 3;
const int BTN_LEFT  = 4;
const int BTN_RIGHT = 5;

// --- ČAS ---
unsigned long lastMove = 0;
const unsigned long MOVE_INTERVAL = 500;

// --- STAV HRY ---
bool gameOver = false;
unsigned long gameOverTime = 0;



// --- OVLÁDÁNÍ ---
void handleInput() {
  if (digitalRead(BTN_UP) == LOW)    dir = UP;
  if (digitalRead(BTN_DOWN) == LOW)  dir = DOWN;
  if (digitalRead(BTN_LEFT) == LOW)  dir = LEFT;
  if (digitalRead(BTN_RIGHT) == LOW) dir = RIGHT;
}

// --- JÍDLO ---
void spawnFood() {
  foodX = random(0, GRID_W);
  foodY = random(0, GRID_H);
}

// --- POHYB HADA ---
void handleMovement() {
  if (millis() - lastMove < MOVE_INTERVAL) return;
  lastMove = millis();

  // posun těla
  for (int i = snakeLen - 1; i > 0; i--) {
    snakeX[i] = snakeX[i - 1];
    snakeY[i] = snakeY[i - 1];
  }

  // pohyb hlavy
  switch (dir) {
    case UP:    snakeY[0]--; break;
    case DOWN:  snakeY[0]++; break;
    case LEFT:  snakeX[0]--; break;
    case RIGHT: snakeX[0]++; break;
  }

  // náraz do zdi
  if (snakeX[0] < 0 || snakeX[0] >= GRID_W ||
      snakeY[0] < 0 || snakeY[0] >= GRID_H) {
    gameOver = true;
    gameOverTime = millis();
    return;
  }

  // snězení jídla
  if (snakeX[0] == foodX && snakeY[0] == foodY) {
    if (snakeLen < MAX_LEN) snakeLen++;
    spawnFood();
  }
}



// --- KRESLENÍ ---
void drawGame() {
  display.clearDisplay();

  // mřížka
  for (int x = 0; x <= SCREEN_WIDTH; x += STEP)
    display.drawLine(x, 0, x, SCREEN_HEIGHT, SSD1306_WHITE);
  for (int y = 0; y <= SCREEN_HEIGHT; y += STEP)
    display.drawLine(0, y, SCREEN_WIDTH, y, SSD1306_WHITE);

  // jídlo (X – úhlopříčky)
  int fx = foodX * STEP + GAP;
  int fy = foodY * STEP + GAP;
  display.drawLine(fx, fy, fx + CELL - 1, fy + CELL - 1, SSD1306_WHITE);
  display.drawLine(fx + CELL - 1, fy, fx, fy + CELL - 1, SSD1306_WHITE);

  // had
  for (int i = 0; i < snakeLen; i++) {
    int px = snakeX[i] * STEP + GAP;
    int py = snakeY[i] * STEP + GAP;
    display.fillRect(px, py, CELL, CELL, SSD1306_WHITE);
  }

  display.display();
}

void resetGame() {
  snakeLen = 1;
  snakeX[0] = 0;
  snakeY[0] = 0;
  dir = RIGHT;
  gameOver = false;
  lastMove = millis();
  spawnFood();
}

// --- GAME OVER ---
void showGameOver() {
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE);  // ← PŘIDEJ TENTO ŘÁDEK
  display.setCursor(10, 28);
  display.println("Narazil jsi do zdi");
  display.display();

  if (millis() - gameOverTime > 3000) {
    resetGame();
  }
}

void setup() {
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);

  pinMode(BTN_UP,    INPUT_PULLUP);
  pinMode(BTN_DOWN,  INPUT_PULLUP);
  pinMode(BTN_LEFT,  INPUT_PULLUP);
  pinMode(BTN_RIGHT, INPUT_PULLUP);

  randomSeed(analogRead(A0));
  resetGame();
}

void loop() {
  if (!gameOver) {
    handleInput();
    handleMovement();
    drawGame();
  } else {
    showGameOver();
  }
}

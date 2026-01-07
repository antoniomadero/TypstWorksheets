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

// --- TLAČÍTKA ---
const int BTN_UP    = 2;
const int BTN_DOWN  = 3;
const int BTN_LEFT  = 4;
const int BTN_RIGHT = 5;

void setup() {
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);

  pinMode(BTN_UP,    INPUT_PULLUP);
  pinMode(BTN_DOWN,  INPUT_PULLUP);
  pinMode(BTN_LEFT,  INPUT_PULLUP);
  pinMode(BTN_RIGHT, INPUT_PULLUP);
}

// --- VSTUP ---
void handleInput() {
  if (digitalRead(BTN_UP) == LOW && playerY > 0) {
    playerY--;
  }
  if (digitalRead(BTN_DOWN) == LOW && playerY < GRID_H - 1) {
    playerY++;
  }
  if (digitalRead(BTN_LEFT) == LOW && playerX > 0) {
    playerX--;
  }
  if (digitalRead(BTN_RIGHT) == LOW && playerX < GRID_W - 1) {
    playerX++;
  }
}

// --- KRESLENÍ ---
void drawGrid() {
  display.clearDisplay();

  for (int x = 0; x <= SCREEN_WIDTH; x += STEP) {
    display.drawLine(x, 0, x, SCREEN_HEIGHT, SSD1306_WHITE);
  }
  for (int y = 0; y <= SCREEN_HEIGHT; y += STEP) {
    display.drawLine(0, y, SCREEN_WIDTH, y, SSD1306_WHITE);
  }
}

void drawPlayer() {
  int px = playerX * STEP + GAP;
  int py = playerY * STEP + GAP;
  display.fillRect(px, py, CELL, CELL, SSD1306_WHITE);
}

void loop() {
  handleInput();
  drawGrid();
  drawPlayer();
  display.display();
  delay(50);
}

#include "lcd_config.h"

Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT, &Wire, OLED_RESET);

void lcdSetup() {
  // initialize with the I2C addr 0x3C (for the 128x64)
  if(!display.begin(SSD1306_SWITCHCAPVCC, SCREEN_ADDRESS)) {
    Serial.println(F("SSD1306 allocation failed"));
    for(;;); // Don't proceed, loop forever
  }
  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE);
  display.setCursor(0,0);
  display.println("Hello ICLR!");
  display.display();
}

void lcdUpdate(bool s0, bool s1, bool s2, bool s3) {
  bool states[4] = {s0, s1, s2, s3};

  display.clearDisplay();
  display.setTextSize(1);
  display.setTextColor(SSD1306_WHITE);
  
  for (int i = 0; i < 4; i++) {
    display.setCursor(0, i * 10);
    display.print("Switch ");
    display.print(i);
    display.print(": ");
    display.println(states[i] ? "OFF" : "ON");
  }

  display.display();
}
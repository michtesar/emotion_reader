#include <FAB_LED.h>
sk6812<D, 6>  strip;
const uint8_t numPixels = 32;
rgbw pixels[numPixels] = {};

void updateColors(int r, int g, int b, int channel) {
    pixels[channel].r = g; pixels[channel].g = r;
    pixels[channel].b = b; pixels[channel].w = 0;
}

void setup() {
  Serial.begin(9600);
  strip.clear(2 * numPixels);
}

void loop() {
  while (Serial.available() > 0) {
    for (int channel = 1; channel < 32; channel++) {
      int red = Serial.parseInt();
      int green = Serial.parseInt();
      int blue = Serial.parseInt();

      if (Serial.read() == '\n') {    
        red = constrain(red, 0, 255);
        green = constrain(green, 0, 255);
        blue = constrain(blue, 0, 255);
      }
      updateColors(red, green, blue, channel);
    }
    strip.sendPixels(numPixels, pixels);
  }
}




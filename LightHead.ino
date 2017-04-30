// This is GRBW not RGBW :-) lol
#include <FAB_LED.h>
sk6812<D, 6>  strip;
const uint8_t numPixels = 32;
const uint8_t maxBrightness = 255;
rgbw pixels[numPixels] = {};

int colorArray[96] = {254, 243, 0, 151, 254, 103, 87, 254, 167, 0, 215, 254, 0, 71, 254, 0, 19, 254, 0, 15, 254, 0, 75, 254, 0, 239, 254, 83, 254, 171, 71, 254, 183, 191, 254, 63, 254, 147, 0, 254, 19, 0, 254, 131, 0, 127, 0, 0, 231, 254, 23, 175, 254, 79, 131, 254, 123, 83, 254, 171, 99, 254, 155, 99, 254, 155, 71, 254, 183, 83, 254, 171, 39, 254, 215, 0, 211, 254, 0, 215, 254, 0, 0, 131, 0, 247, 254, 43, 254, 211, 254, 107, 0, 254, 199, 0};

/*
void updateColors(char r, char g, char b) {
  for (int i = 0; i < numPixels; i++) {
    pixels[i].r = g;
    pixels[i].g = r;
    pixels[i].b = b;
    pixels[i].w = 0;
  }
}
*/

void updateColors(int colorArray[]) {
  int ledIndex = 0;
  for (int i = 3; i < 96; i++) {
    pixels[ledIndex].r = colorArray[i-3];
    pixels[ledIndex].g = colorArray[i-2];
    pixels[ledIndex].b = colorArray[i-1];
    pixels[ledIndex].w = 0;
    ledIndex = ledIndex + 1;
  }
}

void setup() {
  // Turn off the LEDs
  strip.clear(2 * numPixels);
}

void loop() {
  updateColors(colorArray);
  strip.sendPixels(numPixels, pixels);
}





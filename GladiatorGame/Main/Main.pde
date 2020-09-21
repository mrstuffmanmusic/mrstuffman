// Variabler //

int DisplayScreen = 0;

// Setup //

void setup() {

  size(1920, 1080);
}

void draw() {
  // Her viser sketchen StartScreen(); hvis DisplayScreen er 0, som det altid er når programmet startes //
  if (DisplayScreen == 0) {
    startScreen();
  } else if DisplayScreen == 1 {
    chooseOrigin();
  } else if DisplayScreen == 2 {
    customizeGladiator();
  } else if DisplayScreen == 3 {
  } else if DisplayScreen == 4 {
    placeholder();
  } else if DisplayScreen == 5 {
    placeholder();
  } else if DisplayScreen == 6 {


    void startScreen() {
    }

    void chooseOrigin() {
    }

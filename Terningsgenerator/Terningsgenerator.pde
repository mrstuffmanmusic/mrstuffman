void setup() {
 fullScreen();
}

void mousePressed() {
  // Dette laver en knap der restarter programet
  if (mouseX<1000 && mouseY<650)
    loop();
}


void draw() {
  int one = 0;
  int two = 0;
  int three = 0;
  int four = 0;
  int five = 0;
  int six = 0;
  int terningSlag=0;
  clear();
  
  //Dette er min terning, den slår et tal mellem 1 og 6.
  for (int i = 0; i < 600; i = i+1) {
    terningSlag = (int)random(1, 7);

    if (terningSlag == 1) {
      one+=1;
    }

    if (terningSlag == 2) {
      two+=1;
    }
    if (terningSlag == 3) {
      three+=1;
    }

    if (terningSlag == 4) {
      four+=1;
    }


    if (terningSlag == 5) {
      five+=1;
    }


    if (terningSlag == 6) {
      six+=1;
    }
  }
  // Her ses antallet af hvert slag
  textSize(40);
  text(one, 100, 800);
  text(two, 200, 800);
  text(three, 300, 800);
  text(four, 400, 800);
  text(five, 500, 800);
  text(six, 600, 800);

  // Med den her tekst kan man se hvilke terningslag der har vilken værdi
  text(1, 100, 700);
  text(2, 200, 700);
  text(3, 300, 700);
  text(4, 400, 700);
  text(5, 500, 700);
  text(6, 600, 700);
  
  // Her er alle firkanter brugt til at lave et søjlediagram 
  rect(100, 950, 75, -one);
  rect(200, 950, 75, -two);
  rect(300, 950, 75, -three);
  rect(400, 950, 75, -four);
  rect(500, 950, 75, -five);
  rect(600, 950, 75, -six);

  //Knappen
  rect(0, 0, 1000, 650);
  //Gør så der ikke sker fejl
  noLoop();
}

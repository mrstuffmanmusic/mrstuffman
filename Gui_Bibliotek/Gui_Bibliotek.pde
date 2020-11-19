Button buttonTerning6 = new Button(30, 10, 180, 50, "Slå med 6s terning!");
Button buttonTerning10 = new Button(300, 10, 180, 50, "Slå med 10s terning!");

int sum;
int terningeKast;

void setup() {
  size(500, 300); 

  buttonTerning6.addAction(new Action() {   
    public void execute() {
      terningeKast = int(random(1, 6));
      sum += terningeKast;
    }
  }
  );

  buttonTerning10.addAction(new Action() {   
    public void execute() {
      terningeKast = int(random(1, 10));
      sum += terningeKast;
    }
  }
  );
}

void draw() {
  clear();
  buttonTerning6.display();
  buttonTerning10.display();
  fill(255);
  textAlign(CENTER);
  text("Du har kastet " + terningeKast, width/2, 200);
  text("Samlet sum    " + sum, width/2, 250);
}

void mousePressed() {
  buttonTerning6.click();
  buttonTerning10.click();
}

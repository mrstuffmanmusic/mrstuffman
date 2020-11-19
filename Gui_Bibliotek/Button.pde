class Button {
  float x; 
  float y; 
  float w;
  float h;
  String navn;
  Action a;

  Button(float x, float y, float w, float h, String navn) {

    this.x=x;
    this.y=y;
    this.w=w;
    this.h=h;
    this.navn=navn;
  }
  void addAction(Action a) {
    this.a=a;
  }

  void display() {

    fill(255, 255, 0);
    rect(200, 100, 100,50);
    fill(102, 51, 153);
    textSize(16);
    text("Joe Leow", 250, 130);

    fill(255, 40, 0);
    rect(x, y, w, h);

    fill(0, 255, 255);
    textSize(14);
    text("Slå terning med 6 sider", 120, 40);
    text("Slå terning med 10 sider", 390, 40);
  }

  void click() {
    if ((mouseX>x)&&(mouseX<x+w)&&(mouseY>y)&&(mouseY<y+h)) {
      a.execute();
    }
  }
}

class Textbox2 {
  String Aar="Text2";

  void addText(char c) {
    if (keyPressed && key == BACKSPACE && Aar.length()!=0) {
      Aar = Aar.substring( 0, Aar.length()-1 );
    } else if (key == BACKSPACE || keyCode == 16 || key == TAB || keyCode == 20 || keyCode == 13) {
    } else {
      Aar = Aar+c;
    }
  }

  void skriv() {
    rect(70, 100, 330, 30);
    fill(0);
    text(Aar, 75, 120);
    fill(255);
  }
}

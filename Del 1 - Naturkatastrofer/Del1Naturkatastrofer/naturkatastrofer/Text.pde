class Textbox1 {
  String Land="Text";

  void addText(char c) {
    if (keyPressed && key == BACKSPACE && Land.length()!=0 ) {
      Land = Land.substring( 0, Land.length()-1 );
    } else if (key == BACKSPACE || keyCode == 16 || key == TAB || keyCode == 20 || keyCode == 13) {
    } else {
      Land = Land+c;
    }
  }

  void skriv() {
    rect(70, 50, 330, 30);
    fill(0);
    text(Land, 75, 70);
    fill(255);
  }
}

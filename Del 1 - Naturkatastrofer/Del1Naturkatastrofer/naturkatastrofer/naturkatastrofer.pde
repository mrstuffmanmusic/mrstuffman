Table table;
ArrayList<String> land = new ArrayList<String>();
String country;
String year;
String[] consolData = new String[24725];
int counter = 0;
Textbox1 inputLande = new Textbox1();
Textbox2 inputAar = new Textbox2();
int box = 1;


void setup() {
  size(500, 500);
  table = loadTable("DeathsNaturalDisasters.csv"); 
  for (int i = 0; i<table.getRowCount(); i++) {
    country = table.getRow(i).getString(1);
    TableRow r=table.getRow(i);
    r.getColumnCount();
    //println(country);
    for (int c=2; c<r.getColumnCount(); c++) {
      year = table.getRow(0).getString(c);
      println(country, year, r.getInt(c));
      consolData[counter++]=(counter+","+r.getString(1)+","+table.getRow(0).getString(c)+","+r.getInt(c));
    }
    saveStrings("cosolOutput.txt", consolData);
  }
  background(40);
  textSize(15);
}
void draw() {
  inputLande.skriv();
  inputAar.skriv();
  printDoede();
}
void mousePressed() {
  if (mouseX>70&&mouseX<400&&mouseY>50&&mouseY<80) {
    box=1;
  } else if (mouseX>70&&mouseX<400&&mouseY>100&&mouseY<130) {
    box=2;
  } else {
    box=0;
  }
}

void keyPressed() {
  if (key==TAB&&box==1) {
    box++;
  } else if (key==TAB&&box==2) {
    box--;
  }
  if (box==1) {
    inputLande.addText(key);
  }
  if (box==2) {
    inputAar.addText(key);
  }
}

void printDoede() {
  for (int i = 0; i<consolData.length; i++) {
    String[] loa = split(consolData[i], ",");  
    //println(loa[1]+" "+loa[2]+" "+loa[3]);
    if (loa[1].equalsIgnoreCase(inputLande.Land)&&loa[2].equalsIgnoreCase(inputAar.Aar)) {
      noStroke();
      fill(40);
      rect(0, 130, 500, 370);
      textSize(20);
      fill(255);
      text(loa[3]+" person(er) døde i "+loa[1]+" i år "+loa[2], 10, 250);
      textSize(15);
    }
  }
}

void setup() {
  size(500, 700);


  Table t;
  t = loadTable("DeathsNaturalDisasters.csv");



  int[] list = new int[t.getRowCount()];

  for (int i = 0; i < t.getRowCount(); i++) {
    list[i] = t.getRow(i).getInt(2);
  }

  for (int n = 0; n < list.length; n++) {
    fill(70, 102, 255);
    ellipse(n * 5+75, (float) (500 - list[n] * 0.1)+150, 10, 10);
  }
}


    //Denne liste SKAL indholde alle de "Ting", der er pÃ¥ skÃ¦rmen!
    Ting[] listeTing;

    public static void main(String[] args) {
        PApplet.main("Main");
    }

    @Override
    public void settings() {
        super.settings();
        size(500,500);

        //...Alle processing kommandoer er nu inde i p....
        p = this;

        //Opgave 1 : Her skal du oprette listen "listeTing" med plads til 20 ting
        ArrayList<Ting> listeTing = new ArrayList<Ting>();

        //Opgave 5 : Her skal du skrive kode der laver alle "Ting"
        for(int i = 0; i<20; i++) {
            listeTing.add(new Ting(random(0, width), random(0, height)));
        }

    }

    public void draw(){
        //... Eksempel pÃ¥ processing kommando (som den bÃ¸r bruges i andre klasser!!)
        Main.p.fill(200,200,200);
        Main.p.rect(10,10,480,480);

        //OPGAVE 8 (SVÃ†R) : Her skal du skrive kode der Ã¦ndrer farven til rÃ¸d din "Ting"  rÃ¸rer ved musen...



        //Opgave 6 : Her skal du skrive kode, der tegner alle "Ting"
        //ps: Du SKAL kalde "tegn metoden" pÃ¥ ALLE "Ting"
        //Opgave 7 : Her skal du skrive kode, der fÃ¥r alle "Ting" til at flytte sig
        //ps: DU SKAL kalde "
        for(int i = 0; i<listeTing.length; i++) {
            Ting t = listeTing.get(i);
                t.tegn();
                t.flyv();
            }
        }






        //EKSPERT 2:
        //Hvis to ting rÃ¸rer hinanden skal de blive blÃ¥!

    }






}

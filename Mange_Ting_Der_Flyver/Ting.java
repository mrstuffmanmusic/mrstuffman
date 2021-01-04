public class Ting extends Main {


    public static float x, y;
    //Tings position
    float colorR = 100;

    Ting(float inputX, float inputY){
        //Opgave 2: Her skal du skrive kode der sÃ¦tter positionen for tingen x og y
        x = inputX;
        y = inputY;
    }

    void tegn(){
        //Opgave 3: Her skal du skrive kode der tegner denne "Ting"
        p.fill(200,50,50);
        p.ellipse(x,y,30,30);
    }

    void flyv(){
        //Opgave 4: Her skal du skrive kode der flytter "Ting"
        x += random(-5,6);
        y += random(-5,6);
        //ps: Husk de mÃ¥ ikke flytte sig uden for skÃ¦rmen...
        if(x>width){
            x=width;
        } else if(x<0){
            x=0;
        }
        if(y>height){
            y=height;
        } else if(y<0){
            y=0;
        }

    }




}

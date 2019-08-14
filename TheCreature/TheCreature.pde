int x = 60;
int y = 60;
void setup(){
  size(500,500);  
}


void draw(){
  background(0,0,0);
  x = x +2;
  y = y +2;
  ellipse(x,y,50,50);

  //y = y +2;
  ellipse(x,y-30,20,20);
  
}

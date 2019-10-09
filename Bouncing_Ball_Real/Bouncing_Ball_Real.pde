float x = 375;
float y = 375;
float s = 375;
int rad = 20;        
float xpos, ypos;
float xspeed = 2.8;  
float yspeed = 2.2;  
int xdirection = 1;  
int ydirection = -1;  

void setup() { 
  size(750, 750);
  frameRate(60);
  ellipseMode(RADIUS);
  
  xpos = width/2;
  ypos = height/2;
  
}
void draw(){ 
background(0);

s= s-1;

   noFill();
   rectMode(CENTER);
   rect(x, y, s, s);
   println(xpos, ypos);
   println(ydirection);
   stroke(255, 255, 255);
  
   fill(255, 255, 255);
  xpos = xpos + ( xspeed * xdirection );
 
  ypos = ypos + ( yspeed * ydirection );

  
  if (xpos+10 > 375+s/2) {
    xdirection = -1;
  }
    if (xpos-10 < 375-s/2) {
    xdirection = 1;
  }
  if (ypos+10 > 375+s/2) {
    ydirection = -1;
  }
    if (ypos-10 < 375-s/2) {
    ydirection = +1;
  }

  
  ellipse(xpos, ypos, rad,rad);
  
}

//Sofie T
//Checkpoint 5/6


//building variables
int x = 700;
int y = 0;
// MOUSEX, MOUSEY, coordinates qui suit le souris

void setup(){
size(600,600);



}

void draw(){
  background(255);
  strokeWeight(3);
  ellipse (200, x,100,100);
  x=x-10;
  if (x < -200) {
    x=700;
  }
  
  ellipse(400,y,100,100);
  y=y+10;
  if(y>800) {
    y=-100;
  };
}

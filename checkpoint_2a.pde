//Sofie T
//Checkpoint 2/6


//building variables
int x = 0;
int y = 300;
// MOUSEX, MOUSEY, coordinates qui suit le souris

void setup(){
size(600,600);



}

void draw(){
  background(255);
  ellipse (300, 300,x,x);
  strokeWeight(5);
  x=x+7;
  if (x > 900) {
    x=0;
  }
}

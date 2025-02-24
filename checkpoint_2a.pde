//Sofie T
//Checkpoint 1/6


//building variables
int x = 0;
int y = 300;
// MOUSEX, MOUSEY, coordinates qui suit le souris

void setup(){
size(600,600);



}

void draw(){
  background(255);
  ellipse (300, x,300,300);
  x=x+3;
  if (x > 850) {
    x=-200;
  }
}

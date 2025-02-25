//SOFIE TANG
//U2 PROJECT

int ro1=0;



void setup() {
  size(1000, 600);

}

void draw() {
  background(135, 206, 250); // Sky background
  
  
  //sun
  fill(255, 204, 0);
  stroke(255,204,0);
  ellipse(100, 100, 100, 100); 
 //end sun -----------------------
  
  //road
  fill(100,100,100);
  rect(0,400,width, 100);
  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
 //grass
  stroke(57,113,66);
  fill(34, 139, 34); // Grass top
  rect(0, 400, width, 20);
 
  fill(34, 139, 34); // Grass bottom
  rect(0, 500, width, 100);
 //end grass -----------------------
 
 //road yellow1
 fill(255,204,0);
 stroke(0);
 rect(ro1,450,50,10);
 
 ro1 = ro1+5;
 if(ro1>1100){
   ro1=-100;
 }
}

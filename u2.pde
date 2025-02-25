//SOFIE TANG
//U2 PROJECT

//variables
int ro1=0; //road yellow thing
int builda=0; //appt
int buildb = 270; //house
int sun = 100; //sun


void setup() {
  size(1000, 600);

}

void draw() {
  background(135, 206, 250); // Sky background
  
  
  //sun
  fill(255, 204, 0);
  stroke(255,204,0);
  ellipse(sun, 100, 100, 100); 
  sun= sun+1;
  if (sun > 180) {
   sun--; }
  if (sun < 100 ) {
    sun++; }
  
 //end sun -----------------------
 
 //building 1 (appt)
 
 fill(150,100,100);
 rect(builda,120,170,290);
 builda = builda +2;
 if (builda > 1100) {
   builda = -200;
 }
 
 //building 2 (house)
 rect(buildb,260,200,300);
 triangle(buildb+100,190,buildb-40,270,buildb+240,270);
  buildb = buildb +2;
 if (buildb > 1100) {
   buildb = -200;
 }
 
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

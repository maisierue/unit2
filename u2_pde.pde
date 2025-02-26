//SOFIE TANG
//U2 PROJECT

//variables
int ro1=0; //road yellow thing
int ro2=250;
int ro3=450;
int ro4=650;
int ro5=850;
int ro6=1050;


int hut = 900;
int builda=0; //appt
int buildb = 270; //house
int sun = 100; //sun
int sunx= 1;

int bike1=400;
int bikex = 1;
int bike2= 500;

void setup() {
  size(1000, 600);

}

void draw() { //ALL BGROUND
  background(135, 206, 250); // Sky background
  
  
  //sun
  fill(255, 204, 0);
  stroke(255,204,0);
  ellipse(sun, 100, 100, 100); 
  sun= sun+sunx;
  if (sun > 190) { ///reverses sun back
   sunx = -1; }
  if (sun < 70 ) { ///re-reverses sun forwrd
   sunx = 1; }
  
 //end sun -----------------------
 
//BUILDINGS
 //building 1 (appt)
 
 fill(211,88,43);
 strokeWeight(2);
 stroke(142,67,52);
 rect(builda,120,170,290);
 builda = builda +2;
 if (builda > 1250) {
   builda = -300;
 }
 
 //building 2 (house)
 stroke(0);
 strokeWeight(2);
 fill(16,127,180);
 rect(buildb,260,200,300);
 fill(180,16,16);
 triangle(buildb+100,190,buildb-40,270,buildb+240,270);
 strokeWeight(1);
 fill(112,128,137);
 rect(buildb+50,300,50,50); //window
  line(buildb+75, 300,buildb+75,350); //vertical
  line(buildb+50, 325,buildb+100,325); //horizontal
  buildb = buildb +2;
 if (buildb > 1250) {
   buildb = -300;
 }
 
 //hut house
 ellipse(hut, 400,400,700);
 rect(hut+150,270,150,300);
 hut = hut +2;
  if (hut > 1250) {
   hut = -300;
 }
//END BUILDINGS--------------------------
 
 
 
 //ROAD
  strokeWeight(0);
  fill(100,100,100);
  rect(0,400,width, 100);
  
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
//GRASS
  stroke(57,113,66);
  fill(34, 139, 34); // Grass top
  rect(0, 400, width, 20);
 
  fill(34, 139, 34); // Grass bottom
  rect(0, 500, width, 100);
//END GRASS -----------------------
 
//road yellow
 fill(255,204,0);
 stroke(0);
 rect(ro1,450,50,10);
 rect(ro2,450,50,10);
 rect(ro3,450,50,10);
 rect(ro4,450,50,10);
 rect(ro5,450,50,10);
 
 ro1 = ro1+5;
 if(ro1>1020){
   ro1=-50;
 }
  ro2 = ro2+5;
 if(ro2>1020){
   ro2=-50;
 }
  ro3 = ro3+5;
 if(ro3>1020){
   ro3=-50;
 }
  ro4 = ro4+5;
 if(ro4>1020){
   ro4=-50;
 }
  ro5 = ro5+5;
 if(ro5>1020){
   ro5=-50;
 }
 
 //END ROAD YELLOW-------------------------


  
//BIKE

//wheels
stroke (0);
strokeWeight(8);
fill(56,62,67);
  ellipse(400,440,60,60); //WHEELS FRONT
    ellipse(500,440,60,60); //WHEELS BACK

   //bikebody
   strokeWeight(8);
   stroke(247,238,135);
   line(400,440,500,440);
  
}

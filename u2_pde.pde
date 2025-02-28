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
int cloud = 100; //sun
int cloudx= 1;

int bike1=400;
int bikex = 1;
int bike2= 500;
float a;

float angle;


void setup() {
  size(1000, 600);
  angle = 0;

}

void draw() { //ALL BGROUND
  background(135, 206, 250); // Sky background
  
  
  //opacity rect
  strokeWeight(0);
  a= sin(angle)*125+125;
  fill(35,54,85,a-5);
  rect(0,0,1000,400);
  
//SUN
  fill (255,179,64);
  stroke (255,179,64);
  sun(500,300);
  angle = angle +0.03; //speed of sun

//END SUN------------
  
  //cloud
  fill(255);
  stroke(255);
  ellipse(cloud, 100, 100, 100); 
  ellipse(cloud-50, 120, 90, 80); //cloudpuff
   ellipse(cloud+60, 120, 80, 65); //cloudpuff2
  cloud= cloud+cloudx;
  if (cloud > 190) { ///reverses sun back
   cloudx = -1; }
  if (cloud < 70 ) { ///re-reverses sun forwrd
   cloudx = 1; }
  
 //end cloud -----------------------
 
//BUILDINGS
 //building 1 (appt)
 
 fill(211,88,43);
 strokeWeight(2);
 stroke(142,67,52);
 rect(builda,120,170,290);
 fill(206,133,169);
  rect(builda+20,140,30,30);
  rect(builda+60,140,30,30);
  rect(builda+100,140,30,30);
   rect(builda+20,180,30,30);
  rect(builda+60,180,30,30);
  rect(builda+100,180,30,30);
  strokeWeight(4);
   ellipse(builda+80, 390,120,150);

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
  strokeWeight(4);
  stroke(0);
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
 strokeWeight(1);
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
  ellipse(400+60,415,50,50); //WHEELS FRONT


   //bikebody
   strokeWeight(30);
   stroke(247,238,135);
   line(400+70,420,460+70,470);
  
   stroke (0);
strokeWeight(8);
fill(56,62,67);
    ellipse(440+80,460,60,60); //WHEELS BACK

//END OF BIKE-------------------------

//human
strokeWeight(4);
fill(255);
line (470,420,490,370);
line (496,435,490,370);
line (490,370,490,300);
ellipse(490,280,50,50);
ellipse(480,280,10,10);
ellipse(500,280,10,10);
}

void sun(int sunx, int suny) { //rotating the sun lol
  pushMatrix();
  translate (sunx,suny);
  rotate(angle);
  ellipse(250,0,100,100);
  popMatrix();
}

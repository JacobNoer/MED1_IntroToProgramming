/*Write two additional methods for the Flower class 
- one that moves the flower with some velocity, 
and another that bounces the flower when it reaches any of the screen boundaries.
*/
class Flower {
  
 // Variables for first trail methoud
 int num=20;
 float[] trailX= new float[num];
 float[] trailY= new float[num];
 
 
 //Variables for secound trail methoud 
 int num1=40;
 int[] trailX1= new int[num1];
 int[] trailY1= new int[num1];
 int indexPosition = 0;
 
 // Variables
 float r;       // radius of the flower petal
 int n_petals;  // number of petals 
 float x;       // x-position of the center of the flower
 float y;       // y-position of the center of the flower
 int petalColor;//hexadecimal number for the color of petals
 float speedX;   // the x-axis speed of the flower
  float speedY;   // the y-axis speed of the flower
 
Flower(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_petalColor, float speed_x, float speed_y) {
  r=temp_r;
  n_petals = temp_n_petals;
  x=temp_x;
  y=temp_y;
  petalColor=temp_petalColor;
  speedX=speed_x; 
  speedY=speed_y;
}

void mouseBlomst(){ //trail for the secound methoud
  float ballX;
  float ballY;
  
  trailX1[indexPosition] = mouseX;
  trailY1[indexPosition] =mouseY;
  
  indexPosition=(indexPosition +1)%num1;
  for (int i = 0; i<num1; i++){
   int pos= (indexPosition +i) % num1;
   float radius = (num1-i) / 2.0;
   
   fill(petalColor);
  for (float i1=0;i1<PI*2;i1+=2*PI/n_petals) {
  ballX=mouseX + r*cos(i1);
  ballY=mouseY + r*sin(i1);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(trailX1[pos],trailY1[pos],radius,radius);
  }
  
  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
  ballX=mouseX + r*cos(i);
  ballY=mouseY + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(mouseX,mouseY,r*1.2,r*1.2);
}

void display () {
  
  float ballX;
  float ballY;
  
  for(int i=num-1; i >0; i--) {    //trail methoud for the first methoud
   trailX[i]= trailX[i-1];
   trailY[i]= trailY[i-1];
  }
      trailX[0] = x;
  trailY[0] = y;
  for (int i =0; i <num; i++) {
   ellipse(trailX[i],trailY[i],r/1.2,r/1.2);  
  }

  fill(petalColor);
  for (float i=0;i<PI*2;i+=2*PI/n_petals) {
//  ballX=width/2 + r*cos(i);
//  ballY=height/2 + r*sin(i);
  ballX=x + r*cos(i);
  ballY=y + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(200,0,0);
  ellipse(x,y,r*1.2,r*1.2);
  
}

void move() {
 x=x+speedX; //increases the x-value by speedX pr. frame.
 y=y+speedY;//increases the y-value by speedY pr. frame.
 
}

void bounce (){
   if (x>width||x<=0){//Makes the flower inverse speed if x-axis' limits is reached.
   speedX*=-1; 
     println("turn back");
 } 
 if (y>height||y<=0){ //Makes the flower inverse speed if y-axis' limits is reached.
    speedY*=-1; 
   println("turn around");
 }
}
}

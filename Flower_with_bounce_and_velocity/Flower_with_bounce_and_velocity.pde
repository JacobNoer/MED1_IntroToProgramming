int r=60;  //width fo the flower and leaves
int nrblade=7;  //Number of leaves


float flowerX;
float flowerY;
float ballX;
float ballY;

float moveX=2; //speed on on x-axis
float moveY=1; //speed on the y-axis

int xdirection=1;    //left or right 
int ydirection=1;    //up and down


void setup() {
  size(600,400);
  
  flowerX=width/2;    //starting position
  flowerY=height/2;  //starting position
  ballX=width/2;  //starting position 
  ballY=height/2;  //starting position
}

void draw(){
  background(#43AF76);
  
//draw the flower with leaves
  fill(#FFA005);
  for (float i=0;i<PI*2;i+=2*PI/nrblade) {
  ballX=flowerX + r*cos(i);
  ballY=flowerY + r*sin(i);
  ellipse(ballX,ballY,r,r); 
  }
  fill(20,0,100);
  ellipse(flowerX,flowerY,r*1.2,r*1.2);
  
  //update the position of the flower and leaves
  flowerX=flowerX+(moveX*xdirection);
  flowerY=flowerY+(moveY*ydirection);
  ballX=ballX+(moveX*xdirection);
  ballY=ballY+(moveY*ydirection);
  
  
  //test if flower and or with leaves hit the edges 
  if (flowerX>width-r-(r/2) || flowerX<r+(r/2)){
   xdirection *= -1; 
  }
  if (flowerY>height-r-(r/2) || flowerY<r+(r/2)){
   ydirection *= -1; 
  }
  
}  

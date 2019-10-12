int r=60;

void setup() {
  size(1600,1200);
  background(#43AF76);
}

void draw(){
  int flowerColor = #FFA005;
  //println("ballX = " + ballX + ", ballY = ", + ballY);
  
 flower(r,7,width/2,height/2,flowerColor); 
  flower(r,5,200,400, flowerColor);
  flower(r*2, 6, 1000,800, flowerColor/2);
//  println("ballX = " + ballX + ", ballY = ", + ballY);
//  noLoop();
}

void flower (float r, int n_petals, float x, float y, int petalColor) {
  float ballX;
  float ballY;

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

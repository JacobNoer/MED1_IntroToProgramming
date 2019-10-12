// two dimensional array example

int n_rows=10;
int n_columns = 5;

Flower [][] FlowerGarden = new Flower[n_rows][n_columns];



void setup() {
  size(1600, 1200);
  background(#43AF76);

  int _r= 60;
  int _petals=7;
  float _x=100;
  float _y=200;
  int _pc=#FFA000;
  
  for (int i = 0; i<n_rows; i +=1) {
    for (int j = 0; j<n_columns; j++) {
      FlowerGarden[i][j]=new Flower(_r+random(-10,10), _petals+int(random(-4,4)), _x+i*200, _y+j*200, _pc);
    }
  }
  
 
  //  myFlower2 = new Flower();
  //   myFlower3 = new Flower();
}


void draw() {
  background(#43AF76);
 //  if (myFlower1.overlaps(myFlower3) == true )
//  {
//    background(#FF0000);
//  } 

 for (int i = 0; i<n_rows; i +=1) {
    for (int j = 0; j<n_columns; j++) {
      FlowerGarden[i][j].display();
    }
  }
/*
  myFlower1.move();
  myFlower1.bounce();
  myFlower1.display();
  //  myFlower2.display();
  myFlower3.x=mouseX;
  myFlower3.y=mouseY;

  myFlower3.display();
  
  */
   noLoop();
  

}

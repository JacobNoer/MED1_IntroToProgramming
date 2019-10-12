

Flower [] FlowerRow = new Flower[6];  // flower array
int n_flowers= FlowerRow.length;

void setup() {
  size(1600,1200);
  background(#43AF76);
  
  int _r1= 60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  
  //print(FlowerRow.length);
  float fSpace=width/n_flowers;
  float stepHalf=fSpace/2;
  
  for (int i = 0; i<n_flowers; i +=1) { 
//    FlowerRow[i] = new Flower(_r1,_petals,fSpace*i,_y,_pc); 
    FlowerRow[i] = new Flower(_r1+random(-20,20),_petals+int(random(-3,3)),stepHalf+i*fSpace,_y,_pc); 

  }

}

void draw(){
 
  for (int i = 0; i<n_flowers; i +=1) { 
    FlowerRow[i].display(); 
  }

}

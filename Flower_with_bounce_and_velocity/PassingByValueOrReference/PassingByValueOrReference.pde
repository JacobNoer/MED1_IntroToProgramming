int a = 8;
int [] testIntegerArray = {0,1,2,3,4,5};

Flower [] flowerRow = new Flower[6];  // flower array
int n_flowers= flowerRow.length;

void setup() {
  size(1600,1200);
  background(#43AF76);
  
  int _r1= 60;
  int _petals=7;
  float _x=width/2;
  float _y=height/2;
  int _pc=#FFA000;
  
  //print(flowerRow.length);
  float fSpace=width/n_flowers;
  float stepHalf=fSpace/2;
  
  for (int i = 0; i<n_flowers; i +=1) { 
//    flowerRow[i] = new Flower(_r1,_petals,fSpace*i,_y,_pc); 
    flowerRow[i] = new Flower(_r1+random(-20,20),_petals+int(random(-3,3)),stepHalf+i*fSpace,_y,_pc); 

  }

}

void draw(){
  noLoop();
  //Passing by VALUE example - actual variable DOES NOT get changed by the function:
  println ("from draw, before calling doSomething function: a =",a);
  doSomething(a);
  //a=doSomething(a);
  println ("from draw, AFTER calling doSomething function: a =",a);
   
   println("before calling doSomething for array: ");
   println(testIntegerArray);
   doSomething(testIntegerArray);
   println("after calling doSomething for array: ");   
   println(testIntegerArray);
  
   print("before calling doSomething for object; x-coordinate: ");
   println(flowerRow[4].x);
   doSomething(flowerRow[4]);
   print("after calling doSomething for object; x-coordinate: ");   
   println(flowerRow[4].x);

}

/*
void doSomething(int a) {
  println("Beginning of doSomething function: a =", a);  
  a=a+1;
  println("End of doSomething function: a =", a);
}
*/

int doSomething(int a) {
  println("Beginning of doSomething function: a =", a);  
  a=a+1;
  println("End of doSomething function: a =", a);
  return a;
}

void doSomething(int[] a){
    println("beginning of doSomething(array)");
    println(a);
    a[3]=a[3]*10;
    println("end of doSomething(array)");
    printArray(a);
}

void doSomething(Flower a){
    print("beginning of doSomething(object); ");
    println("x coordinate of the object: ", a.x);
    a.x=0;
    print("end of doSomething(object); ");
    println("x coordinate of the object: ", a.x);

}

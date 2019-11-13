int numduplicate = 10;                        //numbers of duplicates made in the trail
int[] x = new int[numduplicate];              //Array for x
int[] y = new int[numduplicate];              //array for y
int indexPos;

Rect[] Rects = new Rect[numduplicate];

void setup() { 
  size(700, 700); 
  for(int i = 0; i<numduplicate; i++){
    Rects[i] = new Rect();
  }
}

void draw() {
  background(0);
  rectMode(CENTER);
  x[indexPos] = mouseX;
  y[indexPos] = mouseY;

  indexPos +=1;
  if (indexPos == numduplicate) {
    indexPos = 0;
  }

  for (int i = 0; i < numduplicate; i++) {
    int pos = (indexPos+i) % numduplicate;
    Rects[i].show(x[pos], y[pos]);
  }
}

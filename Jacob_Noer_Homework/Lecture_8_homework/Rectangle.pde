class Rect {
int x;
int y;
int rectSize =50;

void show(float x, float y) {
    ellipseMode(CENTER);
    float p= random(0,255);
    fill(p);
    rect(x, y, rectSize, rectSize);
  }
}

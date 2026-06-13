int xprev = 0;
int yprev = 0;

void setup() {
  size(800, 600);
}

void draw() {
  background(200, 5, 100);
  if (mousePressed) {
    line(mouseX, mouseY, xprev, yprev);
  }
 else {background(126);}
  xprev = mouseX;
  yprev = mouseY;
}

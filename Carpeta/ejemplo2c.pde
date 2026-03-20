int xprev = 0;
int yprev = 0;
int rx = 0;
void setup() {
  size(800, 600);
  background(200, 5, 100);
}

void draw() {
  rx = width - mouseX;
  
  if (mousePressed) {
    line(mouseX, mouseY, xprev, yprev);
    line(rx, mouseY, width - xprev, yprev);
    line(mouseX, height - mouseY, xprev, height - yprev);
  } else {
    background(125);
  }
  xprev = mouseX;
  yprev = mouseY;
}

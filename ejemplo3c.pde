int xprev = 0;
int yprev = 0;
int rx = 0;
int ry = 0;
int rxp = 0;
int ryp = 0;
void setup() {
  size(800, 600);
  background(200, 5, 100);
}

void draw() {
  rx = width - mouseX;
  ry = height - mouseY;
  rxp = width - xprev;
  ryp = height - yprev;
  if (mousePressed) {
    line(mouseX, mouseY, xprev, yprev);
    line(rx, mouseY, rxp, yprev);
    line(mouseX, ry, xprev, ryp);
    line(rx, ry, rxp, ryp);
  } else {
    background(125);
  }
  xprev = mouseX;
  yprev = mouseY;
}

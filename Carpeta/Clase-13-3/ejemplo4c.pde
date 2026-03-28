int xprev = 0;
int yprev = 0;
void setup() {
  size(800, 600);
  
}
void draw() {
  setearLinea();
  imprimoCuatrolineas();
}

void setearLinea () {
  stroke(20);
  strokeWeight(5);
}

void imprimoCuatrolineas() {
  background(200, 5, 100);
  if (mousePressed) {
    line(mouseX, mouseY, xprev, yprev);
    line(width - mouseX, mouseY, width - xprev, yprev);
    line(mouseX, height - mouseY, xprev, height - yprev);
    line(width - mouseX, height - mouseY, width - xprev, height - yprev);
  } else {background(50, 100, 200);}
  xprev = mouseX;
  yprev = mouseY;
}

int radio = 0 ;
void setup() {
  size(800, 800);
}

void draw() {
  if (mousePressed) {
    radio++;
    reCirculos( mouseX, mouseY, radio, radio);
  }
}

void mouseReleased() {
  radio = 0 ;
}

void reCirculos(float x, float y, float w, float h) {
  ellipseMode(RADIUS);
  strokeWeight(2);
  fill(255, 30);
  ellipse(x, y, w/2, h/2);
  noFill();
  ellipse(x, y, w/4, h/4);
  ellipse(x, y, w/8, h/8);
  ellipse(x, y, w/16, h/16);
  ellipse(x, y, w/32, h/32);
  ellipse(x, y, w/64, h/64);
}

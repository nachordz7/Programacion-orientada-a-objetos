void setup() {
  size(800, 600);
}

void draw() {
  strokeWeight(random(20)); // trazo de una linea con un grosor random y maximo de 20; 
  line(mouseX, mouseY, pmouseX, pmouseY);
}
float mouseVel(){
  float ca = pmouseX - mouseX;
  float co = pmouseY - mouseY;
  float h = sqrt(ca*ca + co*co);
  return h;
}

int randomI(float maximo) {
  int val = round(random(maximo));
  return val;
}

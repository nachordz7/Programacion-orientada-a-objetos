void setup() {
  size(800, 600);
}

void draw() {
  strokeWeight(mouseVel()); // Aumenta el grosor de la linea si la velocidad del mouse aumenta. caso contrario se disminuye
  line(mouseX, mouseY, pmouseX, pmouseY);
}
//funcion para sacar la hipotenusa, ca = cateto adyacente, co = cateto opuesto, h = hipotenusa, sqrt() = formula de raiz;
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

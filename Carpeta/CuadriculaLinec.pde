//2do Programa. Cuadricula pero esta vez usando line 
int cant = 10;
void setup() {
  size(800, 600);
}

void draw() {
generarGrilla();
}

void generarGrilla(){
    float sep = width / cant;
  for (int i=0; i<cant; i++) {
    float x = i * sep;
    float y = i * sep;
    line(x, 0, x, height);
    line(0, y, width, y);
  }
}





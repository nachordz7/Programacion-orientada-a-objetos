int col = 12;
int fil = 12;
float [][] matriz;
void setup() {
  size(800, 600);
  
}

void draw() {
  matriz = new float [col][fil];
  float ancho = width/col;
  float alto  = width/fil;

  for (int i=0; i<col; i++) {
    for (int j=0; j<fil; j++) {
      float x = i * ancho;
      float y = j * alto;
      
      //rect(x, y, ancho, alto);
       
       
      //float  x1 = map(mouseX, 0, width, 50, 150);
      rect(x, y, ancho, alto);  
      
float value = 25;
float m = map(value, 0, 100, 0, width);
ellipse(mouseX, mouseY, m, 10);
          
    }
  }
  
}

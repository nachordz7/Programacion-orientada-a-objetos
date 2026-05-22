//Hacer 5 circulos separados horizontalmente
void setup(){
  size(800, 600) ;
  
}

void draw() {
  background(127);
  
  circulosSeparados();
}
void circulosSeparados() {
  for(int i=0;i<5;i++) {
    float xc = i*100;
    ellipse(xc,100,40,40) ;
  }
}
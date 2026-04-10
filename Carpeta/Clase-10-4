int cantFil = 15;
int cantCol = 9;
boolean [] [] fueCliqueado;
void setup(){
  size(800,600);
  fueCliqueado = new boolean [cantFil] [cantCol];
}

void draw(){
  float ancho = width/cantCol;
  float alto = height/cantFil;
  
  for(int i=0; i< cantCol; i++){
    for(int j=0; j< cantFil; j++){
      float x = i * ancho;
      float y = j * alto;
      
      rect(x,y,ancho,alto);
    }
  }
}

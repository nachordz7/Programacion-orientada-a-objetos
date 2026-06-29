class paleta(){
  PVector pos;
  int ancho;
  int alto;



pelota(float columna){
  pos=new PVector (columna,height/2);
}

void mostrar(){
  fill(255);
  rectMode(CENTER);
  rect(pos.x,pos.y,ancho,alto);
}

}

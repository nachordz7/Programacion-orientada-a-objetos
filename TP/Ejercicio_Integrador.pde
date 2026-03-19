/*
Ejercicio integrador. 
Como ejercicio de aplicación, se propone realizar una composición (dibujo) simple utilizando figuras básicas —por ejemplo círculos, rectángulos o líneas ubicadas mediante posiciones relativas dentro del canvas. 
El objetivo es que la organización visual de la composición se mantenga aunque se modifique el tamaño definido en size(). 
*/
int xprev = 0;
int yprev = 0;

void setup(){
  size(800,600);  
}

void draw(){
  background(180,120,120);
  int cx = width/2;
  int cy = height/2;
  circle(cx,cy,width/16); //Un circulo en el centro.
  rect(width/4, height/4, width/8, height/12); //Un rectangulo con posicion relativa.
  
  if(mousePressed){
    line(mouseX,mouseY,xprev,yprev); // Un trazo de linea
  }
  xprev = mouseX;
  yprev = mouseY;
} 

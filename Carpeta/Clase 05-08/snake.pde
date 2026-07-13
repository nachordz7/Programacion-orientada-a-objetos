int cantFil=15, cantCol=15;
float tamCol, tamFil;

//Movimiento
int dx=1, dy=0; //dirccion dl movimiento

//Cuerpo
int sTam =1; //tamaño del Snake
int[] sX = new int[cantFil*cantCol];
int[] sY = new int[cantFil*cantCol];

//Manzana
int mX =round(random(cantCol-1)), mY= round(random(cantFil-1));

void setup() {
  size(650, 650);
  tamCol= width/cantCol;
  tamFil= height/cantFil;
  //inicializar Snake
  sX[0]=cantCol/2;
  sY[0]=cantFil/2;
}

void draw() {
  chequarComida();
  moverSnake();

  mostrarGrilla() ;
  mostrarManzana();
  mostrarSnake();
  frameRate(5);
  println("X= ", dx, "Y=", dy, "tam", sTam);
}

void keyPressed() {
  if (dx==0) {
    if (key == 'd' || key == 'D') {
      dx=1;
      dy=0;
    }

    if (key == 'a' || key == 'A') {
      dx=-1;
      dy=0;
    }
  }

  if (dy==0) {
    if (key == 'w' || key == 'W') {
      dx=0;
      dy=-1;
    }
    if (key == 's' || key == 'S') {
      dx=0;
      dy=1;
    }
  }
}

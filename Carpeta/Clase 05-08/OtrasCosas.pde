void moverSnake() {
  //dx, dy; //dirccion dl movimiento
  //Cuerpo
  //int sTam =1; //tamaño del Snake
  //int[] sX = new int[cantFil*cantCol];
  //int[] sY = new int[cantFil*cantCol];

  for (int i = sTam-1; i >0; i--) {
    sX[i]=sX[i-1] ;
    sY[i]=sY[i-1] ;
  }



  sX[0]=sX[0] +dx;
  sY[0]=sY[0] +dy;
}

void chequarComida() {

  if ((sX[0] == mX )&& (sY[0] == mY)) {
    sTam = sTam+1;

    mX =round(random(cantCol-1));
    mY= round(random(cantFil-1));
  }
}

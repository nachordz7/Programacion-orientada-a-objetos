void mostrarGrilla() {
  fill(60);
  for (int j= 0; j<cantFil; j++) {
    float y=j*tamFil;
    for (int i = 0; i<cantCol; i++) {
      float x = i*tamCol;
      rect(x, y, tamCol, tamFil);
    }
  }
}

void mostrarSnake() {
  fill(222, 99, 22);
  for (int i = 0; i < sTam; i++) {
    float x = sX[i]*tamCol;
    float y = sY[i]*tamFil;
    rect(x, y, tamCol, tamFil);
  }
}

void mostrarManzana() {
  float x = mX*tamCol ;
  float y = mY *tamFil;
    fill(255, 0, 0);
  rect(x, y, tamCol, tamFil);
}

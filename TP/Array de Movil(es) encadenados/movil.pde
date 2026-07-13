class Movil {

  float x, y;
  float vx, vy;

  Movil(float x, float y) {
    this.x = x;
    this.y = y;
    vx = 0;
    vy = 0;
  }

  void seguir(float tx, float ty) {

    float dx = tx - x;
    float dy = ty - y;

    float distancia = dist(x, y, tx, ty);

    if (distancia > 1) {

      dx /= distancia;
      dy /= distancia;

      float velocidad = 2;

      vx = dx * velocidad;
      vy = dy * velocidad;
    }
  }

  void actualizar() {
    x += vx;
    y += vy;
  }

  void mostrar() {
    fill(255);
    noStroke();
    circle(x, y, 15);
  }
}

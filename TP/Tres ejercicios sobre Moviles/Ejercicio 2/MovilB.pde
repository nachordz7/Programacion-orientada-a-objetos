class MovilB {
  PVector pos;
  PVector vel = new PVector(0, 0);
  PVector acel = new PVector(0, 0);
  float velMax = 5;
  float d = 30;


  MovilB(float origenX, float origenY) {
    pos = new PVector(origenX, origenY);
  }

  void mostrar() {
    fill(100, 0, 150);
    stroke(0);
    circle(pos.x, pos.y, d);
  }

  void contener() {
    float radio = d / 2;

    if (pos.x > width - radio || pos.x < radio) {
      vel.x *= -1;
    }

    if (pos.y > height - radio || pos.y < radio) {
      vel.y *= -1;
    }
 }
    void perseguir(PVector objetivo) {
      PVector direccion = PVector.sub(objetivo, pos);
      direccion.normalize();
      direccion.mult(0.15);
      acel.add(direccion);
    }

    void mover() {
      vel.add(acel);
      vel.limit(velMax);
      pos.add(vel);
      contener();
      acel.mult(0);
    }
 
}

class MovilA {
  PVector pos;
  PVector vel = new PVector(5, 3);
  float d = 40;

  MovilA(float origenX, float origenY) {
    pos = new PVector(origenX, origenY);
  }

  void mostrar() {
    fill(50);
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

  void mover() {
    pos.add(vel);
    contener();
  }
}

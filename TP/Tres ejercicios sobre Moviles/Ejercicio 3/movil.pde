class Movil {

  PVector pos;
  PVector vel = new PVector(4, -3);
  PVector acel = new PVector();

  float d = 40;

  Movil(float x, float y) {
    pos = new PVector(x, y);
  }

  void mostrar() {
    fill(255);
    circle(pos.x, pos.y, d);
  }

  void contener() {
    float r = d / 2;

    if (pos.x > width - r) {
      pos.x = width - r;
      vel.x *= -1;
    } else if (pos.x < r) {
      pos.x = r;
      vel.x *= -1;
    }

    if (pos.y > height - r) {
      pos.y = height - r;
      vel.y *= -1;
    } else if (pos.y < r) {
      pos.y = r;
      vel.y *= -1;
    }
  }

  void mover() {
    vel.add(acel);
    vel.limit(15);
    pos.add(vel);
    acel.mult(0);
    contener();
  }

  void agregarFuerza(PVector f) {
    acel.add(f);
  }

  boolean choca(PVector p, float d2) {
    float dist = dist(pos.x, pos.y, p.x, p.y);
    float rad = d/2 + d2/2;
    return dist < rad;
  }

  void rebotar(Movil otro) {
    PVector dir = PVector.sub(pos, otro.pos);
    dir.normalize();
    vel = dir.mult(5);

    if (d > 10) {
      d -= 5;
    }
  }
}

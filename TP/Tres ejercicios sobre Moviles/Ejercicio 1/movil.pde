class Movil {
  PVector pos;
  PVector vel = new PVector(4, 3);
  PVector acel = new PVector(0, 0);
  float d = 40;
  
  float angulo = 0;        
  float velAngular = 0;    
  float acelAngular = 0;   

  Movil(float origenX, float origenY) {
    pos = new PVector(origenX, origenY);
  }

  void mostrar() {
    fill(200,100,0); 
    stroke(0); 
    
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(angulo);
    
    rectMode(CENTER);
    square(0, 0, d); 
    
    popMatrix();
  }

  void contener() {
    float radio = d / 2;
    if (pos.x > width - radio || pos.x < radio) {
      vel.x = vel.x * -1;
      acelAngular += vel.x * 0.01; 
    }
    if (pos.y > height - radio || pos.y < radio) {
      vel.y = vel.y * -1;
      acelAngular += vel.y * 0.01;
    }
  }

  void mover() {
    vel.add(acel);
    pos.add(vel);
    acel.mult(0); 
    
    velAngular += acelAngular; 
    angulo += velAngular;      
    
    velAngular *= 0.98; 
    acelAngular = 0;           
    
    contener();
  }

  void agregarFuerza(PVector F) {
    acel.add(F);
    acelAngular += (F.x * vel.y - F.y * vel.x) * 0.005 / d;
  }

  void alejar(PVector otro, float cuanto) {
    PVector r = pos.copy();
    r.sub(otro);
    r.normalize();
    r.mult(cuanto);
    agregarFuerza(r);
  }
}

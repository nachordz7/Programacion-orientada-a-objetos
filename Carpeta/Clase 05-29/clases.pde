class Movil {
  PVector pos, vel;
  int r;
  
  Movil(float x, float y){
    pos=new PVector (x,y);
    vel = new PVector(1,1);
    r = 20;
}
void mover(){
  pos.add(vel);
  contener();
}
void mostrar(){
  ellipse(pos.x,pos.y,r,r);
}
void contener(){
  if(pos.x<0 || pos.x > width){
    pos.sub(vel);
    vel.x = vel.x * -1;
}
if(pos.y<0 || pos.y > height){
  pos.sub(vel);
  vel.y= vel.y * -1;
}
}
}

/*
class Movil {
  PVector pos, vel;
  int r; // Esta es el radio, ojo que la declaraste en minúscula
  
  Movil(float x, float y){
    pos = new PVector(x, y);
    vel = new PVector(2, 3); // Le cambié la velocidad para que no vaya solo a 45 grados
    r = 20; // ¡Faltaba darle un valor al radio!
  }
  
  void mover(){
    pos.add(vel);
    contener();
  }
  
  void mostrar(){
    // Usamos 'r' (en minúscula) multiplicada por 2 porque ellipse pide ancho y alto (diámetro)
    ellipse(pos.x, pos.y, r * 2, r * 2); 
  }
  
  void contener(){
    // Corregido: pos.x en vez de pos.z
    if(pos.x < 0 || pos.x > width){
      vel.x = vel.x * -1; // Invierte dirección en X
    }
    
    // Corregido: pos.y en vez de pos.j
    if(pos.y < 0 || pos.y > height){
      vel.y = vel.y * -1; // Invierte dirección en Y
    }
  }
}

*/

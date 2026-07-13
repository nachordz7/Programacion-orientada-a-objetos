PVector pos, vel;
float d=40;
void setup() {
  size(800, 600);
  pos=new PVector(width/2, height/2);
  vel=new PVector(4, 3);
}
void draw() {
  vel.rotate(PI/300);
  pos.add(vel);
  if (pos.y > height - d/2 || pos.y < d/2) {
    vel.y=vel.y*-1;
  }
  if (pos.x > width - d/2 || pos.x < d/2 ) {
    vel.x=vel.x*-1;
  }
  println(pos.x, pos.y);
  circle(pos.x, pos.y, d);
}

PVector pos, vel;
float d=40;
void setup() {
  size(800, 600);
  pos=new PVector(width/2, height/2);
  vel=new PVector(4, 3);
}
void draw() {
  background(33);
  pos.add(vel);
  vel.rotate(PI/300);
  if (pos.y>=height || 0 >= pos.y) {
    vel.y=vel.y*(-1);
  }
  if (pos.x>=width || 0 >= pos.x) {
    vel.x=vel.x*(-1);
  }
  println(pos.x, pos.y);
  circle(pos.x, pos.y, d);
}

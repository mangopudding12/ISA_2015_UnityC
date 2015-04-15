// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

Mover m;

void setup() {
  size(600,600);
  m = new Mover(); 
}

void draw() {
  background(255);

  //PVector wind = new PVector(0.01,0);
  PVector gravity = new PVector(0,0.1);
 // m.applyForce(wind);
  m.applyForce(gravity);

  m.jump();
  m.update();
  m.display();
  m.checkEdges();

}

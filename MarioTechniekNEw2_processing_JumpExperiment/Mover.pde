// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  boolean h; 
  float velocitymax;



  Mover() {
    location = new PVector(30,height - (48/2));
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = 1;
    
    velocitymax = 10;
    
   
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void move() {
    
    velocity.limit (velocitymax);
    
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,48,48);
  }

  void checkEdges() 
  {


    if (location.y > height - (48/2)) 
    {
      //velocity.y *= -1;
      
      if (keyPressed) 
     {
       if (key == 'k')
       {
         velocity.y *= -1;
         velocity.limit (velocitymax);
         
       }
     }
          location.y = height - (48/2); 
    }
    
    
  }
   }



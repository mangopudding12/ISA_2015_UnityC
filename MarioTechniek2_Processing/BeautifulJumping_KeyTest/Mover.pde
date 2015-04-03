// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Mover {

  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
   

boolean boe;

  Mover() {
    location = new PVector(300,400);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
    mass = 1;
    boe = false;
  }
  
  void applyForce(PVector force) {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }

  void jump () {
    
        if (keyPressed == true)
        {
          
              if (key == 'k' || key == 'K')
              {    
                
              if (boe == true){  
              if (location.y > 575) {
                velocity.y *= -1;
                location.y = 574;
                boe = false;
                }}
              
              if (location.y > 575)
            {
                boe = true;
            }  
                
                   //println("Jumping");               
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0); 
    velocity.limit (7);
                acceleration.limit(1);
    println(velocity);
    println("hoi");
    println(acceleration );
    //println(location.y);
            }
              
        } else {
           if (location.y < 573){
              velocity.add(acceleration);
              location.add(velocity);
              acceleration.mult(0);  
              velocity.limit (10);
              
                acceleration.limit(1);
                println(velocity);
    println("hoi2");
    println(acceleration );
           }
             else 
             {
               println(location.y);
              
               boe = true;
                println(boe);
                
              
              
             }
          
        }
  }

  
void update() {
//    velocity.add(acceleration);
//    location.add(velocity);
//    acceleration.mult(0);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x,location.y,50,50);
  }

  void checkEdges() {

    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

   // if (location.y > height-25) {
   //   velocity.y *= -1;
    //  location.y = height-24;
    //}

  }

}


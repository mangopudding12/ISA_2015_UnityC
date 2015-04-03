
class Player
{ 
    PVector Location; // x en y locatie 
    PVector Velocity; // snelheid Links
    PVector acceleration; // versnelling
    
    float topSpeed; 
  
  Player()
  {
        Location = new PVector(0,530); 
        Velocity = new PVector(4,0); 
        
        // Moet heel klein zijn anders wordt Velocity langzaam heel veel sneller. 
        acceleration = new PVector(0.05,0);
        topSpeed = 10;
  }
  
  void display()
  {
      fill(100,200,50);
      
      // Belangrijk onthoud dat je geen vector kan gebruiken als argument binnen rect functie. 
      // want je moet precies aangeven welke waarde je aan spreekt. 
      // Dus bijvoorbeeld Location.x 
      rect(Location.x,Location.y,50,50); 
      
      // De magnitude als je processing aan doet is 530 omdat x = 0 en y = 530 een schuine zijde 
      // creeërd van 530. 
      float m = Location.mag();
      fill(90,100,200);
      rect (0,0,m,10);
      //println(Location.mag());
  }
  
  void move()
  {
    
        if (keyPressed == true)
        {
              if (key == 'J' || key == 'j')
              {    
                
                   

                    // versnelling wordt toegevoegt aan snelheid. 
                    Velocity.add (acceleration);
                    
                    // Er is een limit aan hoe snel dit kan gaan. 
                    Velocity.limit(topSpeed); 
                    
                    // De snelheid wordt aan locatie toegevoegt.
                    Location.minus (Velocity);    
                    println(Velocity.x);
              } 
             
             
              if(key =='l' || key == 'L')
              {
                   Velocity.add (acceleration);
                   Location.add(Velocity);
                   Velocity.limit(topSpeed);
              } 
        }
        else 
        {
        
            // Snelheid wordt gereset als je key lost laat. 
            Velocity.x = 4;
        }
        
        
  }
  
  void jump()
  {
     if (keyPressed == true)
        {
              if (key == 'k' || key == 'K')
              {    
                   println("Jumping");    
              }
        }
  }
  
}


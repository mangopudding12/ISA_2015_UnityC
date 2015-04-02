
class Player
{ 
    PVector Location; 
    PVector Velocity; 
  
  
  Player()
  {
        Location = new PVector(300,530); 
        Velocity = new PVector(4,0); 
  }
  
  void display()
  {
      fill(100,200,50);
      
      // Belangrijk onthoud dat je geen vector kan gebruiken als argument binnen rect functie. 
      // want je moet precies aangeven welke waarde je aan spreekt. 
      // Dus bijvoorbeeld Location.x 
      rect(Location.x,Location.y,50,50); 
      
      // Ik snap de lengte van de magnitude nog niet helemaal het is vaag. 
      float m = Location.mag();
      fill(90,100,200);
      rect (0,0,m,10);
      println(Location.mag());
  }
  
  void move()
  {
    
        if (keyPressed == true)
        {
              if (key == 'J' || key == 'j')
              {    
                    Location.minus (Velocity);    
              }

              if(key =='l' || key == 'L')
              {
                   Location.add(Velocity);
              }
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


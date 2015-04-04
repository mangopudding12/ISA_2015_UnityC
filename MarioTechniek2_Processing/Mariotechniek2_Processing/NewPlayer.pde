
// Er zijn nog problemen dat de spring functie..
// - Hoe springt soms extreem hoog 
// - Hij springt onregelmatig 
// - Als je springt en je druk op links en rechts gebreuren er rare dingen. 
// - Meer testen er zitten waarschijnlijk nog meer fouten in. 




class Player
{ 
    PVector Location; // x en y locatie 
    PVector Velocity; // snelheid Links
    PVector acceleration; // versnelling
    
    PVector jumpacceleration; // versnelling voor jumping
    PVector jumpVelocity;
    
    float topSpeed; // Die is de maximale snelheid die Velocity kan halen. 
    float massa;    // Die is de massa van het object - dit is nodig voor de gravity
    boolean ground; // Raakt het object de grond ?? 
  
  Player()
  {
        Location = new PVector(0,530); 
        Velocity = new PVector(4,0); 
        // Moet heel klein zijn anders wordt Velocity langzaam heel veel sneller. 
        acceleration = new PVector(0.05,0);
        
        // De jump vector, ik heb gemerkt als ik deze niet apart aanmaak dat het object dan niet meer normaal 
        // links en rechts kan bewegen. 
        jumpacceleration = new PVector (0,0);
        jumpVelocity = new PVector(0,0);
        
        // Variabelen. 
        topSpeed = 10;
        massa = 1; 
        ground = false; 
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
      //float m = Location.mag();
      //fill(90,100,200);
      //rect (0,0,m,10);
      //println(Location.mag());
  }
  
  void move()
  {    
        if (keyPressed == true)
        {
              // Links movement 
              if (key == 'J' || key == 'j')
              {    
                    // versnelling wordt toegevoegt aan snelheid. 
                    Velocity.add (acceleration);
                    
                    // Er is een limit aan hoe snel dit kan gaan. 
                    Velocity.limit(topSpeed); 
                    
                    // De snelheid wordt aan locatie toegevoegt.
                    Location.sub (Velocity);    
              } 
             
             
              // Right movement 
              if(key =='l' || key == 'L')
              {
                   Velocity.add (acceleration);
                   Location.add(Velocity);
                   Velocity.limit(topSpeed);
              } 
        } 
        else // Als keypressed if false !!!  
        {        
            // Snelheid wordt gereset als je key lost laat. 
            Velocity.x = 4;
        }
  }
  

  // Deze functie telt alle krachten zoals wind of zwaartekracht bij elkaar op 
  // Dan deelt hij deze krachten door de massa. Zo krijg je dus krachten die werken op jou object. 
  void applyForce(PVector force)
  {
      PVector f = PVector.div(force,massa); 
      jumpacceleration.add(f);
  }
  
  
  void jump()
  {
     if (keyPressed == true)
        {
              if (key == 'k' || key == 'K')
              {    
                   // Als je wilt springen en je staat op de ground moet ground true zijn anders ga je door grond heen.              
                   if (Location.y > 530)
                   {
                        ground = true;
                   }  
                
                   // Als object de ground raakt dan wordt jumpVelocity negatief zodat die niet door ground zakt. 
                   if (ground == true)
                   {
                        if (Location.y > 530) 
                        {
                            jumpVelocity.y *= -1;
                            Location.y = 529;
                            ground = false;
                        }

                   }
                
                   jumpVelocity.add(jumpacceleration);
                   Location.add(jumpVelocity); 
                   
                   // Hier wordt de acceleration gereset, voor de volgende keer als je springt. 
                   jumpacceleration.mult(0);
              }
        } // KeyPressed is false 
        else 
        {
              if (Location.y < 530)
              {
                  jumpVelocity.add(jumpacceleration);
                  Location.add(jumpVelocity);
                  jumpacceleration.mult(0);      
              }
              else 
              {
                ground = true;
              }
        }
        
        
        
        
        
  }
  
}



// Er zijn nog problemen dat de spring functie..
// - Hoe springt soms extreem hoog 
// - Hij springt onregelmatig 
// - Als je springt en je druk op links en rechts gebreuren er rare dingen. 
// - Meer testen er zitten waarschijnlijk nog meer fouten in. 

// ----------- Belangrijke informatie ----------------- 
// Spring hoogte is ongeveer 268,9002


class Player
{ 
    PVector Location; // x en y locatie
    //PVector LocationEnemy; // x en y locatie 
     
    PVector Velocity; // snelheid Links
    PVector acceleration; // versnelling
     
    float topSpeed; // Die is de maximale snelheid die Velocity kan halen. 
    float massa;    // Die is de massa van het object - dit is nodig voor de gravity
    boolean ground; // Raakt het object de wall ?? 
    boolean ground2; // grond
  
    float breedte; 
    float hoogte;
    float yInvisible_Line;  // Invisible line thing. 
    
    // Jumping player
    float jumpVelocitymax; 
    PVector jumpacceleration; // versnelling voor jumping
    PVector jumpVelocity;
    boolean Trying; 
    int pop; 
  
    
    
  // Contructor 
  Player(float Locationx_, float Locationy_,float breedte_,float hoogte_)
  {
        // Getting the data from the main class. 
        breedte = breedte_; 
        hoogte = hoogte_;
        Location = new PVector(Locationx_,Locationy_);
       
        Velocity = new PVector(4,0); 
        // Moet heel klein zijn anders wordt Velocity langzaam heel veel sneller. 
        acceleration = new PVector(0.05,0);
        
        // De jump vector, ik heb gemerkt als ik deze niet apart aanmaak dat het object dan niet meer normaal 
        // links en rechts kan bewegen. 
        jumpacceleration = new PVector (0,0);
        jumpVelocity = new PVector(0,0);
        
        // Variabelen. 
        massa = 1; 
        ground = false;  
        ground2 = false; 
        yInvisible_Line = Location.y+hoogte;
        jumpVelocitymax = 9;
        topSpeed = 10; 
  }

  // Deze functie telt alle krachten zoals wind of zwaartekracht bij elkaar op 
  // Dan deelt hij deze krachten door de massa. Zo krijg je dus krachten die werken op jou object. 
  void applyForce(PVector force)
  {
      PVector f = PVector.div(force,massa); 
      jumpacceleration.add(f);
  }

  
  void display()
  {
      fill(100,200,50);
      noStroke(); 
      
      // Belangrijk onthoud dat je geen vector kan gebruiken als argument binnen rect functie. 
      // want je moet precies aangeven welke waarde je aan spreekt. 
      // Dus bijvoorbeeld Location.x 
      rect(Location.x,Location.y,breedte,hoogte); 
   }

  




  
  void move(){
    // Getting the data from the main class.
    
    
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
  

  
  
  
  void jump()
  {
         // Makes the player jump 
         jumpVelocity.limit (jumpVelocitymax);  
         jumpVelocity.add(jumpacceleration);
         Location.add(jumpVelocity);
         jumpVelocity.limit (jumpVelocitymax);
         jumpacceleration.mult(0);
  }
  
  void PossibleJump()
  {  
         // ground = wall collosion 
         if (ground == true) 
         {   
              if (keyPressed) 
              {
                  if (key == 'k' || key == 'K')
                  {
                       jumpVelocity.y *= -1;
                       jumpVelocity.limit (jumpVelocitymax);
                       MainPlayer.ground = false;    
                  }
              }               
         } else {
            println("key = false");
            println(MainPlayer.ground);
         }
        
        // ground2 = ground collosion 
        if (ground2 == true) 
         {   
              if (keyPressed) 
              {
                  if (key == 'k' || key == 'K')
                  {
                       jumpVelocity.y *= -1;
                       jumpVelocity.limit (jumpVelocitymax);
                       MainPlayer.ground2 = false;
                  }
              }               
         }  else {
            println("key = false");
            println(MainPlayer.ground2);
         }
         
       
         
         
  } // EndPossibleJump___ if statement 
  
  
    
} // end of the class 


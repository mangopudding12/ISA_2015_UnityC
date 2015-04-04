
// Making the player
Player mainPlayer;

void setup() 
{
   // size of the screen. 
   size(1200,600);
  
   // Telling it is a new player. 
   mainPlayer = new Player();
}


void draw() 
{
    // The background per frame opnieuw getekend. 
    background(255); 
  
    // Grond 
    noStroke(); 
    fill(255,232,15);
    rect(0,580,1200,20);
     
    mainPlayer.display();
    mainPlayer.move(); 
  
    // The Force werken alleen op de jump functie.
    PVector gravity = new PVector(0,0.1); 
    mainPlayer.applyForce(gravity); 
    mainPlayer.jump(); 
}  

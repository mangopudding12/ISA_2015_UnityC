
// Making the player
Player mainPlayer;

// Maak 1 muur. 
Muren  muur1;

void setup() 
{
   // size of the screen. 
   size(1200,600);
  
   // Telling it is a new player. 
   mainPlayer = new Player();
   
   // Making the prefect muur. 
   muur1 = new Muren (400,380,60,200);
}


void draw() 
{
    // The background per frame opnieuw getekend. 
    background(255); 
  
    // Grond 
    noStroke(); 
    fill(255,232,15);
    rect(0,580,1200,20);
    
    // Display / move / jump player 
    mainPlayer.display();
    mainPlayer.move(); 
   
    // The Force werken alleen op de jump functie.
    PVector gravity = new PVector(0,0.15); 
    mainPlayer.applyForce(gravity); 
    mainPlayer.jump();
   
    // Draw the muur. 
    muur1.display(); 
    
    // Intersection between muren and player. 
    intersection();
}  


// Intersection between the muur1 and player. 
void intersection() 
   {
          println (mainPlayer.Location.x + mainPlayer.breedte);
                    
              // De player kan niet aan de linkerkant door de muur heen. 
              // muur1.xmuur + mainplayer.topSpeed + 1 = zorgt dat het alleen op linkskant muur geld.
              // Ook al krijgt het de top snelheid van 10.5 zelfs dan gaat niet door de muur heen. 
              if (mainPlayer.Location.x + mainPlayer.breedte > muur1.xmuur && mainPlayer.Location.x + mainPlayer.breedte < muur1.xmuur + mainPlayer.topSpeed + 1 && muur1.ymuur < mainPlayer.Location.y + mainPlayer.hoogte)
              {
                    mainPlayer.Location.x = 350;     
              }
   }

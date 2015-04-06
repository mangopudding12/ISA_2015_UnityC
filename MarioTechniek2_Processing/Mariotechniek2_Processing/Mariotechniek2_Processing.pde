

// Ik heb heel hard geprobeerd te programmeren dat het ook mogelijk was. 
// Om van de muur af te springen. Maar ik weet echt niet waarom het niet lukt. 
// Dat is gewoon heel erg vaag !!! 

// Intersection rechterkant muur nog maken. Daar kan je nog steeds als een spook door heen. 



// Making the player
Player mainPlayer;

// Maak 1 muur. 
Muren  muur1;

boolean sta_opMuur; //  


void setup() 
{
   // size of the screen. 
   size(1200,600);
  
   // Telling it is a new player. 
   mainPlayer = new Player();
   
   // Making the prefect muur. 
   muur1 = new Muren (400,380,60,200);
   
   sta_opMuur = false; 
}


void draw() 
{
    // The background per frame opnieuw getekend. 
    background(255); 
  
    // Grond 
    noStroke(); 
    fill(255,232,15);
    rect(0,580,1200,20);
    
    // The Force werken alleen op de jump functie.
    
    PVector gravity = new PVector(0,0.15); 
    mainPlayer.applyForce(gravity);
    mainPlayer.jump();
    
    // Intersection between muren and player. 
    intersection();
    mainPlayer.move();
    
    // Display / move / jump player 
    mainPlayer.display();
    
    // Draw the muur. 
    muur1.display(); 
}  


// Intersection between the muur1 and player. 
void intersection() 
   {      
              // De player kan niet aan de linkerkant door de muur heen. 
              // muur1.xmuur + mainplayer.topSpeed + 1 = zorgt dat het alleen op linkskant muur geld.
              // Ook al krijgt het de top snelheid van 10.5 zelfs dan gaat niet door de muur heen. 
              if (mainPlayer.Location.x + mainPlayer.breedte > muur1.xmuur && mainPlayer.Location.x + mainPlayer.breedte < muur1.xmuur + mainPlayer.topSpeed + 1 && muur1.ymuur < mainPlayer.Location.y + mainPlayer.hoogte)
              {
                    mainPlayer.Location.x = 350;     
              }
              
              
              // Dit zijn de checks om te kijken of de Player op de juiste positie is om op de muur te lopen. 
              if (mainPlayer.Location.y + mainPlayer.hoogte < muur1.ymuur)
              {
                if (mainPlayer.Location.x + mainPlayer.breedte > muur1.xmuur){
                     if (mainPlayer.Location.x < muur1.xmuur + muur1.breedte)
                     { 
                         if (mainPlayer.Location.y + mainPlayer.hoogte > muur1.ymuur - 12)
                         {
                             mainPlayer.Location.y = 330;  
                             sta_opMuur = true;        
                         }
                     }  
                }
              } 
              
              if (sta_opMuur == true)
              {
                  // Zorgt dat je op de muur kan lopen.
                  mainPlayer.Location.y = 330;
                  
                  // Wanneer je op de muur staat wordt jumpacceleration en jumpVelocity gereset. Anders springloopje over de muur.
                  mainPlayer.jumpacceleration.mult(0);           
                  mainPlayer.jumpVelocity.mult(0);
                  
                 // Zorgt ervoor dat je van de bovenkant muur kan afvallen. Inplaats dat je op de hoogte 330 blijft hangen.  
                 if (mainPlayer.Location.x > muur1.xmuur + muur1.breedte || mainPlayer.Location.x + mainPlayer.breedte < muur1.xmuur)
                 {
                   println("sta_opMuur = false"); 
                   sta_opMuur = false; 
                 }    
              }
   }

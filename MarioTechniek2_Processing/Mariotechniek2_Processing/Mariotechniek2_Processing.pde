

// Ik heb heel hard geprobeerd te programmeren dat het ook mogelijk was. 
// Om van de muur af te springen. Maar ik weet echt niet waarom het niet lukt. 
// Dat is gewoon heel erg vaag !!! 

// Intersection rechterkant muur nog maken. Daar kan je nog steeds als een spook door heen. 


// Making the Enemy 
Enemy Enemy1;

// Making the player
Player mainPlayer;

// Maak 1 muur. 
Muren  muur1;
Muren  muur2; 

boolean sta_opMuur; // muur1 
boolean sta_opMuur2;


void setup() 
{
   // size of the screen. 
   size(1200,600);
  
   // Telling it is a new player. 
   mainPlayer = new Player();
   
   Enemy1 = new Enemy();
   
   // Making the prefect muur. 
   muur1 = new Muren (400,380,60,200);
   muur2 = new Muren (850,380,60,200);
   
   sta_opMuur = false;
   sta_opMuur2 = false; 
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
    intersectionmuur1();
    intersectionmuur2();
    mainPlayer.move();
    
        
    // Display / move / jump player 
    mainPlayer.display();
    enemy1.display();
    
    // Draw the muur. 
    muur1.display(); 
    muur2.display();
}  



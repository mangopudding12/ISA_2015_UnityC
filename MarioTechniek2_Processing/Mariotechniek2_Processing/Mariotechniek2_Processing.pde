


Player mainPlayer;

void setup() 
{
    size(1200,600);
  
    mainPlayer = new Player();
  
}


void draw() 
{
  background(255); 
  
  // Grond 
  noStroke(); 
  fill(255,232,15);
  rect(0,580,1200,20);
  
  
  mainPlayer.display();
  mainPlayer.move(); 
  
  
  
}  


Mover movie; 

void setup () 
{
  size (600,600);
  movie = new Mover (); 
  
  
  
} 


void draw() 
{
  background (0);
  
  
  PVector gravity = new PVector (0,0.1);
  
  movie.applyForce(gravity); 
  
  
//movie.keyPressed();   
  movie.move();
  
 movie.checkEdges();
 
  movie.display();
  
  
  
} 

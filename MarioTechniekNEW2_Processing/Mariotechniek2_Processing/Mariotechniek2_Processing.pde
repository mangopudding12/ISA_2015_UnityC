// The classes 
Player MainPlayer; 
Muren[] Objects; 

// Variables 
int HowMuch_Objects; 


void setup() 
{
   // size of the screen. 
   size(1200,600);
   
   // Making the Player. 
   MainPlayer = new Player ();
 
   // Making the objects walls and ground plate. 
   HowMuch_Objects = 3; 
   Objects = new Muren[HowMuch_Objects]; 
   
   // Making the 3 Objects from walls and ground plate. 
   for (int i = 0; i < HowMuch_Objects-1; i++)
   {
      Objects[i] = new Muren(1000,yScreen-470,80,240); 
   }
  
}


void draw() 
{
    // The background per frame opnieuw getekend. 
    background(255); 
  
   PVector gravity = new PVector(0,0.15); 
   MainPlayer.applyForce(gravity);
   
   MainPlayer.move(); 
   MainPlayer.jump();  
   MainPlayer.display(); 
}  



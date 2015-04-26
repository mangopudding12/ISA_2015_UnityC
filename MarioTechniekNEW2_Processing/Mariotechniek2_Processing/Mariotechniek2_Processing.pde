// The classes 
Player MainPlayer;
Player Enemy; 
Ground grond;
Muren[] Objects;  

// Variables 
int HowMuch_Objects; 

     int k; 
     int k1;
     int k2; 

void setup() 
{
   // size of the screen. 
   size(1200,600);
   
   
   HowMuch_Objects = 2; 
   
   // Making the Player. 
   MainPlayer = new Player (50,200,50,50);
   Enemy = new Player (70,100,20,40);
  
   // Making the objects walls and ground plate. 
   Objects = new Muren[HowMuch_Objects]; 
   Objects[0] = new Muren(500,350,90,280); // wall  
   Objects[1] = new Muren (900,350,90,280); // wall
   
   grond = new Ground (0,580,1200,20); // ground
}


void draw() 
{
       // The background per frame opnieuw getekend. 
       background(255); 

       // Making the gravity alive so that you can jump
       PVector gravity = new PVector(0,0.15); 
       MainPlayer.applyForce(gravity);   
              
       MainPlayer.PossibleJump();
       MainPlayer.jump(); // Het werkt als het hier staat.      
       MainPlayer.move();  
       MainPlayer.display();     
        
       
           
// --------------------------------------------- For loop part ---------------------------
       // Drawing the walls    
       for (int p = 0; p < HowMuch_Objects; p++)
       {
         
         // Grond collsion 
           if (MainPlayer.Location.x < grond.xground + grond.breedte && MainPlayer.Location.x + MainPlayer.breedte > grond.xground + 2 && MainPlayer.Location.y + MainPlayer.hoogte > grond.yground - MainPlayer.jumpVelocity.y)
           { 
                MainPlayer.Location.y = (grond.yground-MainPlayer.jumpVelocity.y) - MainPlayer.hoogte;
                MainPlayer.ground2 = true;
                println("grondbovenop");
                println( MainPlayer.ground2);
           }
           
           // Collision detection between objects and player. 
           // Deze collision detects de bovenkant wall. 
           if (MainPlayer.Location.x < Objects[p].xmuur + (Objects[p].breedte - MainPlayer.topSpeed)  && MainPlayer.Location.x + MainPlayer.breedte > (Objects[p].xmuur + (MainPlayer.topSpeed+1)) && MainPlayer.Location.y + MainPlayer.hoogte > Objects[p].ymuur - MainPlayer.jumpVelocity.y)
           { 
                       MainPlayer.Location.y = (Objects[p].ymuur-MainPlayer.jumpVelocity.y) - MainPlayer.hoogte;
                       println("Bovenop");
                       MainPlayer.ground = true;
                       println(MainPlayer.ground);
           } 
           
               // Linkerkant wall 
               else if (MainPlayer.Location.x + MainPlayer.breedte > Objects[p].xmuur && MainPlayer.Location.y + MainPlayer.hoogte > Objects[p].ymuur - MainPlayer.jumpVelocity.y && MainPlayer.Location.x < Objects[p].xmuur)
               {
                    MainPlayer.Location.x = Objects[p].xmuur - MainPlayer.breedte; 
                    println("Linkerkant");
                    MainPlayer.ground = false;
               }
               
               // Rechterkant wall
               else if (MainPlayer.Location.y + MainPlayer.hoogte > Objects[p].ymuur - MainPlayer.jumpVelocity.y && MainPlayer.Location.x < Objects[p].xmuur + Objects[p].breedte && MainPlayer.Location.x > Objects[p].xmuur)
               { 
                    MainPlayer.Location.x = Objects[p].xmuur + Objects[p].breedte;
                    println("Rechterkant");
                    MainPlayer.ground = false;
               }            
         
                 // Making the walls and the ground.
                 noStroke();  
                 Objects[p].display(90,200,250);                      
        } // end forloop
        
        grond.display(250,120,10);         
}  



// The classes 
Player MainPlayer;
Player Enemy; 
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
   
   // Making the Player. 
   MainPlayer = new Player (0,400,50,50);
   Enemy = new Player (520,100,20,40);
 
   // Making the objects walls and ground plate. 
   HowMuch_Objects = 3; 
   Objects = new Muren[HowMuch_Objects]; 
   
   // Intialsing 
   Objects[0] = new Muren(500,350,90,280); // wall  
   Objects[1] = new Muren (900,350,90,280); // wall
   Objects[2] = new Muren (0,580,1200,20); // Ground 
}


void draw() 
{
       // The background per frame opnieuw getekend. 
       background(255); 
  
  
      // Making the gravity alive so that you can jump
       PVector gravity = new PVector(0,0.15); 
       MainPlayer.applyForce(gravity);
                   
       // Function / display the player.
       MainPlayer.move(10); 
                           
// --------------------------------------------- For loop part ---------------------------
      
      
      
      
      
      
       // Drawing the walls    
       for (int p = 0; p < HowMuch_Objects; p++)
       {
         // Giving the walls the same color and the ground a other. 
         if (p >= HowMuch_Objects - 1)
          {      // ground color
               k = 250;
               k1 = 120;
               k2 = 10; 
           } else { // walls colors 
               k = 90;
               k1 = 200;
               k2 = 250; 
           } 
           
           // Making the walls and the ground.
           noStroke();  
           Objects[p].display(k,k1,k2);          
            
            
           // Collision detection between objects and player. 
           
                 // Intersection Right side // Important the -1 don't remove
                 // When the -1 is gone the player will touch the top from the wall and will spring to the side of the wall weird !!! 
//                 if (MainPlayer.Location.y + (MainPlayer.hoogte-1) > Objects[p].ymuur)
//                 { 
//                   if (MainPlayer.Location.x < Objects[p].xmuur + Objects[p].breedte && MainPlayer.Location.x > Objects[p].xmuur)
//                   {
//                       println(p); 
//                       MainPlayer.Location.x = Objects[p].xmuur + Objects[p].breedte;
//                   }               
//                 }

                // Intersection Left side 
//                if (MainPlayer.Location.y + (MainPlayer.hoogte -1) > Objects[p].ymuur)
//                   {               
//                     // Hier gaan ook dingen verkeerd !!! volgens mij moeten het aparte lijnene worden.
//                     if (MainPlayer.Location.x + MainPlayer.breedte > Objects[p].xmuur && MainPlayer.Location.x < Objects[p].xmuur + Objects[p].breedte)
//                     {
//                         println(p); 
//                         MainPlayer.Location.x = Objects[p].xmuur - MainPlayer.breedte;
//                     }  
//                   }

                MainPlayer.jump(5); // Het werkt als het hier staat.

                // Intersection Top side 
                if (MainPlayer.Location.y + MainPlayer.hoogte >= Objects[p].ymuur && MainPlayer.Location.x < Objects[p].xmuur + Objects[p].breedte && MainPlayer.Location.x + MainPlayer.breedte > Objects[p].xmuur )
                   {
                           println(p);
                           println("Ground true");
                           println("velocity"); 
                           println(MainPlayer.jumpVelocity.y);
                           MainPlayer.ground = true;
                          MainPlayer.Location.y = Objects[p].ymuur - (MainPlayer.hoogte); 
                   } else { 
                     //println(MainPlayer.jumpVelocity.y);
                     println(p);
                     println("Ground false");
                     MainPlayer.ground = false;
                   }
       
                     
                   MainPlayer.PossibleJump();
                   MainPlayer.display();          
        } // end forloop
}  



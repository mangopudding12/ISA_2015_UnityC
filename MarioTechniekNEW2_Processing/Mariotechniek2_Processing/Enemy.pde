

class Enemy
{ 
    float xEnemy; 
    float yEnemy;
    float hEnemy; 
    float bEnemy; 
    float speedEnemy; 
  
    // Contructor 
    Enemy(float xEnemy_, float yEnemy_, float bEnemy_, float hEnemy_) 
    {  
      xEnemy = xEnemy_;
      yEnemy = yEnemy_;
      hEnemy = hEnemy_; 
      bEnemy = bEnemy_;
      speedEnemy = 3;       
    }
  
  
    void display() 
    {
        fill (200,10,70);
        rect(xEnemy,yEnemy,bEnemy,hEnemy);
    }
    
    void TouchPlayer()
    {           
           // Collision detection between objects and player. 
           // Deze collision detects de bovenkant wall. 
           if (MainPlayer.Location.x < xEnemy + (bEnemy - (MainPlayer.topSpeed))  &&  MainPlayer.Location.x + MainPlayer.breedte > (xEnemy + (MainPlayer.topSpeed+1)) && MainPlayer.Location.y + MainPlayer.hoogte > yEnemy - MainPlayer.jumpVelocity.y )
           {  
                       MainPlayer.Location.y = (yEnemy -MainPlayer.jumpVelocity.y) - MainPlayer.hoogte;
                       println("Bovenop");
                       MainPlayer.ground = true;
                       MainPlayer.dead = true; 
           } 
           
               // Linkerkant wall 
               else if (MainPlayer.Location.x + MainPlayer.breedte >= xEnemy && MainPlayer.Location.y + MainPlayer.hoogte > yEnemy - MainPlayer.jumpVelocity.y && MainPlayer.Location.x < xEnemy)
               {
                    MainPlayer.Location.x = xEnemy - MainPlayer.breedte; 
                    println("Linkerkant");
                    MainPlayer.ground = false; 
                    MainPlayer.dead = true;              
               }
               
               // Rechterkant wall
               else if (MainPlayer.Location.y + MainPlayer.hoogte > yEnemy - MainPlayer.jumpVelocity.y && MainPlayer.Location.x <= xEnemy + bEnemy && MainPlayer.Location.x > xEnemy)
               { 
                    MainPlayer.Location.x = xEnemy + bEnemy;
                    println("Rechterkant");
                    MainPlayer.ground = false;
                    MainPlayer.dead = true; 
               }            
    }
       
    void move() 
    {
         xEnemy -= speedEnemy; // Giving the enemy speed.
       
        // Enemy bounce at the walls. So moving from the right to the left. 
        if (xEnemy <= Objects[0].xmuur + Objects[0].breedte || xEnemy + bEnemy >= Objects[1].xmuur)
            {
                println("working");
                speedEnemy = speedEnemy * -1; 
            }      
    } 
}

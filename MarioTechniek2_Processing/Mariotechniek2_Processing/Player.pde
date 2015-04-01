





// Te Do list van Player-----Basis


//--------------- Beweging---------------------- 
// - Wordt bestuurt met de toetsen j = links l = recht spatiebalk = springen. 
// - Mooie ease in en ease out 


// ---------------- Springen --------------------- 
// Moet springen als je op spatiebalk drukt 
// Gravietie met springen toevoegen. 


class Player
{ 
    public float x_player;
    public float y_player;
    float easing; 
    int speedx; 
    float jumping;
    
    // Contructor 
    Player() 
    {  
        x_player = 100; 
        y_player = 530;
        easing = 0.05; 
        speedx =200; 
        jumping = 8; 
        
    }
  
  
    void display() 
    {
        fill(100,200,50);
        rect(x_player,y_player,50,50); 
    }
    
    
    void move() 
    {
        if (keyPressed == true)
        {
              if (key == 'J' || key == 'j')
              {        
                  x_player = lerp (x_player,x_player-100,0.06);   
              } 
                
                
              if (key == 'L' || key == 'l')
              {
                 x_player = lerp (x_player,x_player+100,0.06);  
              }
              
              
              if(key =='k' || key == 'K')
              {
                float gravity = 0.1;
                 y_player = y_player - jumping;
                // Add gravity to speed.
                  jumping = jumping + gravity;
  
                if (y_player <= 300 || y_player >= 530)
                {
                  jumping = jumping * -0.90;
                }
              } else {
                
            
                
              }
              
  
  
  
  
      
        }
    

      
    }
    
}
  





// Te Do list van Enemy-----Basis


//--------------- Beweging---------------------- 
// - Heen en weer bewegen tussen de twee muren.  (Links naar Rechts)
// - Beweging met een mooie eas in en ease out. 

//--------------Interacctie Player------------------------
// Kan niet door de player heen bewegen. 


class Enemy
{ 
    float xEnemy; 
    float yEnemy;
     
  
    // Contructor 
    Enemy() 
    {  
      xEnemy = 500;
      yEnemy = 20;
      
    }
  
  
    void display() 
    {
        rect(xEnemy,yEnemy,20,40);
    }
    
    
    void move() 
    {
       
    }
    
  
  
  
  
  
  
}

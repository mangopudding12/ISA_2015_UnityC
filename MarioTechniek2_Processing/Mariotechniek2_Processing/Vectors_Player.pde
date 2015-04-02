

// Location Vector Player 
// Velocity vector Player

// Ik denk dat je de vector gewoon twee keer kan gebruiken en dan noem je 
// de newe vector de ene keer gewoon location en de andere keer velocity. 
// Maar omdat velocity ook alleen een x en y speed gebruikt is 1 vector dus genoeg. 
// Gebruiken alle vectors niet gewoon alleen een x en y ??????? 

class PVector
{ 
    float x; 
    float y; 

    // Constructor van een vector. 
    PVector (float x_, float y_)  
    {
        x = x_;
        y = y_; 
    }
  
    // Deze functie zorgt ervoor dat je twee vectors met elkaar kan optellen.
    void add (PVector v)
    {
       y = y + v.y;
       x = x + v.x;   
    }
    
    void minus (PVector f)
    {
        y = y - f.y;
        x = x - f.x;
    }
    
    float mag()
    {
        return sqrt(x*x + y*y);
    }
}



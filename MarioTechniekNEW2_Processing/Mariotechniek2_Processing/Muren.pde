


// Te Do list van Muren-----Basis

// ---------- Interactie player en enemy ------------- 
// Ze kunnen allebij niet door de muur heen lopen. 
// Player kan op de muur staan. 

// Extra laat de muur van kleur veranderen als de player hem aanraakt. 

class Muren  
{ 
    public float xmuur;
    public float ymuur;
    public float hoogte; 
    public float breedte; 
    
       
  
    // Contructor 
    Muren(float xmuur_,float ymuur_,float breedte_,float hoogte_) 
    {  
         xmuur = xmuur_;
         ymuur = ymuur_;
         hoogte = hoogte_;
         breedte = breedte_;
    }
  
  
    void display() 
    {
        fill (150,10,90);
        rect (xmuur,ymuur,breedte,hoogte);
    }
    
  
    
  
}

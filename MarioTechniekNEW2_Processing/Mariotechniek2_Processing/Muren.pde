


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
    
    float kleur1; 
    float kleur2;
    float kleur3; 
           
  
    // Contructor 
    Muren(float xmuur_,float ymuur_,float breedte_,float hoogte_) 
    {  
         xmuur = xmuur_;
         ymuur = ymuur_;
         hoogte = hoogte_;
         breedte = breedte_;
    }
  
  
    void display(float kleur1_,float kleur2_,float kleur3_) 
    {
       kleur1 = kleur1_; 
       kleur2 = kleur2_;
       kleur3 = kleur3_; 
       
       fill (kleur1,kleur2,kleur3);
       rect (xmuur,ymuur,breedte,hoogte);
    } 
}

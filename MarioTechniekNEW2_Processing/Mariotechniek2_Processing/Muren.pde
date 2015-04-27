
class Muren  
{ 
    float xmuur;
    float ymuur;
    float hoogte; 
    float breedte; 
    
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
    
} // end of Muren class

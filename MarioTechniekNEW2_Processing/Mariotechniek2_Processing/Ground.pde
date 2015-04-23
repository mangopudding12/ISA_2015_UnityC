
class Ground 
{ 
    public float xground;
    public float yground;
    public float hoogte; 
    public float breedte; 
    
    float kleur1; 
    float kleur2;
    float kleur3; 
           
  
    // Contructor 
    Ground(float xground_,float yground_,float breedte_,float hoogte_) 
    {  
         xground = xground_;
         yground = yground_;
         hoogte = hoogte_;
         breedte = breedte_;
    }
  
  
    void display(float kleur1_,float kleur2_,float kleur3_) 
    {
       kleur1 = kleur1_; 
       kleur2 = kleur2_;
       kleur3 = kleur3_; 
       
       fill (kleur1,kleur2,kleur3);
       rect (xground,yground,breedte,hoogte);
    } 
}

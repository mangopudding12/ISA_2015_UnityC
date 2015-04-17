
// Het is mogelijk een onzichtbare stroke te tekenen. 

float xline; 

void setup () 
{
  size(600,600);
}

void draw() 
{
  
  // Moving the line.  
  xline ++; 
  
  // Making the line invisible, to give him noStroke.  
  noStroke ();
  line(xline,300,100,300);
  
  // Print xline values
  println(xline);
}

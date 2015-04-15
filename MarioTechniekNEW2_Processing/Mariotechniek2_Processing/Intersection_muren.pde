
// Intersection between the muur1 and player. 
void intersectionmuur1() 
   {      
              // De player kan niet aan de linkerkant door de muur heen. 
              // muur1.xmuur + mainplayer.topSpeed + 1 = zorgt dat het alleen op linkskant muur geld.
              // Ook al krijgt het de top snelheid van 10.5 zelfs dan gaat niet door de muur heen. 
              if (mainPlayer.Location.x + mainPlayer.breedte > muur1.xmuur && mainPlayer.Location.x + mainPlayer.breedte < muur1.xmuur + mainPlayer.topSpeed + 1 && muur1.ymuur < mainPlayer.Location.y + mainPlayer.hoogte)
              {
                    mainPlayer.Location.x = 350;     
              }
              
              // De player kan niet door de rechterkant van de muur heen. 
              if (mainPlayer.Location.x < muur1.xmuur + muur1.breedte && muur1.ymuur < mainPlayer.Location.y + mainPlayer.hoogte && mainPlayer.Location.x > muur1.xmuur + muur1.breedte - (mainPlayer.topSpeed + 1))
              {
                    mainPlayer.Location.x = 460; 
              }
              
                        
              // Dit zijn de checks om te kijken of de Player op de juiste positie is om op de muur te lopen. 
              if (mainPlayer.Location.y + mainPlayer.hoogte < muur1.ymuur)
              {
                if (mainPlayer.Location.x + mainPlayer.breedte > muur1.xmuur){
                     if (mainPlayer.Location.x < muur1.xmuur + muur1.breedte)
                     { 
                         if (mainPlayer.Location.y + mainPlayer.hoogte > muur1.ymuur - 12)
                         {
                             mainPlayer.Location.y = 330;  
                             sta_opMuur = true;        
                         }
                     }  
                }
              } 
              
              if (sta_opMuur == true)
              {
                  // Zorgt dat je op de muur kan lopen.
                  mainPlayer.Location.y = 330;
                  
                  // Wanneer je op de muur staat wordt jumpacceleration en jumpVelocity gereset. Anders springloopje over de muur.
                  mainPlayer.jumpacceleration.mult(0);           
                  mainPlayer.jumpVelocity.mult(0);

                 // Zorgt ervoor dat je van de bovenkant muur kan afvallen. Inplaats dat je op de hoogte 330 blijft hangen.  
                 if (mainPlayer.Location.x > muur1.xmuur + muur1.breedte || mainPlayer.Location.x + mainPlayer.breedte < muur1.xmuur)
                 {
                   println("sta_opMuur = false"); 
                   sta_opMuur = false; 
                 }    
              }
   }
   
   
   
// Intersection between the muur1 and player. 
void intersectionmuur2() 
   {      
              // De player kan niet aan de linkerkant door de muur heen. 
              // muur1.xmuur + mainplayer.topSpeed + 1 = zorgt dat het alleen op linkskant muur geld.
              // Ook al krijgt het de top snelheid van 10.5 zelfs dan gaat niet door de muur heen. 
              if (mainPlayer.Location.x + mainPlayer.breedte > muur2.xmuur && mainPlayer.Location.x + mainPlayer.breedte < muur2.xmuur + mainPlayer.topSpeed + 1 && muur2.ymuur < mainPlayer.Location.y + mainPlayer.hoogte)
              {
                    mainPlayer.Location.x = muur2.xmuur - mainPlayer.breedte;     
              }
              
              // De player kan niet door de rechterkant van de muur heen. 
              if (mainPlayer.Location.x < muur2.xmuur + muur2.breedte && muur2.ymuur < mainPlayer.Location.y + mainPlayer.hoogte && mainPlayer.Location.x > muur2.xmuur + muur2.breedte - (mainPlayer.topSpeed + 1))
              {
                    mainPlayer.Location.x = muur2.xmuur + muur2.breedte; 
              }
              
                        
              // Dit zijn de checks om te kijken of de Player op de juiste positie is om op de muur te lopen. 
              if (mainPlayer.Location.y + mainPlayer.hoogte < muur2.ymuur)
              {
                if (mainPlayer.Location.x + mainPlayer.breedte > muur2.xmuur){
                     if (mainPlayer.Location.x < muur2.xmuur + muur2.breedte)
                     { 
                         if (mainPlayer.Location.y + mainPlayer.hoogte > muur2.ymuur - 12)
                         {
                             mainPlayer.Location.y = 330;  
                             sta_opMuur2 = true;        
                         }
                     }  
                }
              } 
              
              if (sta_opMuur2 == true)
              {
                  // Zorgt dat je op de muur kan lopen.
                  mainPlayer.Location.y = 330;
                  
                  // Wanneer je op de muur staat wordt jumpacceleration en jumpVelocity gereset. Anders springloopje over de muur.
                  mainPlayer.jumpacceleration.mult(0);           
                  mainPlayer.jumpVelocity.mult(0);
                  
                 // Zorgt ervoor dat je van de bovenkant muur kan afvallen. Inplaats dat je op de hoogte 330 blijft hangen.  
                 if (mainPlayer.Location.x > muur2.xmuur + muur2.breedte || mainPlayer.Location.x + mainPlayer.breedte < muur2.xmuur)
                 {
                   println("sta_opMuur = false"); 
                   sta_opMuur2 = false; 
                 }    
              }
   }

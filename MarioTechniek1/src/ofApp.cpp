#include "ofApp.h"

// Het probleem van de rode bal weg krijgen. 
// Kan je makkelijk doen door gewoon de rode bal niet meer te tekenen. Dat werkt zeer goed. 

//--------------------------------------------------------------
void ofApp::setup(){

	
	// this code say you don't see the mouse 
		ofHideCursor(); 

	// Setup the data player 
		yyMario = 700; 
		xxMario = 40;
		lMario = 30; 
		hMario= 30; 
		stateSpring = 0; 

	// Setup the date Scare 
		yyScare = 550; 
		xxScare = 700; 
		hScare = 40;
		lScare= 50;

		kleur1 = 100; 
		kleur2 = 0; 
		kleur3 = 250; 

	// Switch --- is the Scare active of non active 
	// So the Scare is active now =) 
		Switch = true; 

	// Special Power thing 
	//xxSpecialPower = 720; 
	//yySpecialPower = 566;
	//LSpecialPower = 15;
	//HSpecialPower = 15; 
	//stateSpecialPower= 0; 
	//XspeedSpecialPower = 1; 


		 //set up the SpecialPowre
		 for(int i = 0; i <= NUM_SPECIALPOWER ; i ++ )
		 {
				SpecialPower u;
				u.xxSpecialPower = 720; 
				u.yySpecialPower = 566;
				u.LSpecialPower = 15;
				u.HSpecialPower = 15;  
				u.XspeedSpecialPower = 1; 

				// this push all the circles we made to the vector 
		       mySpecialPower.push_back(u);

         }
			

		       // Cout the groote van de vector 
               cout << mySpecialPower.size() << " number of elements in the vector"<<endl;


			   // SpecialPower state 
			   stateSpecialPower= 0;
}

//--------------------------------------------------------------
void ofApp::update(){
	
// ----------------------Jumping function player--------------------------------------------- 
//--------------Colision detection with Mario and Scare----------Scare active or non active ---------
			
			if (stateSpring == 1) 
			{	
				if (xxScare < xxMario + lMario && 
							xxScare + lScare > xxMario && 
				   			yyScare < yyMario + hMario && 
							yyScare + hScare > yyMario )
				{
							// Dan mag mario maar tot 600 springen
							if (yyMario > 600)
							{ 
								yyMario -=7;
							}
						   else if ( yyMario <=600)
							{
								stateSpring =2; 
							} 

									// De scare kan van kleur veranderen .............
									if (Switch == true)
									{
											  kleur1 = 120; 
											  kleur2 = 120; 
											  kleur3 = 120;

											  stateSpecialPower = 1;
											  //cout << "stateSpecialPower = 1" << endl; 
											  Switch = false;
									} 
									else // Scare is niet meer active ................
									{
											// gebeurt niks meer 
									} 
				} 
				else // als Mario het blok niet raakt dan ...................
				{
							// Dan mag mario tot 500 springen.
							if (yyMario > 500)
							{ 
								yyMario -=7;
							}
						   else if ( yyMario <=500)
							{
								stateSpring =2; 
							} 
				} 
			} // Als Mario spring hoogte heeft bereikt gaat die weer naar beneden. 
			else if (stateSpring ==2)
			{
					if (yyMario < 700)
						{
								yyMario +=2;
						}
					else if (yyMario >=700)
						{
								// Wait until the player press spatibalk 
								stateSpring =0;
						}
			}


			// SpecialPower thing states 
			// Goes out of the boxs  -------		UP. 

			for (int u=0; u <= NUM_SPECIALPOWER; u++)
			{
					if (stateSpecialPower == 1)
					{
								if (mySpecialPower[u].yySpecialPower > (yyScare-19))
									{
											mySpecialPower[u].yySpecialPower -= 0.10; 				
									} 
								else 
									{
											stateSpecialPower = 2; 
									}
					} // Goes right  ----------- right speed.
					else if (stateSpecialPower ==2)
					{
									if (mySpecialPower[u].xxSpecialPower < 761)
										{
												mySpecialPower[u].xxSpecialPower += 0.20; 				
										} 
								else 
										{
												stateSpecialPower = 3; 
										}
					} // goes down ---------- Down 
					else if (stateSpecialPower == 3)
					{
									if (mySpecialPower[u].yySpecialPower <= 723)
										{
													mySpecialPower[u].yySpecialPower += 2; 
										}
									else 
										{
													stateSpecialPower = 4; 
										}	
					} // Get a speed to the right -------- right  
					else if (stateSpecialPower == 4)
					{
									// give SpecialPower a speed. 
									mySpecialPower[u].xxSpecialPower += mySpecialPower
									[u].XspeedSpecialPower; 

									// The SpecialPower bounce at the side of the screen
									if (mySpecialPower[u].xxSpecialPower > (ofGetWidth() - 15 )|| 
										mySpecialPower[u].xxSpecialPower < 15)
										{
													mySpecialPower[u].XspeedSpecialPower = mySpecialPower
													[u].XspeedSpecialPower * -1;  
										}
					}
			}



}

//--------------------------------------------------------------
void ofApp::draw()
{
	// Special Power thing 
	for (int u = 0; u <= NUM_SPECIALPOWER; u++)
	{
	ofSetColor (250,0,30); 
	ofCircle(mySpecialPower[u].xxSpecialPower, mySpecialPower[u].yySpecialPower,      
	mySpecialPower[u].LSpecialPower, mySpecialPower[u].HSpecialPower ); 
	}

	// player
	ofSetColor(90,90,90);
	ofCircle(xxMario, yyMario, lMario,hMario);

	// Scare Blok thing 
	ofSetColor (kleur1,kleur2,kleur3); 
	ofRect(xxScare,yyScare,lScare,hScare);
}



//--------------------------------------------------------------
void ofApp::keyPressed(int key){

	//cout << key << endl;

	// Player Right  
	if (key == 358) 
		{
				xxMario +=15;
		}	  

	// Player Left
	if (key == 356)
		{
				xxMario -=15;
		}

	// Player Jump function 
	if (key == 32 )
		{
			// Jumping up player
			stateSpring =1;		
		} 
	else 
		{
			// goes down player
			stateSpring =2;
		}
}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

 

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){











}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}

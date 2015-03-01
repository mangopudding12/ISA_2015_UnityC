#include "ofApp.h"



//--------------------------------------------------------------
void ofApp::setup(){

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
	xxSpecialPower = 720; 
	yySpecialPower = 566;
	LSpecialPower = 15;
	HSpecialPower = 15; 
	stateSpecialPower= 0; 
	XspeedSpecialPower = 1; 
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
											  cout << "stateSpecialPower = 1" << endl; 
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
			if (stateSpecialPower == 1)
			{
						if (yySpecialPower > (yyScare-19))
							{
									yySpecialPower -= 0.10; 				
							} 
						else 
							{
									stateSpecialPower = 2; 
							}
			} // Goes right  ----------- right speed.
			else if (stateSpecialPower ==2)
			{
							if (xxSpecialPower < 761)
								{
										xxSpecialPower += 0.20; 				
								} 
						   else 
								{
										stateSpecialPower = 3; 
								}
			} // goes down ---------- Down 
			else if (stateSpecialPower == 3)
			{
							if (yySpecialPower <= 723)
								{
											yySpecialPower += 2; 
								}
							else 
								{
											stateSpecialPower = 4; 
								}	
			} // Get a speed to the right -------- right  
			else if (stateSpecialPower == 4)
			{
							// give SpecialPower a speed. 
							xxSpecialPower += XspeedSpecialPower; 

							// The SpecialPower bounce at the side of the screen
							if (xxSpecialPower > (ofGetWidth() - 15 )|| xxSpecialPower < 15)
								{
											XspeedSpecialPower = XspeedSpecialPower * -1;  
								}
			}




}

//--------------------------------------------------------------
void ofApp::draw()
{
	// Special power thing 
	ofSetColor (250,0,30); 
	ofCircle(xxSpecialPower,yySpecialPower,LSpecialPower,HSpecialPower ); 

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

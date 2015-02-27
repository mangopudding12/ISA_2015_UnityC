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

}

//--------------------------------------------------------------
void ofApp::update(){
	// aaaaaaaaaaaaaaaaaaaa ik moet gaan kijken of ik de colision kan samen 
	// voegen met het springen maar succes daar mee 
	// ps. Mario gaat nog door zijkant heen en bovenkant heen van scare (vierkant)

// ----------------------Jumping function player--------------------------------------------- 

			// Jumping up 
			if (stateSpring == 1) 
			{
				// Mario can't go though the Scare thing 
			if (xxScare < xxMario + lMario && 
						 xxScare + lScare > xxMario && 
				   		 yyScare < yyMario + hMario && 
						 yyScare + hScare > yyMario)
				{
					cout << "stoot hoofd" << endl; 
							if (yyMario > 600)
							{
								cout << "ik doe het " << endl; 
								yyMario -=7;
							}
						else if ( yyMario <=600)
							{
								stateSpring =2; 
							}
				}
				else 
				{
						if (yyMario > 500)
							{
								yyMario -=7;
							}
						else if ( yyMario <=500)
							{
								stateSpring =2; 
							}
				}
			} 
			// Goes down 
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

//--------------Colision detection with Mario and Scare----------Scare active or non active ---------

	if (Switch == true)
	{
				if (xxScare < xxMario + lMario && 
						 xxScare + lScare > xxMario && 
				   		 yyScare < yyMario + hMario && 
						 yyScare + hScare > yyMario )
				{
						  kleur3 = 10; 	
						  Switch = false; 
				} 
				else
				{
						 kleur3 = 250; 
				}
	 } 
	else 
	{
		kleur1 = 120; 
		kleur2 = 120; 
		kleur3 = 120;
	}

}

//--------------------------------------------------------------
void ofApp::draw()
{
	// player
	ofSetColor(90,90,90);
	ofCircle(xxMario, yyMario, lMario,hMario);

	// Scare Blok thing 
	ofSetColor (kleur1,kleur2,kleur3); 
	ofRect(xxScare,yyScare,lScare,hScare);
}



//--------------------------------------------------------------
void ofApp::keyPressed(int key){

	cout << key << endl; 

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

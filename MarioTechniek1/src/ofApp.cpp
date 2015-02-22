#include "ofApp.h"



//--------------------------------------------------------------
void ofApp::setup(){

	// Setup the data player 
	yyMario = 700; 
	xxMario = 40;
	diameterMario = 30; 
	stateSpring = 0; 

	// Setup the date Scare 
	yyScare = 550; 
	xxScare = 700; 
	hScare = 40;
	lScare= 50;

}

//--------------------------------------------------------------
void ofApp::update(){



			// Jumping function player
			// Jumping up 
			if (stateSpring == 1) 
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





}

//--------------------------------------------------------------
void ofApp::draw()
{
	// player
	ofSetColor(90,90,90);
	ofCircle(xxMario, yyMario, diameterMario);

	// Scare Blok thing 
	ofSetColor (100,0,250); 
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

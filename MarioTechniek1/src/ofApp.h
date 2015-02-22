

#pragma once

// Include the bibliotheken, Liberia
#include "iostream"
#include "ofMain.h"
using namespace std; 




class ofApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();

		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
		

	

		// Player 
		int xxMario; 
		int yyMario; 
		int diameterMario;
		int stateSpring; 

		// Scare blok thing 
		int xxScare; 
		int yyScare; 
		int lScare; 
		int hScare; 






};

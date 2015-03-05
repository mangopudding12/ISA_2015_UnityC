

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
		


		// on this way you make a constant that you can change if you want !!!!!
		 #define NUM_SPECIALPOWER 1

		// Player Struct
		struct SpecialPower 
		{ 
				float xxSpecialPower; 
				float yySpecialPower; 
				int LSpecialPower; 
				int HSpecialPower;  
				float XspeedSpecialPower; 
		};

		// SpecialPower state 
		int stateSpecialPower;

		// Vector that holds how many Special Power why have 
		        vector<SpecialPower> mySpecialPower;


		// Player 
		int xxMario; 
		int yyMario; 
		int lMario;
		int hMario; 
		int stateSpring; 

		// Scare blok thing 
		int xxScare; 
		int yyScare; 
		int lScare; 
		float kleur1;
		float kleur2; 
		float kleur3; 
		int hScare; 
		bool Switch; 

		// Special Power thing 
		//float xxSpecialPower; 
		//float yySpecialPower; 
		//int LSpecialPower; 
		//int HSpecialPower; 
		//int stateSpecialPower; 
		//float XspeedSpecialPower; 




};

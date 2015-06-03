using UnityEngine;
using System.Collections;

public class Tekst : MonoBehaviour {

	// Op deze manier krijg je assis naar de andere klas 
	// Je krijgt accis to Dino_Example clas 
	public Dino_Example DinoScript; 

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		// Vergeet niet DinoScript ervoor te zetten. 
		if (DinoScript.zien == true) {
			print ("aaa Dino"); 
		} else { 
			print ("Veilig"); 
		}
	}
}

using UnityEngine;
using System.Collections;

public class Tekst : MonoBehaviour {

	// Op deze manier krijg je assis naar de andere klas 
	// Je krijgt accis to Dino_Example clas 
	public Dino_Example DinoScript; 
	public string text;
	public GameObject TekstBlok; 
	public GameObject Nieuwlevel; 

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {


	}

	void OnMouseOver() 
	{

	}

	// Dit is nodig voor als je GUI dingen wilt gebruiken. 
	void OnGUI () 
	{
		// Vergeet niet DinoScript ervoor te zetten. 
		if (DinoScript.zien == true) 
		{
			//print ("aaa Dino"); 

       		// Stardaard texts 
			GUI.Box (new Rect (200,20,220,30),text);

			// Klik button standaard 
			if (GUI.Button(new Rect(10, 70, 70, 20), "New Level")){}

			TekstBlok.SetActive (true);
			Nieuwlevel.SetActive (true); 

		} else { 
			//print ("Veilig"); 
			TekstBlok.SetActive (false);
			Nieuwlevel.SetActive (false); 
		}
	}
}

using UnityEngine;
using System.Collections;

public class NieuwLevel : MonoBehaviour {

	public GameObject Nieuw; 
	public Material[] kleuren; 
	private int index = 0;  
	bool clicking = false; 
	public int level; 
	public int MomentLevel; 
	public int hoi; 
	
	// Use this for initialization
	void Start () {
		Nieuw.renderer.material = kleuren [index];
	}
	
	void OnMouseDown() 
	{
		clicking = true; 
		index = 1; 
		print (index);
		Nieuw.renderer.material = kleuren [index];
	}
	
	void OnMouseUp() 
	{
		clicking = false; 
		index = 0; 
		print (index);
		Nieuw.renderer.material = kleuren [index];

		// Zorgt ervoor dat je elkeer een andere level laad 
		if (level == 0) {
			level = 1; 
			levelload (); 
		}

		else if (level == 1) { 
			level = 2; 
			levelload (); 
		} 

		else 
		{
			level = 0; 
			levelload (); 
		}


	}

	void levelload() 
	{
		if (level == 2) 
		{
			MomentLevel = 2;
			Application.LoadLevel (2);
		}

		if (level == 1) 
		{
			MomentLevel = 1;
			Application.LoadLevel (1);
		}

		if (level == 0) 
		{
			MomentLevel = 0;
			Application.LoadLevel (0);
		}
	}
}

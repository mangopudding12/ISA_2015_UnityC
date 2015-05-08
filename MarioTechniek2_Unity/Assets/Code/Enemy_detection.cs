using UnityEngine;
using System.Collections;

public class Enemy_detection : MonoBehaviour {
	
	public Transform VijandStart,VijandEnd; 
	public bool zien = false; 
	public GameObject Inktvis; 

	// Update is called once per frame
	void Update () 
	{
		Reycast (); 
		Eigenschappen (); 
	}

	void Reycast () 
	{
		// draw a scene view. 
		Debug.DrawLine (VijandStart.position, VijandEnd.position, Color.yellow); 
		// Physics2D.Linecast kan je gebruiken om data te krijgen van de onzichtbare lijn
		// als die collinder raakt. 
		zien = Physics2D.Linecast (VijandStart.position, VijandEnd.position, 1 << LayerMask.NameToLayer("Player"));
	}


	void Eigenschappen() 
	{
		// Deze laat de inktvis zien. 
		if (zien == true) {
			Inktvis.SetActive (true);
		} else {
			Inktvis.SetActive (false); 
		}
	}
}

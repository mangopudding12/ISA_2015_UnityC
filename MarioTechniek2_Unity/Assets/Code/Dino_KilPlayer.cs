using UnityEngine;
using System.Collections;

public class Dino_KilPlayer : MonoBehaviour {

	public bool dinofood2 = false; 
	public bool dinofood = false; 
	public bool dinofood3 = false; 
	public bool dinofood4 = false; 

	public Transform lineRechts,lineLinks; 
	public Transform lineBoven,lineOnder;  
	public Transform lineRechts2,lineLinks2; 
	public Transform lineBoven2,lineOnder2;  


	void Update () 
	{
		lineCasting (); 
		Dinoaa ();
	}

	void lineCasting() 
	{
		Debug.DrawLine (lineRechts.position, lineLinks.position, Color.blue);
		Debug.DrawLine (lineBoven.position, lineOnder.position, Color.red);
		Debug.DrawLine (lineRechts2.position, lineLinks2.position, Color.yellow);
		Debug.DrawLine (lineBoven2.position, lineOnder2.position, Color.cyan);

		dinofood = Physics2D.Linecast (lineRechts.position, lineLinks.position, 1 << LayerMask.NameToLayer ("Player"));
		dinofood2 = Physics2D.Linecast (lineBoven.position, lineOnder.position, 1 << LayerMask.NameToLayer ("Player"));
		dinofood3 = Physics2D.Linecast (lineBoven2.position, lineOnder2.position, 1 << LayerMask.NameToLayer ("Player"));
		dinofood4 = Physics2D.Linecast (lineRechts2.position, lineLinks2.position, 1 << LayerMask.NameToLayer ("Player"));
	}

	void Dinoaa ()
	{
		if (dinofood == true || dinofood2 == true || dinofood3 == true || dinofood4 == true) 
		{
			print ("Dead");
			Debug.Log ("Dead");
			Application.LoadLevel(0);
		}
	}
}

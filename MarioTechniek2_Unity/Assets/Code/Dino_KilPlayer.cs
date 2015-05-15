using UnityEngine;
using System.Collections;

public class Dino_KilPlayer : MonoBehaviour {

	public bool dinofood2 = false; 
	public bool dinofood = false; 
	public Transform lineRechts,lineLinks; 
	public Transform lineBoven,lineOnder;  

	void Update () 
	{
		lineCasting (); 
		Dinoaa ();
	}

	void lineCasting() 
	{
		Debug.DrawLine(lineRechts.position,lineLinks.position,Color.green);
		Debug.DrawLine(lineBoven.position,lineOnder.position,Color.red);

		dinofood = Physics2D.Linecast(lineRechts.position,lineLinks.position, 1 << LayerMask.NameToLayer("Player"));
		dinofood2 = Physics2D.Linecast(lineBoven.position,lineOnder.position, 1 << LayerMask.NameToLayer("Player"));
	}

	void Dinoaa ()
	{
		if (dinofood == true || dinofood2 == true) 
		{
			print ("Dead");
			Debug.Log ("Dead");
			Application.LoadLevel(0);
		}
	}
}

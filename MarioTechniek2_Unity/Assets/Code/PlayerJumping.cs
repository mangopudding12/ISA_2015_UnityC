using UnityEngine;
using System.Collections;

public class PlayerJumping : MonoBehaviour {

	public bool ground = false; 
	public Transform lineStart,lineEnd; 

	// Update is called once per frame
	void Update () 
	{
		lineCasting (); 
	}

	void lineCasting() 
	{
		Debug.DrawLine(lineStart.position,lineEnd.position,Color.green);




		
	}


}

using UnityEngine;
using System.Collections;

public class PlayerMovement : MonoBehaviour {

	public float speedPlayer; 


	// Update is called once per frame
	void Update () 
	{
		Movement (); 
	}

	void Movement() 
	{
		// Time.deltaTime = 
		// When you multiply with Time.deltaTime you essentially express: 
		// I want to move this object 10 meters per second instead of 10 meters per frame.



		// Rechts movement 
		if (Input.GetKey (KeyCode.L)) 
		{
			transform.Translate(Vector2.right * speedPlayer * Time.deltaTime);
		}

		if (Input.GetKey (KeyCode.J)) 
		{ 
			transform.Translate(-Vector2.right * speedPlayer * Time.deltaTime); 
		}
	} 
}

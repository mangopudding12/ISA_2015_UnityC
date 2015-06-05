using UnityEngine;
using System.Collections;

public class PlayerMovement : MonoBehaviour {

	public float speedPlayer; 
	public bool interact = false; 
	public Transform lineStart,lineEnd; 
	RaycastHit2D whatIHit; 

	public Dino_Example DinoScript;

	RaycastHit2D KillingDino; 


	// Update is called once per frame
	void Update () 
	{
		if (DinoScript.zien == false) 
		{
			Movement (); 
			Reycast (); 
			Hitting (); 
		}
	}



	void Reycast() 
	{
		Debug.DrawLine (lineStart.position, lineEnd.position, Color.red);



		if (Physics2D.Linecast (lineStart.position, lineEnd.position, 1 << LayerMask.NameToLayer ("Vijand"))) 
		{
				// Hier stop je hetgene wat je hebt geraakt in een whatIHit name. 
			    // Hierdoor kun je het straks bijvoorbeeld vernietigen. 
				whatIHit = Physics2D.Linecast (lineStart.position, lineEnd.position, 1 << LayerMask.NameToLayer ("Vijand"));
				interact = true; 
				
		}
		else 
		{ 
				interact = false; 
		}

		// Now the player layer Igonere the Collision with de enemy layer. 
		// The numbers are de numers of the layer. 
		// 8 is the player and 9 are all the enemy's. 
		//Physics2D.IgnoreLayerCollision (8, 9);



	}

	void Hitting() 
	{
		if (Input.GetKeyDown (KeyCode.D) && interact == true) 
		{
			//Destroy gameobject whatIHit, it is not in the world anymore. 
			Destroy (whatIHit.collider.gameObject); 
			print ("Hoera je Destroy enemy"); 
		}

		if (Input.GetKeyDown (KeyCode.F) && interact == true) 
		{
			// Set the checkbox out, so you don't see it anymore. 
			whatIHit.collider.gameObject.SetActive(false);
			print ("Hoera je oncheck enemy check box");
		}
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

	// Andere manier om player te doden.. 
	void OnCollisionEnter2D (Collision2D col)
	{
		if (col.gameObject.tag == "deadly") {
			print ("Dead");
			Application.LoadLevel (0);
		}
	}



}

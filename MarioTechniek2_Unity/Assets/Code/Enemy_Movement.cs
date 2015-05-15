using UnityEngine;
using System.Collections;

	public class Enemy_Movement : MonoBehaviour {
	public float snelheid; 
	public Transform Csta,Cend; 
	public bool TouchSometing; 

	// Deze manier van LineCasting is iets minder mooi. 
	// want zodra je de lijn van uit je player of enemy wilt laten beginnen. 
	// Reageert de LineCast op het eigen lichaam van de enemy. 
	// Dus dan is TouchSomething dus de hele tijd true false true false. 
	// Maar zodra het uit zijn eigen collider is dan werkt het perfect. 
	// Belangrijk het reageert dus op welke collider dan ook. 
	
	void Update () {

		LineCast (); 

	}

	// Dit is ook een manier om onzichtbare lijnen zichtbaar te maken. 
	void OnDrawGizmos() 
	{
		//Gizmos.color = Color.cyan; 
		//Gizmos.DrawLine (Csta.position, Cend.position); 
	}

	void LineCast() 
	{
		rigidbody2D.velocity = new Vector2 (snelheid,rigidbody2D.velocity.y);

		// LineCasting kijken of je tegen muur bots. 
		TouchSometing = Physics2D.Linecast(Csta.position,Cend.position);


		if (TouchSometing == true) 
		{
			transform.localScale = new Vector2 (transform.localScale.x * -1, transform.localScale.y);
			snelheid *= -1; 
		}
	}



}

using UnityEngine;
using System.Collections;

public class Enemy_WhenKilling_WhenDead : MonoBehaviour {

	public Transform weakness; 
	public bool deadPlayer = true; 

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter2D (Collision2D col1)
	{
		// Raak ik de player ?? 
		if (col1.gameObject.tag == "Player") 
		{
			float height = col1.contacts[0].point.y - weakness.position.y;

			// Als de player op mijn hoofd spring ga de enemy dood
			if (height > 0)
			{
				deadPlayer = false; 
				Dies(); 
			} else { 

				// De player bots tegen mij zijkant player gaat dood. 
				if (deadPlayer == true)
				{
					print ("dead");
					Application.LoadLevel(0);
				} 
			}


		} 
	}

	void Dies() 
	{
		//Zo set je tjeck box van object uit. 
		this.gameObject.SetActive(false);
		print ("Hoera on check enemy check box");

		// Zo kun je hem vernietigen.  
		//Destroy (this.gameObject); 
	}
}

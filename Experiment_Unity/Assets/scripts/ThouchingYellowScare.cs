using UnityEngine;
using System.Collections;

public class ThouchingYellowScare : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	// This function only calls when the collsion is started. Say it one time
	void OnCollisionEnter (Collision Thouching){
		if (Thouching.transform.tag == "SpecialPower") 
		{
			print ("Thouching yellow scare with player"); 

		}
	}

	// This function say it the whole time that there is a collision
	//void OnCollisionStay () {}
}

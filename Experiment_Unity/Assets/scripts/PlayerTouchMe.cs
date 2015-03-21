using UnityEngine;
using System.Collections;

public class PlayerTouchMe : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	// This function only calls when the collsion is started. Say it one time
	void OnCollisionEnter (Collision PlayerMe){
		if (PlayerMe.transform.tag == "Player") 
		{

		}
	}

}

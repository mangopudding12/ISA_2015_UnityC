using UnityEngine;
using System.Collections;

public class Jump : MonoBehaviour {

	public float CaviaJump; 
	public Vector3 CaviaJumpRichting;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	
		// Jumping code 
		if (Input.GetKeyDown (KeyCode.Space)) {
			print ("awawawawa");
			rigidbody.AddForce (Vector3.up * CaviaJump); 
		}



	}
}

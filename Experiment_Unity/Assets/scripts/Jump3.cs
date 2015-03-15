using UnityEngine;
using System.Collections;

public class Jump3 : MonoBehaviour {
	
	public float CaviaJump; 
	private bool Ground; 
	//public Vector3 CaviaJumpRichting;
	
	// Use this for initialization
	void Start () {
		Ground = false; 
	}
	
	// Update is called once per frame
	void Update () {
		
		// Jumping code 
		if (Input.GetKeyDown (KeyCode.Space) && Ground == false) {
			rigidbody.AddForce (Vector3.up * CaviaJump); 
			Ground = true; 
		} 

	}

	void OnCollisionEnter ()
	{
		Ground = false;
	}

}
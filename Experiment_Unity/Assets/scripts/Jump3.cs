using UnityEngine;
using System.Collections;

public class Jump3 : MonoBehaviour {
	
	public float CaviaJump; 
	private bool Ground; 
	private Vector3 jump;
	
	// Use this for initialization
	void Start () {
		Ground = false; 


	}


	// Update is called once per frame
	void Update () {

		// Jumping code 
		if (Input.GetKeyDown (KeyCode.Space) && Ground == false) 
		{
			jump = new Vector3 (0,1,0);
			rigidbody.AddForce ( jump * CaviaJump); 
			Ground = true;
		}
	}

	// Can only jump when it is on the ground.
	void OnCollisionEnter ()
	{
		Ground = false;
	}

}
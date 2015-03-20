using UnityEngine;
using System.Collections;

public class Jump3 : MonoBehaviour {
	
	public float CaviaJump; 
	public float moveSpeed; 
	public float maxSpeed;


	private float maxSpeedAir; 
	private float moveSpeedAir;
	private bool Ground; 
	private Vector3 input; 
	private Vector3 jump;
	
	// Use this for initialization
	void Start () {
		Ground = false; 

		maxSpeedAir = 15f;
		moveSpeedAir = 5f;
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



		if (rigidbody.position.y > 2) {
			// Moving in Air slower. 
			// This left, right, backwards, forwards movement.
			input = new Vector3 (Input.GetAxisRaw ("Horizontal"), 0, Input.GetAxisRaw ("Vertical")); 
			if (rigidbody.velocity.magnitude < maxSpeedAir) {
				rigidbody.AddForce (input * moveSpeedAir);
			}
		} else {
			// Moving faster on the ground.
			// This left, right, backwards, forwards movement.
			input = new Vector3 (Input.GetAxisRaw ("Horizontal"),0, Input.GetAxisRaw("Vertical")); 
			if ((rigidbody.velocity.magnitude < maxSpeed)) 
			{
				rigidbody.AddForce (input*moveSpeed);
			} 
		}



	}

	// Can only jump when it is on the ground.
	void OnCollisionEnter ()
	{
		Ground = false;
	}

}
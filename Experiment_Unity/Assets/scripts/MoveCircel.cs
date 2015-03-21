using UnityEngine;
using System.Collections;

public class MoveCircel : MonoBehaviour {


	private float maxSpeedAir; 
	private float moveSpeedAir;
	private Vector3 input; 
	public float moveSpeed; 
	public float maxSpeed;

	// Use this for initialization
	void Start () {
		maxSpeedAir = 15f;
		moveSpeedAir = 5f;
	}



	// Update is called once per frame
	void Update () {
	
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
}

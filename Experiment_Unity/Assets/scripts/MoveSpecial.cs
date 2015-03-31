using UnityEngine;
using System.Collections;

public class MoveSpecial : MonoBehaviour {
	public PlayerTouchMe HeadAchScareScript; 

	public int speed; 
	private Vector3 MovingSpecial; 

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
		if (HeadAchScareScript.MoveSpecialPower == true) {

			// I hope to give specialpower now a x movement
			MovingSpecial = new Vector3 (1,0,0);
			rigidbody.AddForce ( MovingSpecial * speed); 

		}
	
	}
}

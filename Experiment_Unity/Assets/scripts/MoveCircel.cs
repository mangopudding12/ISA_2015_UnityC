using UnityEngine;
using System.Collections;

public class MoveCircel : MonoBehaviour {

	public float moveSpeed = 10f;
	public float turnSpeed = 50f;

	// Use this for initialization
	void Start () {

	}



	// Update is called once per frame
	void Update () {
	
			if(Input.GetKey(KeyCode.UpArrow)){
				transform.Translate(Vector3.forward * Time.deltaTime);
				}
		
		if(Input.GetKey(KeyCode.DownArrow)){
			transform.Translate(Vector3.forward * -moveSpeed * Time.deltaTime);
		}

	}
}

using UnityEngine;
using System.Collections;

public class GreenScare : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void OnCollisionEnter (Collision Thouching){
		if (Thouching.transform.tag == "Player") {
			print ("aaaaa I am thouched"); 	
		}
	}
}

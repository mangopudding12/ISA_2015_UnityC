using UnityEngine;
using System.Collections;

public class PlayerJumping : MonoBehaviour {

	public bool ground = false; 
	public bool wall = false; 
	public Transform groundEnd; 
	public float JumpForce; 

	// Update is called once per frame
	void Update () 
	{
		lineCasting (); 
		Jumping ();
	}

	void lineCasting() 
	{
		Debug.DrawLine(this.transform.position,groundEnd.position,Color.green);

		// Als the player the layer ground aanraakt dan ground will be true. 
		ground = Physics2D.Linecast(this.transform.position,groundEnd.position, 1 << LayerMask.NameToLayer("Ground"));
		wall = Physics2D.Linecast(this.transform.position,groundEnd.position, 1 << LayerMask.NameToLayer("Wall"));
	}

	void Jumping() 
	{
		if (transform.position.y >= 70) {
			print ("Wacht rustig tot player weer in scherm is Sorry");
		} else {
			print (""); 
		}

		if (Input.GetKey (KeyCode.K) && ground == true) 
		{
				JumpForce = 9000; 
				rigidbody2D.AddForce(Vector2.up * JumpForce);
		}

		if (Input.GetKey (KeyCode.K)&& wall == true)
		{
			JumpForce = 4000; 
			rigidbody2D.AddForce(Vector2.up * JumpForce);
		} 
	}
}

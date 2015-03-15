#pragma strict

var jumpHeight = 8;

private var isFalling = false;

function Update ()
{

	if (Input.GetKeyDown(KeyCode.Space) && isFalling == false)
	{
		rigidbody.velocity.y = jumpHeight;
	}
	
	// This makes the ball jump one time not two times. 
	isFalling = true;
}

function OnCollisionStay ()
{
	isFalling = false;
}
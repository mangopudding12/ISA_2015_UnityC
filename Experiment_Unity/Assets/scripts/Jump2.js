#pragma strict

var jumpHeight = 8;

private var isFalling = false;

function Update ()
{

	if (Input.GetKeyDown(KeyCode.A) && isFalling == false)
	{
		// Velocity = snelheid  rigidbody = vierkant om gemaakt object heen / hier werken de krachten op
		// y = in de y richting spring onze object 
		rigidbody.velocity.y = jumpHeight;
	
		// So the bal can jump 1 time
		isFalling = true; 
	} 
	 
}

// Deze functie merkt wanneer wij iets aan raken zoals de vloer of iets anderes zoals een muur 
function OnCollisionEnter ()
{
	isFalling = false;
}








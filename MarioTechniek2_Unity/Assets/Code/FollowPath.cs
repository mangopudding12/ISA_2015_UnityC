using System.Collections.Generic; // Liberia voor de IEnumerator. 
using UnityEngine;
using System.Collections;

public class FollowPath : MonoBehaviour {

	// Hier kan je een lijstje van namen zetten. 
	public enum FollowType 
	{
		MoveTowards, 
		Lerp
	}

	// FollowType.MoveTowards = een default setting. 
	public FollowType Type = FollowType.MoveTowards;
	public PathDefinition Path; 
	public float Speed = 1; 
	public float MaxDistanceToGoal =.1f; // The max afstand the object moet hebben voordat die naar volgende piont toe gaat. 

	// IEumerator weet the goeie volgorde van onze punten. 
	private IEnumerator<Transform>_currentPoint; 


	public void Start() 
	{
	}

}

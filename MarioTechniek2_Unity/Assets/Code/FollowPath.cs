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

	// Is From the other class so if you change the name of that other class you have a problem.
	public PathDefinition Path; 
	public float Speed = 1; 
	public float MaxDistanceToGoal =.1f; // The max afstand the object moet hebben voordat die naar volgende piont toe gaat. 

	// IEumerator weet the goeie volgorde van onze punten. 
	private IEnumerator<Transform>_currentPoint; 


	public void Start() 
	{
		if (Path == null) 
		{
			Debug.LogError("Path can't be null",gameObject);
			return; 
		}
	}

}

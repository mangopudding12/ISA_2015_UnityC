using System; // Liberia for NotImplementedException. 
using System.Collections.Generic; // Is liberia for IEnumerator. 
using UnityEngine;
using System.Collections;

public class PathCode : MonoBehaviour 
{
	public Transform[] Points; 

	// iets wat heel goed eerst naar het ene kan kijken en dan naar de volgende, soort volgorde denk ik.
	// Wordt vaak gebruikt voor routines 
	public IEnumerator <Transform> GetPathEnumerator()
	{
		if (Points == null || Points.Length < 1) 
		{
			yield break; // stop de funtie meteen. 
		}

		var direction = 1;
		var index = 0; 

		// Gaat oneindig door. Hij check the pionts zodat onze object er langs blijft bewegen.
		while (true) 
		{
			yield return Points[index];

			if (Points.Length == 1)
			{
				continue; 
			}

			if (index <= 0)
			{
				// Objects gaat van links naar rechts 
				direction = 1; 
			} else if (index >= Points.Length-1){
				// Objects gaat van rechts naar links 
				direction = -1; 
			}

			index = index + direction;
		} // end while loop
	}

	// Alles wat hier in staat kan je ook in scenen zien. 
	public void OnDrawGizmos() 
	{
		// Als er minder dan twee lijnen zijn ga dan weer terug naar de void funcitie. 
		if (Points == null || Points.Length < 2) 
		{
			return;
		}

		for (int i = 1; i < Points.Length; i++) 
		{
			// draw a line between the points that in the array
			Gizmos.DrawLine(Points[i-1].position,Points[i].position);  
		}

	}
}



using UnityEngine;
using System.Collections;

public class Button : MonoBehaviour {

	public NieuwLevel NieuwLevelScript;
	public GameObject TekstBalk;
	public Material[] lijst;  
	private int index = 0; 

	public bool clicking = false; 



	void Start() 
	{
		// Geef eerst materiaal weer. 
		TekstBalk.renderer.material = lijst [index];
	}



	void update() 
	{

	}

	void OnMouseDown() 
	{
		clicking = true; 
		index = 1; 
		print (index);
		TekstBalk.renderer.material = lijst [index];
	}
	
	void OnMouseUp() 
	{
		clicking = false; 
		index = 0; 
		print (index);
		TekstBalk.renderer.material = lijst [index];

		if (NieuwLevelScript.MomentLevel == 1) {
			Application.LoadLevel (1);
		} 

		if (NieuwLevelScript.MomentLevel == 2) 
		{
			Application.LoadLevel (2);
		}

		if (NieuwLevelScript.MomentLevel == 0) {
			Application.LoadLevel (0);
		}


	}

}

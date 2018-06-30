using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class No_Pouder : MonoBehaviour {
    public MeshRenderer Arrow;
    public bool Reload;
	// Use this for initialization
	void Start () {
        Reload = false;
        Arrow.enabled = false;
	}
	
	// Update is called once per frame
	void Update () {
		if (Reload == true)
        {
            Arrow.enabled = true;
            Debug.Log("NO POUDER");
        }
        if (Reload == false)
        {
            Arrow.enabled = false;
        }
	}
}

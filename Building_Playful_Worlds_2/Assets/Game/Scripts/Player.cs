using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {
    public bool pouder = false;
    public bool givepouder = false;
	// Use this for initialization
	void Start () {
        pouder = false;
	}
	
	// Update is called once per frame
	public void Update () {
		if (pouder == true)
        {
            givepouder = true;
        }
	}
}

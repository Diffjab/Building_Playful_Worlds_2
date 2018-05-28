using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {
    public int pouder;
	// Use this for initialization
	void Start () {
        pouder = 1;
	}
	
	// Update is called once per frame
	void Update () {
		if (pouder == 1)
        {
            give_pouder = true;
        }
	}
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cannons_fire : MonoBehaviour {

    public GameObject[] Cannons;
    public int Time;
    public bool pouder = false;
    public bool loaded = false;
    public bool fire = false;
	// Use this for initialization
	void Start () {
	    // 	take pouder
	}
	
	// Update is called once per frame
	void Update () {
        if (Player.givepouder == true)
        {
            pouder = true;
            loaded = true;
        }
        if (loaded == true)
        {
            fire = true;
        }

	}
}

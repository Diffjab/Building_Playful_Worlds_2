using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pouder_Pickup : MonoBehaviour {
    public bool pickupslot = false;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (pickupslot == true)
        {
            Player pouder = true;
            Destroy(gameObject);
        }
	}
}

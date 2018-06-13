using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Auto_Pouder : MonoBehaviour {
    public float Auto_Pouder_Time = 1;
    Cannons_fire cannons_Fire;

	// Use this for initialization
	void Start () {
        cannons_Fire = GetComponentInParent<Cannons_fire>();

    }
	
	// Update is called once per frame
	void Update () {
        if (Auto_Pouder_Time > 0)
        {
            Auto_Pouder_Time -= Time.deltaTime;
        }
        else
        {
            cannons_Fire.pouder = true;
               
        }
	}
}

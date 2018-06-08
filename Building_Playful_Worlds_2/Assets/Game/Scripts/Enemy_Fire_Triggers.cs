using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy_Fire_Triggers : MonoBehaviour {
    public List<Collider> Triggers;
	// Use this for initialization
	void Start () {
        Collider[] cols = GetComponents<Collider>();
        foreach (Collider c in cols)
        {
            EnemyFireTrigger.Add(c);
        }
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}

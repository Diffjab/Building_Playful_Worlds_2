using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cannon_Ball_Particle : MonoBehaviour {

    public GameObject CannonBall;
    public ParticleSystem PouderSmoke;
    public float ShotSpeed = 1f;
    public bool FireState;
    public Rigidbody rb;
	// Use this for initialization
	void Start () {
        FireState = GetComponent<Cannons_fire>();
        rb = GetComponent<Rigidbody>();
    }
	
	// Update is called once per frame
	void Update () {
		if (FireState == true)
        {

        }
	}
}

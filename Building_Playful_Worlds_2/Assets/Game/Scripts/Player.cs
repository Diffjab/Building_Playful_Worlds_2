using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Player : MonoBehaviour {
    public bool pouder = false;
    public bool givepouder = false;
    public GameObject Cam;
    //public bool GivePouder;

    // Use this for initialization
    void Start () {
        pouder = false;
        givepouder = false;
        //GivePouder = GetComponent<Cannons_fire>().PlayerGive;
	}
	
	// Update is called once per frame
	void Update ()
    {
        if(pouder == true)
        {
            givepouder = true;
        }
        /*if (GivePouder == false)
        {
            pouder = false;
            givepouder = false;
        }*/

    }
}

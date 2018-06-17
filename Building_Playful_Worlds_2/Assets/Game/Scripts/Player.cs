using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Player : MonoBehaviour {
    public bool pouder = false;
    public bool givepouder = false;
    public GameObject Cam;
    public Text EForPickUp;
    // Use this for initialization
    void Start () {
        pouder = false;
	}
	
	// Update is called once per frame
	public void Update ()
    {
        RaycastHit hit;
        if (Physics.Raycast(Cam.transform.position, Cam.transform.forward, out hit))
        {
            EForPickUp.enabled = true;
        }


        if (pouder == true)
        {
            givepouder = true;
        }
	}
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pouder_Pickup : MonoBehaviour {
    bool pickup = false;
    public GameObject PouderCase;
    public bool PouderPlayer;
    public Collider Coll;

    void Start()
    {
        PouderPlayer = GetComponent<Player>().pouder;
        Debug.Log("got it");
    }
    void OnTriggerEnter(Collider other)
    {
        if (Input.GetKey(KeyCode.E)== true)
        {
            PouderPlayer = true;
            Debug.Log("E Pressed");
        }
    }

   
    void Update()
    {
        Pickup();
    }
       
    void Pickup()
    {
        if (PouderPlayer == true)
        {
            GameObject.Find("Player").GetComponent<Player>().pouder = true;
            Destroy(gameObject);
            Debug.Log("Pouder!!");
        }
        if (PouderPlayer == false)
        {
            Debug.Log("no pouderfound");
        }
    }

}

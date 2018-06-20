using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pouder_Pickup : MonoBehaviour {
    bool Press_E = false;
    public GameObject PouderCase;
    public bool PouderPlayer;
    public Collider Coll;
    

    void Start()
    {
        PouderPlayer = GetComponent<Player>().pouder;
        Debug.Log("got it");
    }

    void OnTriggerEnter(Collider Coll)
    {
        Press_E = true;
        Debug.Log("entered");
        
    }

    void Update()
    {
        if (Press_E == true)
        {
            if(Input.GetKeyDown(KeyCode.E) == true) { 
            
                PouderPlayer = true;
                Debug.Log("E Pressed");
                Pickup();
            }
            
        }
        
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

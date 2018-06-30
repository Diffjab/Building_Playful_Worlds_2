using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Pouder_Pickup : MonoBehaviour {
    bool Press_E = false;
    public GameObject PouderCase;
    public bool PouderPlayer;
    public Collider Coll;
    public Text EForPickUp;
    public bool givepouder;


    void Start()
    {
        PouderPlayer = PlayerSingleton.instance.GetComponent<Player>().pouder;
        Debug.Log("got it");
        givepouder = PlayerSingleton.instance.GetComponent<Player>().givepouder;
        EForPickUp.GetComponent<Text>().enabled = false;
    }

    void OnTriggerEnter(Collider Coll)
    {
        Press_E = true;
        Debug.Log("entered");
        EForPickUp.GetComponent<Text>().enabled = true;
    }

    void Update()
    {
        if (Press_E == true)
        {
            if(Input.GetKeyDown(KeyCode.E) == true) { 
            
                PouderPlayer = true;
                Debug.Log("E Pressed");
                Pickup();
                givepouder = true;

            }
            
        }
        
    }
    
    void Pickup()
    {
        if (PouderPlayer == true)
        {
            PlayerSingleton.instance.GetComponent<Player>().pouder = true;
            
            Destroy(gameObject);
            Debug.Log("Pouder!!");
            EForPickUp.GetComponent<Text>().enabled = false;
        }
        if (PouderPlayer == false)
        {
            Debug.Log("no pouderfound");

        }
    }

}

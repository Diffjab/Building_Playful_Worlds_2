using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pouder_Pickup : MonoBehaviour {
    bool pickup = false;
    private void OnTriggerEnter(Collider other)
    {
        
    }

   
    void Update()
    {
        
    }
       
    void Pickup()
    {
        if (GameObject.Find("Player").GetComponent<Player>().pouder)
        {
            GameObject.Find("Player").GetComponent<Player>().pouder = true;
            Destroy(gameObject);
        }
        if (!GameObject.Find("Player").GetComponent<Player>().pouder)
        {

        }
    }

}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pouder_Pickup : MonoBehaviour {
    public bool pickupslot = false;
    bool pickup = false;
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            pickup = true;

        }
        if (pickup == true)
        {
            Pickup();
            Player.pouder = true;

        }
    }

   
    void Update()
    {
        
    }
        void Pickup()
        {
            Debug.Log("picked up");

            Destroy(gameObject);
        }
    
}

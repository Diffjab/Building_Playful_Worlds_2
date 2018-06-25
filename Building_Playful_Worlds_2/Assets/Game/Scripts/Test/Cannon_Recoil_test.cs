using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;



public class Cannon_Recoil_test : MonoBehaviour
{
    public Rigidbody rb;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();

    }

    void OnMouseDown()
    {
        rb.AddForce(-transform.forward * 1000);
    }

}

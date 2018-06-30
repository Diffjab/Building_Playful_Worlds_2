using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public enum State { Reload, Fire, Cleaning };
public class Cannons_fire : MonoBehaviour {

    public State Currentstate;
    public bool FireState = false;
    public bool pouder = false;
    public bool HasFired = false;
    bool Press_E = false;
    public Rigidbody rb;
    public int Recoil;
    public Collider Coll;
    public bool PlayerGive;
    public bool Reloadstate;

    Vector3 orignialPosition;
    // Audio
    private int Cannon_Fire;
    public AudioClip[] Shot;
    private AudioClip Cannon_Shot;
    public AudioSource[] Cannons;
    
    // Timers
    private float coolDown;
    private float ReloadCoolDown = 1;
    public float maxCooldown = 3f;
    public float minCooldown = 0.9f;
    public float Fireing = 0.3f;
    public float ReloadTime = 1f;

    void Start () {
        
        rb = GetComponent<Rigidbody>();
        orignialPosition = transform.position;
        pouder = false;
        PlayerGive = PlayerSingleton.instance.GetComponent<Player>().givepouder;
        Reloadstate = GetComponent<No_Pouder>().Reload;
    }
    
    void OnTriggerEnter(Collider Coll)
    {
        if (PlayerSingleton.instance.GetComponent<Player>().givepouder == true)
        {
            PlayerGive = true;
        }
        
        if (PlayerGive == true)
        {
            Debug.Log("give pouder");
            Press_E = true;
           
        }
       
    }
    void OnTriggerExit(Collider Coll)
    {
        PlayerGive = false;
    }
    void Update ()
    {
        if (Press_E == true)
        {
            
            if (PlayerGive == true)
            {
                if (Input.GetKeyDown(KeyCode.E) == true)
                {
                    pouder = true;
                    Debug.Log("E Pressed + pouder");
                    Press_E = false;
                }
                
                
            }
        }
        CheckState();
        
        
    }

    
    void CheckState()
    {

        //welke states
        
        
        switch (Currentstate)
        {   // firing the cannon
            case State.Fire:
                Reloadstate = false;
                if (Fireing > 0)
                {
                    HasFired = false;
                    Fireing -= Time.deltaTime;
                }
                else
                {

                    FireState = true;
                    int index = Random.Range(0, Shot.Length);
                    Cannon_Shot = Shot[index];
                    int Guns = Random.Range(0, Cannons.Length);
                    Cannons[Guns].PlayOneShot(Cannon_Shot);
                    
                    rb.AddForce(-transform.forward * Recoil, ForceMode.Force);
                    
                    HasFired = true;
                }
                
                if (HasFired == true)
                {
                    pouder = false;
                    Currentstate = State.Cleaning;
                    coolDown = maxCooldown;
                    HasFired = false;
                    FireState = false;

                }
                break;
                
        

        // cleaning of the cannon
            case State.Cleaning:
                if (coolDown > 0)
                {
                    coolDown -= Time.deltaTime;
                    Debug.Log("cleaning");
                }
                else
                {
                    ReloadTime = maxCooldown;
                    Currentstate = State.Reload;
                    
                }
                break;
                
        // reloading the gun
            case State.Reload:
                Reloadstate = true;
                if (pouder == false)
                {
                    ReloadCoolDown = ReloadTime;
                }
                if (pouder == true)
                {
                    ReloadCoolDown -= Time.deltaTime;
                }
                if (ReloadCoolDown > 0)
                {
                    Currentstate = State.Reload;

                }
                else
                {

                    //rb.AddForce(ransform.forward * 750, ForceMode.Force);
                    transform.position = Vector3.Lerp( transform.position, orignialPosition, Time.deltaTime * 2);
                    Fireing = Random.Range(0.5f, 2f);
                    if (Vector3.Distance(transform.position, orignialPosition) < .01f)
                    {
                        Currentstate = State.Fire;
                        
                    }
                }
                break;
        }
    }

}

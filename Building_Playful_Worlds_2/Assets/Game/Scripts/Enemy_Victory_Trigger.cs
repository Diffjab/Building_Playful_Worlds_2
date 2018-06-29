using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class Enemy_Victory_Trigger : MonoBehaviour {
    public bool player;
    public int timer = 0;
    private int timerNew;
    public Image fadePanel;
    public Color blackColor;
	// Use this for initialization
	void Start () {

        player = PlayerSingleton.instance;

		
	}
    void OnTriggerEnter(Collider other)
    {
        player = true;
    }
    void OnTriggerExit(Collider other)
    {
        player = false;
        timer = timerNew;
    }
    // Update is called once per frame
    void Update() {
        if (player == true)
        {
            timer = timerNew = 1;
        }
        if (timer == 10)
        {
            StartCoroutine(Death());
            {

            }
            
        }
        
    }
    IEnumerator Death()
    {
        float t = 0;
        while (t <= 1)
        t += Time.deltaTime;
        fadePanel.color = Color.Lerp(Color.clear, blackColor, t);
        yield return null;
        SceneManager.LoadScene(3);
    }
    
}

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;


public class Enemy_Victory_Trigger : MonoBehaviour {
    
    public float timer;
    public Image fadePanel;
    public Color blackColor;
    // Use this for initialization
    void Start()
    {
        timer = 60;
    }

    // Update is called once per frame
    void Update() {
        if (timer > 0)
        {
            
            timer -= Time.deltaTime * 1.5f;
        }
        else
        {
            StartCoroutine(Death());
        }
    }
    

    IEnumerator Death()
    {
        float t = 0;
        while (t <= 1)
        {
            t += Time.deltaTime;
            fadePanel.color = Color.Lerp(Color.clear, blackColor, t);
            yield return null;
        }
        
        SceneManager.LoadScene(2);
    }
    
}

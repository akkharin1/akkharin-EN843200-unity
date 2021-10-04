using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewBehaviourScript : MonoBehaviour
{
    public float speed = 0.0f;
    public float distance = 0.0f;
    public float time = 0.0f;

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space))
        {
            SpeedCheck();
        }
    }

    void SpeedCheck()
    {
        speed = distance / time;
        if (speed > 70 || speed < 40)
        {
            print("Yor are breaking the law!");
        }
        print("You are traveling at" + speed + "MPH");
    }
}


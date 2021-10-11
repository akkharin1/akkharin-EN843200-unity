using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NewBehaviourScript : MonoBehaviour
{
    public float speed = 0.0f;
    public float distance = 0.0f;
    public float time = 0.0f;

    public float maxSpeedLimit = 70.0f;
    public float minSpeedLimit = 40.0f;

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
        if (speed > maxSpeedLimit)
        {
            print("Yor are exceeding thespeed limit!");
        }
        else if (speed < minSpeedLimit)
        {
            print("You are not gonig fast enought");
        }
        else if (speed == maxSpeedLimit || speed == minSpeedLimit)
        {
            print("You are about to breaking the law!");
        }
        else
        {
            print("You are within the speed limit!");
        }
    }
}


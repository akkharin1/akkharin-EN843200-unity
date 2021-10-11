using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExampleScript2 : MonoBehaviour
{
    private int enemyDistance = 0;
   static private int enemyCount = 3;

    private string[] enemies = new string[enemyCount];
    private int weaponId = 0;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyUp("space"))
        {
            //EnemySearch();
            //EnemyDestruction();
            //EnemyScan();        
            //EnemyRoster();
            WeaponSearch();
        }
    }

    void WeaponSearch()
    {
        weaponId = Random.Range(0, 8);

        switch (weaponId)
        {
            case 1:
                print("You found a sword!");
                break;
            case 2:
                print("You found aaxe!");
                break;
            case 3:
                print("You found adagger!");
                break;
            case 4:
                print("You found a bow!");
                break;
            default:
                print("You didn't find anything!");
                break;
        }
    }
}

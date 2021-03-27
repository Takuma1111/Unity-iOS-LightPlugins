using UnityEngine;
using UnityEngine.UI;
using System;
using System.Runtime.InteropServices;

public class Sample : MonoBehaviour
{
    [DllImport("__Internal")]
    private static extern void lightOn();
    [DllImport("__Internal")]
    private static extern void lightOff();

    bool judge = false;

    void Start()
    {
        // Hello();
    }

   public void On(){
        if(judge){
            lightOff();
            judge = false;
        }else{
            lightOn();
            judge = true;
        }
       

    }
 
}
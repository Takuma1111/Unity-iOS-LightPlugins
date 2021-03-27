
import Foundation
import UIKit


@objc public class Light : NSObject {
    
    @objc public static func On() {
        print("Light On !!")
        let light = ViewController()
        light.ledFlash(flg: true)
    }
    
    
    @objc public static func Off() {
        print("Light Off !!!")
        let light = ViewController()
        light.ledFlash(flg: false)
    }
}




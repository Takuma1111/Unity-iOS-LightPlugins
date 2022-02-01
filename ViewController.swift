import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func ledFlash(flg: Bool){
        
        let avDevice = AVCaptureDevice.default(for: AVMediaType.video)!
        
        if avDevice.hasTorch {
            do {
                try avDevice.lockForConfiguration()
                
                if (flg){
                    avDevice.torchMode = AVCaptureDevice.TorchMode.on
                } else {
                    avDevice.torchMode = AVCaptureDevice.TorchMode.off
                }
                
                avDevice.unlockForConfiguration()
                
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }

}


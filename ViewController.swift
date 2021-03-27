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
                // torch device lock on
                try avDevice.lockForConfiguration()
                
                if (flg){
                    // flash LED ON
                    avDevice.torchMode = AVCaptureDevice.TorchMode.on
                } else {
                    // flash LED OFF
                    avDevice.torchMode = AVCaptureDevice.TorchMode.off
                }
                
                // torch device unlock
                avDevice.unlockForConfiguration()
                
            } catch {
                print("Torch could not be used")
            }
        } else {
            print("Torch is not available")
        }
    }

}


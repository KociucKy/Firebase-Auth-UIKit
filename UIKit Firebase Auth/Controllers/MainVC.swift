import UIKit
import GoogleSignIn

class MainVC: UIViewController {
    //MARK: - Outlets
    @IBOutlet var signInButton: GIDSignInButton!
    
    //MARK: - VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
    }
    
    //MARK: - Actions
    @IBAction func registerPressed(_ sender: UIButton){
    }
    
    @IBAction func loginPressed(_ sender: UIButton){
    }
}


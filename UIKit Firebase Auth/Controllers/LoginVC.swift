import UIKit
import Firebase

class LoginVC: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Actions
    @IBAction func signInPressed(_ sender: UIButton) {
        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print(e.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: K.loginSegueIdentifier, sender: self)
                }
            }
        }
    }
}

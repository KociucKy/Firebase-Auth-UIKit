import UIKit
import Firebase

class ContentVC: UIViewController{
    
    //MARK: - VC Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
    }
    
    //MARK: - Actions
    @IBAction func logOutPressed(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        do{
            try firebaseAuth.signOut()
            navigationController?.popToRootViewController(animated: true)
        }catch let signOutError as NSError{
            print(signOutError.localizedDescription)
        }
    }
}



import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkPasswordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //텍스트필드도 액션으로 선언을 해야 입력했을 때 에러가 안 뜨는구나
    @IBAction func emailTextField(_ sender: UITextField) {
    }
    @IBAction func passwordTextField(_ sender: UITextField) {
    }
    @IBAction func checkPasswordTextField(_ sender: UITextField) {
    }
    
    
    @IBAction func signupButton(_ sender: Any) {
        
        if emailTextField.text?.isEmpty == true || passwordTextField.text?.isEmpty == true || checkPasswordTextField.text?.isEmpty == true
        {
            signupButton.isEnabled = true
        } else {
            // 버튼도 Outlet 선언을 해야 여기서 가져다가 쓸 수 있음
            signupButton.isEnabled = false
            guard let confirmVC = self.storyboard?.instantiateViewController(identifier: "ConfirmViewController")
            as? ConfirmViewController
            else { return }
        
            
            
//            self.navigationController?.pushViewController(confirmVC, animated: true)

            

            
            confirmVC.mainTitle = emailTextField.text

        
            
            
        }
    }
  
 
    
}



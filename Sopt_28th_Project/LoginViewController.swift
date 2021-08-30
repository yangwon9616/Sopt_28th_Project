
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

  
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
//        if emailTextField.text?.isEmpty == true || passwordTextField.text?.isEmpty == true {
//            loginButton.isEnabled = false
//            // loginButton.userInteractionEnabled = true
//
//            loginButton.setTitleColor(.gray, for: .normal)
//        } else {
//            loginButton.isEnabled = true
//            loginButton.setTitleColor(.yellow, for: .normal)
//
//        }
        
        
        
        
        
        
    }
    
//
    
//    if sender.text?.isEmpty == true {btn.isEnabled = false}
    
    @IBAction func emailTextField(_ sender: UITextField) {

    

    }
    
    @IBAction func passwordTextField(_ sender: UITextField) {

   
        
    }
    
    @IBAction func loginButton(_ sender: Any) {
   
        if emailTextField.text?.isEmpty == true || passwordTextField.text?.isEmpty == true {
            loginButton.isEnabled = true
            // loginButton.userInteractionEnabled = true
            loginButton.setTitleColor(.gray, for: .normal)



            
        } else {
            loginButton.isEnabled = false
            //loginButton.setTitleColor(.yellow, for: .normal)
            
            guard let confirmVC = self.storyboard?.instantiateViewController(identifier: "ConfirmViewController")
            as? ConfirmViewController
            else { return }
        
            //이건 프레젠트 방식 설정
            //  confirmVC.modalPresentationStyle = .fullScreen
            
            
            //이걸 추가해야 ConfirmVC에서 데이터를 가져올 수 있음
            confirmVC.mainTitle = emailTextField.text

            self.navigationController?.pushViewController(confirmVC, animated: true)

//            self.present(confirmVC, animated: true, completion: nil)
        }
        
        
      
    }
    
    // var textField : String?    if let {버튼.isEnabled = false}
    
    //네비게이션을 할 거면 네비게이션 컨트롤러 붙이고 해야 적용이 됨
    @IBAction func signupButton(_ sender: Any) {
        
        guard let singupVC = self.storyboard?.instantiateViewController(identifier: "SignupViewController")
        as? SignupViewController
        else { return }
        

        self.navigationController?.pushViewController(singupVC, animated: true)
    
    }
    
   
    
    
    
    
    
    
    
}

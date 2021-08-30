
import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var mainTitle : String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTitleLabel()
    }
    
    
    
    func setTitleLabel () {
        if let tle = self.mainTitle {
            titleLabel.text = tle + "님"
        }
    }
    

    
    

    @IBAction func confirmButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}

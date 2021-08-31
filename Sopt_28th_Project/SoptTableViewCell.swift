//
//  SoptTableViewCell.swift
//  Sopt_28th_Project
//
//  Created by 조양원 on 2021/08/31.
//

import UIKit

class SoptTableViewCell: UITableViewCell {
    
    static let identifier : String = "SoptTableViewCell"

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var stateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setData(imageName : String,
                 name : String,
                 state : String)
    {
        if let image = UIImage(named: imageName)
        {
            profileImageView.image = image
            
        }
            nameLabel.text = name
            stateLabel.text = state
    }

}

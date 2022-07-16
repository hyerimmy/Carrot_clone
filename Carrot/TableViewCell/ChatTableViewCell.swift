//
//  ChatTableViewCell.swift
//  Carrot
//
//  Created by 황혜림 on 2022/07/17.
//

import UIKit

class ChatTableViewCell: UITableViewCell {
    

    @IBOutlet weak var uiImageProfile: UIImageView!
    @IBOutlet weak var uiNickname: UILabel!
    @IBOutlet weak var uiLocation: UILabel!
    @IBOutlet weak var uiTime: UILabel!
    @IBOutlet weak var uiContent: UILabel!
    @IBOutlet weak var uiImageProduct: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

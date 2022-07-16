//
//  HomeTableViewCell.swift
//  Carrot
//
//  Created by 황혜림 on 2022/07/17.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var uiTitle: UILabel!
    @IBOutlet weak var uiLocation: UILabel!
    @IBOutlet weak var uiTime: UILabel!
    @IBOutlet weak var uiPrice: UILabel!
    @IBOutlet weak var uiImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

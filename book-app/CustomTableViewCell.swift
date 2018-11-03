//
//  CustomTableViewCell.swift
//  
//
//  Created by Divya Ganesan on 11/3/18.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        var image: UIImage = UIImage(named: "cat.jpg")!
        // Initialization code
        testImage.image = image
    }

    @IBOutlet weak var testImage: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

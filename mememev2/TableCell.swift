//
//  TableCell.swift
//  mememev2
//
//  Created by Erick Medina on 20/8/18.
//  Copyright © 2018 Erick Medina. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {

    @IBOutlet weak var cellTitle: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

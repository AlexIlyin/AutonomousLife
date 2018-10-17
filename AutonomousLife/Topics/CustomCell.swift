//
//  CustomCell.swift
//  AutonomousLife
//
//  Created by Di Monda Davide on 17/10/2018.
//  Copyright © 2018 Alex Ilyin. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    
    @IBOutlet weak var myTitle: UILabel!
    @IBOutlet weak var myDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}

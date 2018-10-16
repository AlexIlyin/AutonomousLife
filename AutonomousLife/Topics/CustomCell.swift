//
//  CustomCell.swift
//  AutonomousLife
//
//  Created by Di Monda Davide on 16/10/2018.
//  Copyright © 2018 Alex Ilyin. All rights reserved.
//

import Foundation
import UIKit

class CustomCell : UITableViewCell{
    var message : String?
    var mainImage : UIImage?
    var messageView : UITextView = {
        
        var textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
        
    }()
    var mainImageView : UIImageView = {
        
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



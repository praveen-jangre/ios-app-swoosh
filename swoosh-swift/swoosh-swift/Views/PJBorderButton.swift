//
//  PJBorderButton.swift
//  swoosh
//
//  Created by Praveen Jangre on 25/05/2023.
//

import UIKit

class PJBorderButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
    }
    
    

}

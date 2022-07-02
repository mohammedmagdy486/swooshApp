//
//  BorderButton.swift
//  APP Swoosh
//
//  Created by AMN on 1/21/22.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
  
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }
}

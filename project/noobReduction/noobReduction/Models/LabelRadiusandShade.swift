//
//  LabelRadiusandShade.swift
//  noobReduction
//
//  Created by Florian on 1/31/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import UIKit

class LabelRadiusandShade: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        putLabelBendandShade()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        putLabelBendandShade()
    }
    
    func putLabelBendandShade() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 20
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 4
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.layer.shadowOpacity = 0.75
    }
    
}


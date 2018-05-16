//
//  ButtonRadiusandShade.swift
//  noobReduction
//
//  Created by Florian on 1/31/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import UIKit

class ButtonRadiusandShade: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        putBendandShade()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        putBendandShade()
    }
    
    func putBendandShade() {
        self.layer.cornerRadius = 20
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 4
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.layer.shadowOpacity = 0.75
    }
}

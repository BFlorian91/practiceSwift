//
//  buttonStyleRadiusandShade.swift
//  EatWho
//
//  Created by Florian on 2/1/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import UIKit

class buttonStyleRadiusandShade: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        skinButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super .init(coder: aDecoder)
        skinButton()
    }
    
    func skinButton() {
        self.layer.cornerRadius = 20
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOffset = CGSize(width: 4, height: 4)
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 4
    }
}

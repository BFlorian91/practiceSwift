//
//  ViewController.swift
//  noobReduction
//
//  Created by Florian on 1/31/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var percentValue: Int?
    var priceValue: Int?
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var percent: UITextField!
    @IBOutlet weak var number: UILabel!
    
    
//    Active button
    @IBAction func calculateButton(_ sender: Any) {
//      number.text != "" &&
        if  percent.text != "" {
            percentageCalculation()
        } else {
            print("SIGABRT LUL!")
        }
    }
//    -----------
    
//    Stepper
    @IBAction func moreAndLess(_ sender: UIStepper) {
        percentValue = Int(sender.value)
        percent.text = "\(percentValue!) %"
    }

    @IBAction func stepperPrice(_ sender: UIStepper) {
        priceValue = Int(sender.value)
        number.text = "\(priceValue!) €"
    }
//    -----------
    
//    Algo de %
    func percentageCalculation() {
        let percentCalcul = priceValue! - priceValue! * percentValue! / 100
        result.text = "\(percentCalcul) €"
    }
//    -----------
}


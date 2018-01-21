//
//  ViewController.swift
//  Calculette IMC
//
//  Created by Florian on 1/9/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sizeResult: Int?
    var weightResult: Int?
    
    // Outlets
    @IBOutlet weak var sizeTextfield: UITextField!
    @IBOutlet weak var weightTextfield: UITextField!
    @IBOutlet weak var resultIMC: UILabel!
   
    @IBOutlet weak var valueError: UILabel!
    
    
    
    // Actions
    @IBAction func calculateButton(_ sender: UIButton) {
        if sizeTextfield.text != "" && weightTextfield.text != "" {
           imcCalculate()
            // Masque le texte Entrer vos valeurs
           valueError.isHidden = true
            // Attribut un nouveau nom au boutton après avoir cliqué
           //  button.setTitle("RESET", for: .normal)
        } else {
            valueError.isHidden = false
        }
        
    }
    
    @IBAction func sizeStepper(_ sender: UIStepper) {
        sizeResult = Int(sender.value)
        sizeTextfield.text = "\(sizeResult!) cm"
    }
    
    @IBAction func weightStepper(_ sender: UIStepper) {
        weightResult = Int(sender.value)
        weightTextfield.text = "\(weightResult!) kg"
    }
    
    func displayResult(imc: Double) -> String {
        var text = " avec un IMC de \(imc)"
        
        switch imc {
        case 0...16:
            text = "Dénutrition \(text)"
        case 16.5...18.5:
            text = "État de maigreur \(text)"
        case 18.5...25:
            text = "Corpulance normale \(text)"
        case 25...30:
            text = "Surpoid \(text)"
        case 30...35:
            text = "Obésité modéré \(text)"
        case 35...40:
            text = "Obésité sévère \(text)"
        case 40...50:
            text = "Obésité morbide \(text)"
        default:
            print("")
        }
        return text
    }
    
    func imcCalculate() {
        let size2 = Double(sizeResult!)/100 * Double(sizeResult!)/100
        let imc = Double(weightResult!) / size2
        resultIMC.text = "\(displayResult(imc: imc))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



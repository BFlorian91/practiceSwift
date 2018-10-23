//
//  ViewController.swift
//  cat age
//
//  Created by Florian Beaumont on 10/23/18.
//  Copyright © 2018 Florian Beaumont. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var textFieldAge: UITextField!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func calculate() {
        //close the keyboard!
        view.endEditing(true)
        //Unwrap the user value
        if textFieldAge != nil {
            let text = textFieldAge.text!
            if var ageInNumber = Int(text) {
                ageInNumber *= 7
                resultLabel.text = "Votre âge de chat est \(ageInNumber) ans"
            }
        }
    }
    //Make a speaker button
    @IBAction func voiceAction() {
        //Verif if optional isn't empty
        if let text = resultLabel.text {
            //Make an object with AVSpeech... classes
            let speech = AVSpeechSynthesizer()
            //Create an AVSpeechUtterance instance containing the text to be spoken.
            let utterance = AVSpeechUtterance(string: text)
            //The rate at which the utterance will be spoken.
            utterance.rate = 0.53
            utterance.voice = AVSpeechSynthesisVoice(language: "fr_FR")
            //Enqueues an utterance to be spoken.
            speech.speak(utterance)
        }
    }
}


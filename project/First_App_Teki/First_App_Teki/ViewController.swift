//
//  ViewController.swift
//  First_App_Teki
//
//  Created by Florian Beaumont on 18/09/2017.
//  Copyright © 2017 Florian Beaumont. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let celebrities = ["le Jacky", "le King", "le Yodaf", "le Luna", "la Paradox", "le Opla", "le Doclego", "le Revan", "le super héro", "le Khaalnor", "la Krouxy", "le Gondar", "le Master"]
    let activities = ["du tuning", "du MCDonald", "du fail", "de l'afk", "du kick", "du ku klux klan", "du dps", "du heal", "du tank", "du PVE", "du PVP", "du champ de coton"]

    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote()
    {
        let randomIndex1 = Int(arc4random_uniform(UInt32(celebrities.count)))
        let celebrity = celebrities[randomIndex1]
        print(celebrity)
        
        let randomIndex2 = Int(arc4random_uniform(UInt32(activities.count)))
        let activity = activities[randomIndex2]
        print(activity)
        
        let quote = "Tu es " + celebrity + " " + activity + " =D"
        
        quoteLabel.text = quote
    }
}


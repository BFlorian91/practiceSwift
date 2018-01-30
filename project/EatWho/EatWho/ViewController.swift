//
//  ViewController.swift
//  EatWho
//
//  Created by Florian on 1/28/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import UIKit

/* Ameliorate: ajouter une api qui check les restaurant around et classe dans une liste/array et utilise l'index dans le switch */

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    
    /* ImageView */
    @IBOutlet weak var bg: UIImageView!
    @IBOutlet weak var imageView: UIImageView!

    /* Button */
    @IBAction func pushButton(_ sender: Any) {
        if questionLabel != nil {
            questionLabel.isHidden = true
        }
        let randomImage = arc4random_uniform(9)
        switch randomImage {
        case 0:
            imageView.image = UIImage(named: ("delarte"))
            bg.image = UIImage(named: ("bg1"))
            //print("debug1")
        case 1:
            imageView.image = UIImage(named: ("bigFernand"))
            bg.image = UIImage(named: ("bg2"))
            //print("debug2")
        case 2:
            imageView.image = UIImage(named: ("crep'eat"))
            bg.image = UIImage(named: ("bg3"))
            //print("debug3")
        case 3:
            imageView.image = UIImage(named: ("exki"))
            bg.image = UIImage(named: ("bg4"))
            //print("debug4")
        case 4:
            imageView.image = UIImage(named: ("factoryAndCo"))
            bg.image = UIImage(named: ("bg7"))
            //print("debug5")
        case 5:
            imageView.image = UIImage(named: ("freshBurrito"))
            bg.image = UIImage(named: ("bg2"))
            //print("debug6")
        case 6:
            imageView.image = UIImage(named: ("hippopotamus"))
            bg.image = UIImage(named: ("bg3"))
            //print("debug7")
        case 7:
            imageView.image = UIImage(named: ("indianaCafe"))
            bg.image = UIImage(named: ("bg7"))
            //print("debug8")
        case 8:
            imageView.image = UIImage(named: ("kyoto"))
            bg.image = UIImage(named: ("bg6"))
            //print("debug9")
        case 9:
            imageView.image = UIImage(named: ("segafredo"))
            bg.image = UIImage(named: ("bg2"))
            //print("debug10")
        default:
            print("CRASH")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

//
//  ViewController.swift
//  OpCl_1
//
//  Created by Florian on 1/3/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var user_nb: UITextField!
    @IBOutlet weak var sender_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func alert(title : String, message : String) {
        _ = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
    }
}



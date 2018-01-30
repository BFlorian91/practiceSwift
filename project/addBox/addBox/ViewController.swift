//
//  ViewController.swift
//  addBox
//
//  Created by Florian on 1/30/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func addItem(_ sender: UIBarButtonItem) {
        
    }
    // make an Alert for 'Add'
    func alertDialog() {
        
        let alert = UIAlertController(title: "add an item", message: "", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in print("action canceled")
        }
        
        let addAction = UIAlertAction(title: "add", style: .default) { (action) in print("ajouter item")
        }
        alert.addTextField { (textfield) in
            textfield.placeholder = ""
        }
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


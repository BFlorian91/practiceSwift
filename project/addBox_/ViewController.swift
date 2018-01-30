//
//  ViewController.swift
//  addBox
//
//  Created by Florian on 1/30/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var taskLabel: UILabel!
    
    /* Action */
    
    // Remove le label
    @IBAction func removeLabel(_ sender: UIButton) {
        self.taskLabel.text = ""
    }
    
    @IBAction func addItem(_ sender: UIBarButtonItem) {
        alertDialog()
    }
    
    // PopUp / alert for 'Add'
    func alertDialog() {
        
        // Le boutton + pour add, qui fait pop le popup
        let alert = UIAlertController(title: "add an item", message: "", preferredStyle: .alert)
        
        // Gestion du cancel
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in print("Canceled")
        }
        
        // Gestion du send dans l'UILabel
        let addAction = UIAlertAction(title: "add", style: .default) { (action) in let resultTask = alert.textFields![0]
            self.taskLabel.text = resultTask.text!
        }
        
        // Placeholder
        alert.addTextField { (textfield) in
            textfield.placeholder = "write a task here"
        }
        
        // Programmation des bouttons
        alert.addAction(cancelAction)
        alert.addAction(addAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}

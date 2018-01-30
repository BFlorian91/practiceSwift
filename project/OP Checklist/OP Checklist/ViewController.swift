//
//  ViewController.swift
//  OP Checklist
//
//  Created by Florian on 1/23/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let identification = "ChecklistCell"
    

    @IBOutlet weak var checklistTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identification, for: indexPath)
        cell.textLabel!.text = "cell"
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}


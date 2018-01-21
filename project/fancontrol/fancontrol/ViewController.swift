//
//  ViewController.swift
//  fancontrol
//
//  Created by Florian on 1/21/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import Cocoa
import SMCKit


class ViewController: NSViewController {
    

    @IBAction func highRPM(_ sender: NSButton) {

        func testFanCount() {
            do {
                let ete = try SMCKit.fanCurrentSpeed(0)
                print(ete)
            } catch {
                print(error.localizedDescription)
            }
        }
        testFanCount()
    }
    
    
    @IBAction func medRPM(_ sender: NSButton) {
        print("test medRPM !!!")
    }
    
    @IBAction func slowRPM(_ sender: NSButton) {
        print("test lowRPM !!!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}


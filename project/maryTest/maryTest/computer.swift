//
//  computer.swift
//  maryTest
//
//  Created by Florian on 3/30/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

class Computer {
    var cpu: String
    var gpu: String
    var motherBoard: String
    var ssd: String
    var memory = 0
    var alimentation = 0
    
    init(cpu: String, gpu: String, motherBoard: String, ssd: String) {
        self.cpu = cpu
        self.gpu = gpu
        self.motherBoard = motherBoard
        self.ssd = ssd
    }
    
    func start(state: Bool) {
        print(state ? "The computer is start have fun!" : "The computer is down")
    }
}

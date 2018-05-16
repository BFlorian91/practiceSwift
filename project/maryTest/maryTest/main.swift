//
//  main.swift
//  maryTest
//
//  Created by Florian on 3/29/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import Foundation

let pc1 = Computer(cpu: "Ryzen 5 1600", gpu: "GTX 1080 TI", motherBoard: "Gigabyte", ssd: "M2")

var allTheComput = ["Motherboard" : pc1.motherBoard, "CPU" : pc1.cpu, "GPU" : pc1.gpu, "Memory" : pc1.memory, "SSD" : pc1.ssd, "Power" : pc1.alimentation] as [String : Any]

print("Do you want START your computer? (y/n)")
if let computerState = readLine() {
    print(computerState == "y" ? pc1.start(state: true) : pc1.start(state: false))

    print("Do you want list the device in your computer? (y/n)")
    if let myDeviceIs = readLine() {
        print(myDeviceIs == "y" ? "\(allTheComput)\n" : "ok\n")
                while true {
                    
                    print("Do you want change anything? (y/n)")
                    if let changeDevice = readLine() {
                        
                        if changeDevice == "y" || changeDevice == "Y" {
                            print("\nOk, what do you want modify?\n"
                                + "1. Motherboard\n"
                                + "2. Processor\n"
                                + "3. Graphics card\n"
                                + "4. Memory\n"
                                + "5. SSD\n"
                                + "6. Power\n"
                                + "7. EXIT")
                            
                    if let choice = readLine() {
                        
                        switch choice {
                        case "1":
                            print("What motherboard do you want?\n")
                            if let mb = readLine() {
                                allTheComput["Motherboard"] = mb
                                print(allTheComput)
                            }
                        case "2":
                            print("What processor do you want?\n")
                            if let cpu = readLine() {
                                allTheComput["CPU"] = cpu
                                print(allTheComput)
                            }
                        case "3":
                            print("What graphics card do you want?\n")
                            if let gpu = readLine() {
                                allTheComput["GPU"] = gpu
                                print(allTheComput)
                            }
                        case "4":
                            print("What memory do you want?\n")
                            if let memory = readLine() {
                                allTheComput["Memory"] = memory
                                print(allTheComput)
                            }
                        case "5":
                            print("What motherboard do you want?\n")
                            if let ssd = readLine() {
                                allTheComput["SSD"] = ssd
                                print(allTheComput)
                            }
                        case "6":
                            print("What motherboard do you want?\n")
                            if let power = readLine() {
                                allTheComput["Power"] = power
                                print(allTheComput)
                            }
                        case "7":
                            break
                        default:
                            print("the choice was incorrect.")
                        }
                    } else {
                    print("ok.")
                    }
                }
            }
        }
    }
}




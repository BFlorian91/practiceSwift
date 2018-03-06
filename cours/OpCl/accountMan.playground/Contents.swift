//: Playground - Software Beaumont Florian
import Foundation

func usersValues(u: Double ,v: Double ,w: Double, x: Double, y: Double, z:Double) -> Double {
    let expenses = u + v + w + x + y + z
    return expenses
}

let expenses = usersValues(u: 24.99, v: 11.0, w: 23.0, x: 33.0, y: 300, z: 107)
let salary = 480.0
var account = 1300.0

let month = ["January", "February", "March", "april", "May", "June", "July", "August", "September", "October", "November", "December"]

print("=====================================================================================")
print("Start simulation (Y/N)")
let simulationStart = readLine()
var i = 0

if simulationStart == "y" || simulationStart == "Y" {
    print("Calculating...\n")
    for i in 2..<12 {
        if i <= 5 {
            let result = expenses - salary
            account += result
            print("\(month[i]): \(account) €" )
            sleep(1)
        } else {
            let result = (expenses + 107) - salary
            account += result
            print("\(month[i]): \(account) €" )
            sleep(1)
        }
    }
} else {
    print("CYA!")
}
print("=====================================================================================")

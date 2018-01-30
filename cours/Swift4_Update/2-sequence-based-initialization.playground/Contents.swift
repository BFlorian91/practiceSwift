//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//sequence-based initialization
let names = ["Anne", "John", "Paul S", "Kate", "Dylan"]
let phones = ["647-456-8888", "416-777-5655", "647-456-2222", "645-111-4343"]


let contactes  = Dictionary(uniqueKeysWithValues: zip(names, phones))
print(contactes)

//duplication key resolution

let noms = ["Anne", "Anne", "John", "Paul S", "Kate", "Dylan", "John"]
let nombresDoublons = Dictionary(zip(noms, repeatElement(1, count: noms.count)), uniquingKeysWith:+)

print(nombresDoublons)





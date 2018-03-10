//
//  BubuleSortBLul
//  
//
//  Created by Florian on 3/9/18.
//

import Foundation

//==========================
// MARK: - Array désordonné
//==========================

var tab = [400, 234, 145, 5543, 32, 0, 4567, 345678, 223435, 657, 23, 65675, 23423432]



var swap = true
var i = 0
let len = tab.count - 1

// compteur de cycles
var n = 0

print("\nTableau désordonné:🙀 "
    + "\n\(tab)")

while swap == true {
    i = 0
    swap = false
    while i != len {
        //=======================
        // MARK: - fonction swap
        //=======================
        if tab[i + 1] < tab[i] {
            let tmp = tab[i + 1]
            tab[i + 1] = tab[i]
            tab[i] = tmp
            
            if i == 0 {
                n += 1
                print("\n\n 🐈  ==== Sort Cycles \(n) ===== 🐈 ")
            }
            // Affichage des swap de valeurs tour par tour
            print("\n Index \(i + 1): \(tab[i + 1]) -> Index \(i): \(tab[i])  ✅")
            sleep(1)
            swap = true
        }
        i += 1
    }
}

//=======================
// MARK: - Array ordonné
//=======================

print("\nTableau ordonné:😻"
    + "\n\(tab)\n")












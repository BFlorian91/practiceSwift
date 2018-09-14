//
//  Character.swift
//  projet 3.0
//
//  Created by Florian on 4/11/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

import Foundation

class Character {
    var life: Int
    var name: String
    var attackPower: Int
    var healPower: Int?

    init(life: Int, name: String, attackPower: Int, healPower: Int) {
        self.life = life
        self.name = name
        self.attackPower = attackPower
        self.healPower = healPower
    }
}

class Warrior : Character {
    convenience init() {
        self.init(life: 100, name: "Warrior", attackPower: 10, healPower: 0)
    }
}

class Wizzard : Character {
    convenience init() {
        self.init(life: 60, name: "Wizzard", attackPower: 5, healPower: 10)
    }
}

class Giant : Character {
    convenience init() {
        self.init(life: 200, name: "Giant", attackPower: 5, healPower: 0)
    }
}

class Dwarf : Character {
    convenience init() {
        self.init(life: 50, name: "Dwarf", attackPower: 20, healPower: 0)
    }
}

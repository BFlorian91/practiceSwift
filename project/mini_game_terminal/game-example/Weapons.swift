//
//  Weapons.swift
//  game-example
//
//  Created by Florian on 5/9/18.
//  Copyright © 2018 com.Florian. All rights reserved.
//

class Weapon {
    var damages: Int
    
    init(damages: Int) {
        self.damages = damages
    }
}

class Bow: Weapon {
    init() {
        super .init(damages: 18)
    }
}

class Sword: Weapon {
    init() {
        super .init(damages: 15)
    }
}

class Wand: Weapon {
    init() {
        super .init(damages: 34)
    }
}

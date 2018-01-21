//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


struct Vehicule {
    
    //propriétes
    let couleur:UIColor
    let nombreSieges:Int = 4
    let nombrePortes:Int = 4
    
    //méthodes
    func demarrer() {
        print("véhicule démarre")
    }
    
    func rouler() {
        print("véhicule roule")
    }
    
    func freiner() {
        print("véhicule freine")
    }
    
    func stopper() {
        print("véhicule en arrêt")
    }
    
    func garer() {
        print("véhicule garé")
    }
    
    func decrire() {
        print("voiture \(nombrePortes) portes avec \(nombreSieges) sièges de couleur \(retournerCouleurTexte(color: self.couleur))")
    }
    
    private func retournerCouleurTexte(color:UIColor) -> String {
        
        var texteCouleur:String = ""
        
        switch color {
        case .red:
            texteCouleur = "rouge 🚗"
        case .blue:
            texteCouleur = "bleu"
        case .black:
            texteCouleur = "noire"
        default:
            texteCouleur = "sans couleur"
        }
        
        return texteCouleur
    }
    
}


let auto = Vehicule(couleur: .blue) //memberwise initializer
let autoRouge = Vehicule(couleur: .red)
auto.decrire()
autoRouge.decrire()

autoRouge.demarrer()
autoRouge.rouler()
autoRouge.freiner()
autoRouge.stopper()
autoRouge.garer()



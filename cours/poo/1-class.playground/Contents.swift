//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Vehicule {

    //propriétés - attributs qui vont servir à décrire les objets
    var couleur:UIColor
    var nombreSieges:Int = 4
    var nombresPortes:Int = 4
    
    //initialization - qui sert à créer chaque nouvel objet de ce type Vehicle
    init(couleur:UIColor) {
        self.couleur = couleur
    }
    
    //methodes - qui servent à définir les actions de cet objet
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
        print("véhicule stoppe / en arrêt")
    }
    
    func garer() {
        print("véhicule garé")
    }
    
    func decrire() {
        print("voiture \(self.nombresPortes) portes avec \(nombreSieges) sieges de couleur \(donnerCouleur(color: self.couleur))")
    }
    
    func donnerCouleur(color:UIColor) -> String {
        
        var texteCouleur:String?
        
        switch color {
        case .red:
            texteCouleur = "rouge"
        case .blue:
            texteCouleur = "bleu"
        case .black:
            texteCouleur = "noir"
        default:
            texteCouleur = ""
        }
        
        return texteCouleur!
    }
    
}

//créer des objets de type Vehicule
let voiture = Vehicule(couleur: UIColor.red)
voiture.nombreSieges
voiture.nombresPortes
voiture.couleur
voiture.decrire()
voiture.demarrer()
voiture.rouler()
voiture.freiner()
voiture.stopper()
voiture.garer()






















//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


enum Couleur:String {
    case bleu, rouge, gris
    
    func appliquerCouleur() -> UIColor {
        
        var valeurCouleur:UIColor?
        
        switch self {
            case .bleu:
                valeurCouleur = UIColor.blue
            case .rouge:
                valeurCouleur = UIColor.red
            case .gris:
                valeurCouleur = UIColor.gray
        }
        
        return valeurCouleur!
        
    }
}

struct Vehicule {
    
    //propriétes
    let couleur:Couleur
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
        print("voiture \(nombrePortes) portes avec \(nombreSieges) sièges de couleur \(self.couleur.rawValue)")
    }
    
    func peindreVoiture() {
        print("\(self.couleur.appliquerCouleur())")
    }
    
    /*
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
     
     */
   
}

let voiture = Vehicule(couleur: .rouge)
voiture.peindreVoiture()
voiture.decrire()









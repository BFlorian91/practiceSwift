class Personne {
    var prenom: String
    var nom: String
    var age = 0
    
    init(prenom: String, nom: String) {
        self.prenom = prenom
        self.nom = nom
    }
    
    func sePresenter() -> String {
        return "Bonjour, je m'appelle \(prenom) \(nom)"
    }
    
    func feterSonAnniversaire() {
        age += 1
    }
    
    static func creerJamesBond() -> Personne {
        let bond = Personne(prenom: "James", nom: "Bond")
        bond.age = 40
        return bond
    }
}

class Developpeur: Personne {
    var ordinateur = "MAC"
}

class Traducteur: Personne {
    var langueConnues: String?
}

class Athlete: Personne {
    var recordDu100m = 10.0
}

let computerScient = Developpeur.init(prenom: "Florian", nom: "Beaumont")

computerScient.ordinateur


computerScient.feterSonAnniversaire()
computerScient.feterSonAnniversaire()

//class Counter {
//    var count = 0
//    func increment() -> Int {
//        count += 1
//        return count
//    }
//    func increment(by amount: Int) -> Int {
//        count += amount
//        return count
//    }
//    func reset() -> Int {
//        count = 0
//        return count
//    }
//}
//
//var test = Counter()
//test.increment(by: 12)
//test.increment()
//test.reset()



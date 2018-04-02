class Player {
    // Variable protégé / non modifiable une fois valeur attribuée
    private var _name: String
    
    // Permet de récupérer la valeur protégé par le private.
    var name: String {
        return _name
    }
    
    init(name: String) {
        self._name = name
    }
    
    func description() -> String {
        return "Welcome " + _name + "."
    }
    
    // Function de changement de nom, possible car on est encore dans la class
    func rename(newName: String) {
        self._name = newName
    }
}


let opla = Player(name: "Opla")
let yliss = Player(name: "Mary")

print(yliss.name)

opla.rename(newName: "GonnaBePro")
yliss.rename(newName: "Yliss")

print(opla.name)

print(opla.description())
print(yliss.description())


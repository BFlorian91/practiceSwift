class Character {
    var name: String
    var role: String
    var spec: String
    var level = 0
    
    init(name: String, role: String, spec: String) {
        self.name = name
        self.role = role
        self.spec = spec
    }
}

var opla = Character(name: "Opla", role: "Priest", spec: "Shadow")

print(opla.role)

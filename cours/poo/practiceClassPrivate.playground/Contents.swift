class Personne {
    
    // =============== Propriety =============== //
    private var _name: String
    private var _surname: String
    private var _age: Int
    
    
    // ================= Get ================= //
    var name: String {
        return _name
    }
    
    var surname: String {
        return _surname
    }
    
    var age: Int {
        return _age
    }
    
    
    // ================ Init ================ //
    init(name: String, surname: String, age: Int) {
        self._name = name
        self._surname = surname
        self._age = age
    }
    
    
    // ================== Method ================== //
    
    func rename(newName: String, newSurname: String) {
        self._name = newName
        self._surname = newSurname
    }
    
    func newAge(newAge: Int) {
        self._age = newAge
    }
    
    func happyBirhtday() {
        _age += 1
        print("Joyeux Anniversair, vous avez \(_age) ans maintenant!\n")
    }
    
    func welcomeDude() {
        print("Welcome \(_name) \(_surname)!\n")
    }
    
}

// ================== CDOE ================== //

let jacki = Personne(name: "Jacques", surname: "Prévert", age: 59)

jacki.welcomeDude()

jacki.rename(newName: "Paul", newSurname: "Walker")

print(jacki.name + " " + jacki.surname)

jacki.newAge(newAge: 34)

print("Votre nouvel age est de \(jacki.age) ans!\n")

jacki.happyBirhtday()



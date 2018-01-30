// Défini un dictionnaire prénom/âge
let ages: [String: Int] = ["marie": 19, "jean": 32, "pierre": 24]

// Récupère l'âge de mathieux
let ageMathieux: Int? = ages["mathieux"]

// Si la "boite" contient une valeur
if ageMathieux != nil {
    // On utilise ! pour "ouvrir" la boite
    print("Mathieux a \(ageMathieux!) ans")
}
else {
    print("L'âge de Mathieux n'est pas défini")
}

let ageMarie: Int? = ages["marie"]

if ageMarie != nil {
    print("Marie a \(ageMarie!) ans")
} else {
    print("L'âge de Marie n'est pas défini")
}

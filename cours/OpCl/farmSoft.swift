var money = 0.0

var barn = ["milk": 0, "wheat": 0, "wool": 0]

// ==== Check if the bar isn't empty

func calculateBarnSize() -> Int {
    var barnSize = 0
    
    for (_, count) in barn {
        barnSize += count
    }
    return barnSize
}

// ==== Sell fuction ====
func sell() {
    money += Double(barn["milk"]!) * 0.50 //Vente du lait
    money += Double(barn["wheat"]!) * 0.30 // Vente du blé
    money += Double(barn["wool"]!) * 1 // Vente de la laine
    
    barn = ["milk": 0, "wheat": 0, "wool": 0]
}

// ==== Add to Barn ====
func harvest() {
    barn["wheat"]! += 100
}

func mowSheep() {
    barn["wool"]! += 30
}

func milkCow() {
    barn["milk"]! += 30
}

// ==== Starting loop ====
var start = true

// ==== Exit software funtion =====
func exitSoft() {
    print("\nVoulez vous continuez à utiliser le logiciel (Y/N)")
    let a = readLine()
    if a! == "N" || a! == "n" {
        // Stop the loop...
        start = false
    } else {
        //Continue...
        print("\n")
    }
}

// ==== Main Code ====

while start == true {
    
    print("Que voulez vous faire ?"
        + "\n1. 🤸  Enregistrer une nouvelle activité"
        + "\n2. 🏦  Consulter ma banque"
        + "\n3. 🏠  Consulter ma grange")

    if let choice = readLine() {
        switch choice {
        case "1":
            print("Qu'avez-vous fait aujourd'hui?"
                + "\n1. 🥕 J'ai nourri mes annimaux"
                + "\n2. 💰 J'ai vendu mes produits"
                + "\n3. 🐄 J'ai trait mes vaches"
                + "\n4. 🌾 J'ai moissoné"
                + "\n5. 🐑 J'ai tondu mes moutons")
            if let activity = readLine() {
                switch activity {
                case "1":
                    money -= 4
                    print("Vous avez désormait \(money) € 💰")
                case "2":
                    if calculateBarnSize() > 0 {
                        sell()
                        print("Tout est vendu... 😎"
                        + "\nVous avez désormait \(money) € 💰")
                    } else {
                        print("\n🙁  Le barn est vide, il n'y a rien à vendre...")
                    }
                case "3":
                    milkCow()
                    print("🐄  Les vaches sont traites...")
                case "4":
                    harvest()
                    print("🌾  La moisson est faite...")
                case "5":
                    mowSheep()
                    print("🐑  Les mountons sont tondus...")
                default:
                    print("\nError, an incorrect value was entered")
                }
            }
        case "2":
            print("Vous avez \(money) € 💰")
        case "3":
            print("Vous avez:"
                + "\n \(barn["milk"]!) de lait"
                + "\n \(barn["wool"]!) de laine"
                + "\n \(barn["wheat"]!) de blé")
        default:
            print("\nError, an incorrect value was entered")
        }
    }
    exitSoft()
}

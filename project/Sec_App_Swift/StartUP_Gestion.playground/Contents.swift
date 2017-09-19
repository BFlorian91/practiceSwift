let moneyNeeded = 1499.0
var money = 0.0
var day = 1

while money < moneyNeeded
{
    if day == 1{
        money += 100 * 0.30
    }else if day == 10 || day == 20{
        money += 30 * 1
    }else{
        money += 30 * 0.50
    }
    day += 1
}
print("Ça va prendre \(day) jours!")

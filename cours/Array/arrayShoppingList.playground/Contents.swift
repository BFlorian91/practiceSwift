// Avec un Array 3 items
var shopList = ["water", "bread", "milk"]

if shopList.isEmpty {
    print("Everythimg is bought")
} else {
    print("With items:")
    print("We need", shopList.count, "items")
}

// Avec un Array vide
var shopListEmpty = [String]()
if shopListEmpty.isEmpty {
    print("\n\nWithout items:")
    print("Everythimg is bought")
} else {
    print("We need", shopListEmpty.count, "items")
}

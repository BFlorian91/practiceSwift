// Adding

var myList = ["a", "b"]
myList += ["c", "d", "e"]
print("==================\n", myList.count, "\n")

// Insert

myList.insert("coucou", at: 3)

// Changing

myList[0] = "LOL"
myList[1...2] = ["lmao", "wtf"]
print("==================\n", myList, "\n")

// Remove

let testRemove = myList.remove(at: 3)
print("==================\nRemove the index 3 from array\n", myList, "\n")


let testRemoveLast = myList.removeLast()
print("==================\nRemove the last index from array\n", myList, "\n")

// Iterating Over an Array
print("\n==================\n For in loop")

for item in myList {
    print(item)
}
print("\n==================\n For Enumerate\n")

// Enumerate

for (index, value) in myList.enumerated() {
    print("Item \(index + 1): \(value)")
}

print("\n==================")



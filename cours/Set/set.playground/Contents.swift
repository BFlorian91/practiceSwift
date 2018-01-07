// Set declaration
print("I ======================================\n")

var setTest: Set = ["Melodie", "Mary", "Lea"]

setTest.insert("Julie")

print(setTest)

/* .contains (Checking if is word, etc... is in the string) */
print("\nII ======================================\n")

if setTest.contains("Lea") {
    print("Lea is here")
} else {
    print("She isn't here!")
}

/* Iterating Over a set */ print("\nIII ======================================\n")

for name in setTest {
    print("\(name)")
}

/* .sorted (sort by alphabetic)*/ print("\nIV ======================================\n")

for name in setTest.sorted() {
    print("\(name)")
}

/* set Operation (sort number)*/ print("\nV ======================================\n")

let digitsOne: Set = [1, 3, 5, 7]
let digitdTwo: Set = [2, 4, 6, 8]
// Call the method 'union' for join the two set, and .sorted them
print(digitsOne.union(digitdTwo).sorted())

/* set Operation (subtract) */ print("\nV ======================================\n")
var employees: Set = ["Alicia", "Bethany", "Chris", "Diana", "Eric"]
let neighbors: Set = ["Bethany", "Eric", "Forlani", "Greta"]
employees.subtract(neighbors)
print(employees)


let employees1: Set = ["Alicia", "Bethany", "Chris", "Diana", "Eric"]
let attendees1: Set = ["Alicia", "Bethany", "Diana"]
print(employees1.isSuperset(of: attendees1))


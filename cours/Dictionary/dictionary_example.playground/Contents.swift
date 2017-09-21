var notes = ["Math" : 9.5, "Physique" : 15.3, "Informatique" : 17.6]
var moyenne = 0.0

for (cours, note) in notes{
    print("Tu as \(note) en \(cours)")
    moyenne += note
}
moyenne /= 3

print("\nTu as \(moyenne) de moyenne général")

// Parcourir un ARRAY et faire une moyenne des values
var values = [18, 4, 14, 15, 17, 15, 9, 20, 19, 11, 12, 14]

// Ajout de la value 13 dans l'Array
values.append(13)

// Declaration d'une var pour le calcule
var result = 0

// Parcour de l'Array et addition de chaque index et ajout dans la var result
for numbers in values {
    
    result += numbers
}

// Calcule de la moyenne des values de l'Array
let average = result / values.count

print(average)

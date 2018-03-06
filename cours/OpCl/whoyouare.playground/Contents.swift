/* Mini game | Florian
swift NomDuFichierSwift for compile it in the terminal
 */
// mental
var geek = 0
var nerd = 0
var scientist = 0
var gamer = 0


// main

print("Welcome to Who you are !")
print("press 1 for start")

let startGame = readLine()

if (startGame == "1") {
    
    // first question
    
    print("Mac or PC?")
    let answerOne = readLine()
    switch answerOne {
    case "Mac"?, "mac"?, "MAC"?, "MaC"?, "mAc"?, "mAC"?:
        geek += 1
    case "Pc"?, "pc"?, "PC"?:
        nerd += 1
        gamer += 1
    default:
        print("OOPS not a correct value...")
    }
    
    // second question
    
    print("Swift or Python?")
    let answerTwo = readLine()
    switch answerTwo {
    case "Swift"?, "swift"?:
        geek += 1
    case "Python"?, "python"?:
        scientist += 1
    default:
        print("OOPS not a correct value...")
    }
    
    // third question
    
    print("IDE or Terminal?")
    let answerThree = readLine()
    switch answerThree {
    case "IDE"?, "ide"?:
        geek += 1
    case "Terminal"?, "terminal"?:
        nerd += 1
    default:
        print("OOPS not a correct value...")
    }
    
    // four question
    
    print("Math or Art?")
    let answerFour = readLine()
    switch answerFour {
    case "MATH"?, "Math"?, "math"?:
        scientist += 1
    case "ART"?, "Art"?, "art"?:
        geek += 1
    default:
        print("OOPS not a correct value...")
    }
}

// result

if geek > nerd{
    if scientist > geek {
        print("Vous êtes un scientifique")
    }
    if gamer > scientist{
        print("Vous êtes un gamer")
    }
    print("Vous êtes un geek")
} else {
    print("Vous êtes un nerd")
}



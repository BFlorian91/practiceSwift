
let AuthRequiered = true
let content = "LuL Sigabrt"


// conditionnal lambda
if AuthRequiered == true {
    print("\(content)")
} else {
    print("You must be log")
}
// operator ternary
AuthRequiered ? "\(content)" : "You must be log"


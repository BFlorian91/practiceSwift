/*Optional vs Integer basic

var IMAnOptional: Int? = 12             //Optional
IMAnOptional

var IMNotAnOptional: Int = 12         //Integer
IMANotAnOptional
 ---------------------------------------------------------------------------------------- */

//Display / Unbox Optional

//First method

var IMAnOptional: Int? = 12
print(IMAnOptional!)


//Second method

if IMAnOptional != nil {        //if the value is nil then the code doesn't crash
    print(IMAnOptional!)
}


//Third method (most used)

/* ------------------- with value testing --------------------*/

if let displayAnOptional = IMAnOptional {
    print(displayAnOptional)
}

/* ------------------ without value testing ------------------*/

var IMAOptionalEmpty: Int?

if let displayAnOptional = IMAOptionalEmpty {
    print(displayAnOptional)
}






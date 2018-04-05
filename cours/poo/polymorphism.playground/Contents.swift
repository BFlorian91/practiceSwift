class Form {
    
    private var _width: Int
    private var _height: Int
    
    var width: Int {
        return _width
    }
    
    var height: Int {
        return _height
    }
    
    init(width: Int, height: Int) {
        self._width = width
        self._height = height
    }
    
    func aire() {
        print("test")
    }
    
    func changeValue(width: Int, height: Int) {
        self._width = width
        self._height = height
    }
}

class Square: Form {
    
    // Appel et modification de l'init de la class mère dans Square
    override init(width: Int, height: Int) {
        super.init(width: width, height: height)
    }
    
    // Appel et modification de la func air() de la class mère dans Square
    override func aire() {
        super.aire() //Appel de la fonction de la class mère
        print(width * height)
    }
}

class Triangle: Form {
    
    override init(width: Int, height: Int) {
        super.init(width: width, height: height)
    }
    
    override func aire() {
        print(width * height / 2)
    }
}

let square1 = Square(width: 8, height: 8)


let triangle1 = Triangle(width: 8, height: 4)


square1.aire()
triangle1.aire()

square1.changeValue(width: 12, height: 12)
square1.aire()

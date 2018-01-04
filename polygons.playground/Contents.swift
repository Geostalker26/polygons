//: Playground - noun: a place where people can play

import UIKit

protocol Polygon {
    var name: String { get }
    var sides: Int { get }
    func perimeter() -> Float
    func area() -> Float
}

class Triangle:Polygon {
    var side1: Float
    var side2: Float
    var side3: Float
    var name: String = "Triangle"
    var sides: Int = 3
    
    init(side1: Float, side2:Float, side3: Float) {
        self.side1 = side1
        self.side2 = side2
        self.side3 = side3
    }
    
    func perimeter() -> Float {
        
        return side1+side2+side3
    }
    
    func area() -> Float {
        
        return (side1+side2+side3)/2
        
    }
}

class Square:Polygon {
    var side: Float
    var name: String = "Square"
    var sides: Int = 4
    init(side: Float) {
        self.side = side
    }
    
    func perimeter() -> Float {
        return side * 4
    }
    
    func area() -> Float {
        return side * side
    }
}

class Rectangle:Polygon {
    var longside: Float
    var shortside: Float
    var name: String = "Rectangle"
    var sides: Int = 4
    init(longside: Float, shortside: Float) {
        self.longside = longside
        self.shortside = shortside
    }
    
    func perimeter() -> Float {
        return 2 * (longside+shortside)
    }
    func area() -> Float {
        return longside * shortside
    }
}

func create() -> [Polygon]{
    let T1 = Triangle(side1:3,side2:4,side3:5)
    let T2 = Triangle(side1:6,side2:8,side3:10)
    let S1 = Square(side: 15)
    let S2 = Square(side: 25)
    let R1 = Rectangle(longside:20,shortside:13)
    let R2 = Rectangle(longside:17,shortside:50)
    
    return [T1,T2,S1,S2,R1,R2]
}

let polygons = create()

func draw (shape: Polygon) {
    print("\(shape.name) has \(shape.sides) sides. Perimeter is \(shape.perimeter().description). Area is \(shape.area().description).")
}

polygons.forEach { shape in
    draw(shape: shape)
}

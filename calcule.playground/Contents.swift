import Foundation
let size: Double = 30
let test: Double = Double(pow(10, String(Int(size)).count) as NSNumber)
print(size/test)
//
//print(type(of: size / Double(test as NSNumber))) // testing the cast to Int

//print(Double(Double(30)/Double(100)))

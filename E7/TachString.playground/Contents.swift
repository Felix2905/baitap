//: Playground - noun: a place where people can play

import UIKit

var str: String = "2\nHello\nplayground"
str = str + "\n"

//print(str)
//str.endIndex
//str[19]

func tachChuoi(strin: String){
    var index = 0
    var str1: String = ""
    var str2: String = ""
    
    for char in strin.characters{
        if index % 2 == 0 {
            str1.append(char)
        }
        else {
            str2.append(char)
        }
        index += 1
    }
    
    print("\(str1) \(str2) \n")
}


var array: [String] = []

//var lineNumber = str[str.startIndex]



//Int(lineNumber)
//str = substringToIndex(str.startIndex.advancedBy(3))

var index: Int = 0

var x:String = ""

//str.characters.dropFirst()

//str.characters.dropFirst()
for character in str.characters {
    //array[index].append(character)
    //String(character)
    //array[index] += String(character)
    
    if character != "\n" {
        x += String(character)

    }
    if character == "\n" {
        //x.remove(at: x.endIndex)
        array.append(x)
        x = ""
    }
    
    
}
//print(array.count)

//print(array[1])

for i in 0...array.count - 1 {
    if i != 0 {
        tachChuoi(strin: array[i])
    }
}
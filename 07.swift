/// Copyright (c) 2018 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.
//
//  main.swift
//  Tool
//
//  Created by Alina on 17.10.18.
//  Copyright © 2018 Admin. All rights reserved.
//

import Foundation

//Task1_Factorial
func factorial(b:Int) -> Int {
    return b == 0 ? 1 : b *
        factorial(b: b - 1)
}
print("we have facorial:", factorial(b: 9)) //362880 of 9
//Task2_Bubble function
var array = [8,1,7,5]
print("before:", array) // before sort: [8,1,7,5]
func BubbleSort<T> (_ elements: [T]) -> [T] where T: Comparable {
    var array = elements
    for i in 0..<array.count {
        for j in 1..<array.count-i {
            if array[j] < array[j-1] {
                let tmp = array [j-1]
                array[j-1] = array[j]
                array[j] = tmp
            }
        }
}
return array
}
print("after:", BubbleSort(array)) //after sort: [1, 5, 7, 8]

var darray = [10,-1,3,9,2,27,8]
func selectionSort(_ array: [Int]) -> [Int] {
        guard array.count > 1 else { return
            array }
        var a = array
        for x in 0 ..< a.count - 1 {
            var lowest = x
            for y in x + 1 ..< a.count {
                if a [y] < a [lowest] {
                    lowest = y
                }
            }
            if x != lowest {
                a.swapAt(x, lowest)
            }
        }
        return a
        }

print (selectionSort(array)) //after sort: [1,5,7,8]

//Task_3
print("Enter symbol, please: ")

let testString = readLine(strippingNewline: true)!
let letters = CharacterSet.letters
let digits = CharacterSet.decimalDigits
let lowerCase = CharacterSet.lowercaseLetters
let upperCase = CharacterSet.uppercaseLetters

var letterCount = 0
var digitCount = 0


for currentCharacter in testString.unicodeScalars {
    for uni in testString.unicodeScalars {
        if letters.contains(uni) {
            letterCount += 1
            print("I know It's letter")
        } else if digits.contains(uni) {
            digitCount += 1
            print("I think It's number")
        }
    }
    
    if lowerCase.contains(currentCharacter) {
        print("..and character code is lowwercase")
    } else if upperCase.contains(currentCharacter) {
        print("..and character code is uppercase")
    }
}

let scalars = testString.unicodeScalars

//get unicode value of first char:
let unicodeValue = scalars[scalars.startIndex].value

var isCyrillic = true
for (_, unicode) in scalars.enumerated() {
    if (unicode.value < 1024 || unicode.value > 1279) {
        print("And not a cyrillic text")
        isCyrillic = false
    } else if isCyrillic == true {
    print("it's cyrillic")
    }
}
//Task_4
print("Enter word, please:")

var yourWord = readLine(strippingNewline: true)!
let characters = Array(yourWord)
print("You have entered a word: \(yourWord)")
var counts: [Character: Int] = [:]

for index in characters {
    counts[index] = (counts[index] ?? 0)+1
}

print ("And you can see count of occurences of each character \(counts)")
//Task_5
struct CoordinatesofPointandRadius {
    let x: Int
    let y: Int
    let r: Int

}
let circle1 = CoordinatesofPointandRadius(x: 0, y: 4, r:5)
let circle2 = CoordinatesofPointandRadius(x: 0, y: 5, r:20)
let circle3 = CoordinatesofPointandRadius(x: 0, y: 6, r:7)

var circlesArray = [circle1,circle2,circle3]



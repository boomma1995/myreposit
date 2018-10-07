//: Task_1 Arrays

import Cocoa


//1
var fibArray: [Int] = [0,1,1,2,3,5,8,13,21,34]  // [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]

//2
var revArray: [Int] = fibArray.reversed() // [34, 21, 13, 8, 5, 3, 2, 1, 1, 0]

//3
var capacity: Int
var snglArray: [Int] = [1,5,6,4,3,14,9,31,22,21,25,67,88,87,86,85,84,83,82,81,79,76,90,77]
snglArray.reserveCapacity(100)
capacity = snglArray.capacity // capacity is 100

//4
let count = snglArray.count
// count is 24

//5
snglArray [10] //  = "25"

//6
snglArray [15...20] // [85, 84, 83, 82, 81, 79]

//7
var rptArray = Array (repeating:25, count: 10) //[25, 25, 25, 25, 25, 25, 25, 25, 25, 25]

//8
var oddArray = ["1","3","5","7","9"]

//9
oddArray += ["11"] //["1", "3", "5", "7", "9", "11"]

//10
oddArray += ["15","17","19"] //["1", "3", "5", "7", "9", "11", "15", "17", "19"]

//11
oddArray.insert("13", at: 6) //["1", "3", "5", "7", "9", "11", "13", "15", "17", "19"]

//12
oddArray.removeSubrange(5..<8) //["1", "3", "5", "7", "9", "17", "19"]

//13
let lastRemovedElement = oddArray.removeLast()
print ("The last removed elemet is 19")

//14
oddArray [2...] // ["5", "7", "9", "17"]
oddArray [2...] = ["2","3","4"]
// oddArray ["1", "3", "2", "3", "4"]

//15
oddArray.remove(at:1) // ["1", "2", "3", "4"]
oddArray.remove(at:2) // ["1", "2", "4"]

//16
//let hasThree = oddArray.contains(3)

//17
for (index,value) in oddArray.enumerated() {
    print ("Item \(index+1): \(value)")
}
//Item 1: 1
//Item 2: 2
//Item 3: 4





////: Task_2 Sets

//1
var chSet: Set<Character> = ["a","b","c","d"]

//2
var mChSet: Set<Character> = ["a","b","c","d"]
print(mChSet.isSubset(of:chSet))
//

//3
mChSet.count //4

//4
mChSet.insert("e")
print (mChSet)
//{"b", "e", "a", "d", "c"}

//5

mChSet.sorted()
//["a", "b", "c", "d", "e"]

var srtChSet = mChSet.sorted()
////["a", "b", "c", "d", "e"]

//6
var removedElement = mChSet.remove("f")
print (removedElement)
// nil

//7
mChSet.remove("d")
print (mChSet)
//"["b", "e", "a", "c"]

//8
let mySetIndex = mChSet.index(mChSet.startIndex, offsetBy:0)
let firstElement = mChSet [mySetIndex]
print("Distance is 2 indexes")

//9
mChSet.insert("a")
//inserted false

//10

var aSet = Set<String> (["One","Two","Three", "1", "2"])
var bSet = Set<String> (["1","2","3","One","Two"])

//11
var commonElements = aSet.intersection(bSet) //{"One","Two","1","2"}

//12

var aSubtra = aSet.subtract(bSet) // {"Three"}
var bSubtra = bSet.subtract(aSet) // {"3"}

//13
var exlusion = aSet.symmetricDifference(bSet) //unique elemets in both

//14

var union = aSet.union(bSet) //all elements

//15
var xSet = Set <Int> (arrayLiteral: 2,3,4)
var ySet = Set <Int> (arrayLiteral: 1,2,3,4,5,6)
var zSet = Set <Int> (arrayLiteral: 3,4,2)
var x1Set = Set <Int> (arrayLiteral: 5,6,7)

//16

let xSubsetOfY = print(xSet.isSubset(of:ySet))
let ySubsetOfX = print(ySet.isSubset(of:xSet))

//17

let xStrictSubsetOfY = xSet.isStrictSubset(of: ySet)
let yStrictSubsetOfX = ySet.isStrictSubset(of: xSet)

//18

let xSupersatOfY = xSet.isSuperset(of: ySet) //false
let ySupersatOfX = ySet.isSuperset(of: xSet) //true

//19

let xStrictsSupersetOfZ = xSet.isStrictSuperset(of: zSet) //true

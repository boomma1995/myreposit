/**

*Copyright (c) 2016-2017 Razeware LLC
*
*Permission is hereby granted, free of charge, to any person obtaining a copy
*of this software and associated documentation files (the "Software"), to deal
*in the Software without restriction, including without limitation the rights
*to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
*copies of the Software, and to permit persons to whom the Software is
*furnished to do so, subject to the following conditions:
*
*The above copyright notice and this permission notice shall be included in
*all copies or substantial portions of the Software.
*
*THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
*IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
*FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
*AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
*LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
*OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
*THE SOFTWARE.
*/

import Foundation
//: ARC
//Task_1
//1.Создать клас Person и описать в нем свойство name
class Person{
    var name: String
//2.В инициализаторе присвоить имя и вывести в лог инфу
    init(name:String){
        self.name = name
    }
    var child: Son?
//3.Описать deinit и вывести в лог инфу
    deinit {
        print("\(name) еще работает,его нет дома")
    }
}
//4.Создать обьект типа Person
var objPerson = Person(name: "George")
//5.George инициализировано

//7.Создать обьект Son(с логами init/dealloc как и в Person) со свойством Parent и добавить свойство Child в Parent
class Son{
    var name: String
    weak var parent: Person?
    init(name:String){
        self.name = name
        print("\(name) пришел со школы")
    }
    deinit{
        print("\(name) ушел гулять")
    }
}
//6.Создать skope (do{}) для обьекта и обратить внимание на логи
do {
    var objPerson = Person(name: "George")//George удалено
    
//8.Сохранить поссылания Son Person Person Son
    var whoG = Son(name: "Daniel")
    objPerson.child = whoG
    whoG.parent = objPerson //Daniel пришел со школы
    
}
//9.Запустить код - deinit не вызывается
//Daniel пришел со школы - он дома, deinit не вызывается
//10.Модифицировать код так что-бы deinit вызывался с каждого обьекта
//Проблему удержания памяти решила слабая ссылка!
//1.George удалено
//2.Daniel ушел гулять
//Количество удержаний достигло 0

//Task_2_Part1

//1.Создать обьект Operand и его свойство Number
class Operand{
    var number: Int
//2.Добавить данное свойство
    var operand:Operand?
//3.Создать closure для определения суммы из пару обьектов Operand
    lazy var sumOfOperand : () -> Int = {
        if var operand = self.operand {
            return self.number + self.number
        }else {
            return self.number
}
}
    init(number:Int, operand: Operand? = nil){
        self.number = number
        self.operand = operand
}
    deinit{
        print("\(number)деинициализируется")
}
}
var sumJoke1 = Operand(number: 21)
var myHaos = 12
sumJoke1.sumOfOperand = {
    return "\(sumJoke1.number)\(sumJoke1.operand ?? myHaos)\(sumJoke1.number)"
    
}

//Task_2_Part2

//1.Добавить в клас Operand closure как свойство, которое делает какую то операцию. Выполнить блок и init

class Operant{
    var aClosure:(() -> ())? = nil
//2.Создать обьект типа и занилить его
    var randobj = 0
    init () {
        print("Hello, I'm here")
//3.Модифицировать код с unowned/weak в capturelist
        aClosure = {[unowned self] in
         self.randobj = 0
        }
}
    deinit {
        print ("I've gone")
}


    var newobj:Operant? = Operant()

//Task_3
//4.Практика с Debug Memory Graph
//После вызова отладчика графика памяти программа падает
//7.Найдите и замените код
 /*  class Contact {
        var firstName: String
        var lastName: String
        var avatar: UIImage
        weak var number: Number?
        
    class Number {
        var countryCode: String
        var numberString: String
        var contact: Contact!
 */

        













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
//1.
func main() -> Int32 {
    return UIApplicationMain(Process.argc, Process.unsafeArgv,
    NSStringFromClass(UIApplication), NSStringFromClass(AppDelegate))
}

//2.
class Singleton {
    static let sharedInstance = Calculator ()
    var instanceNum: Double = 0.0
    private init() {}
}
//3.
struct Calculator {
    var number1 = 0.0, number2 = 0.0
    var result: Double {
        get {
            return number1 + number2
            return number1 * number2
            return number1 - number2
            return number1/number2
        }
        
    }
    
}
var operationOf = Calculator(number1: 12.3, number2: 11.2)
operationOf.result

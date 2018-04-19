//: Playground - noun: a place where people can play

import UIKit

/*
func timSLNvaSNN(daySo: [Int]) -> (sln: Int, snn: Int){
    var sln = daySo[0]
    var snn = daySo[0]

    for so in daySo {
        if so > sln {
            sln = so
        }else if so < snn {
            snn = so
        }
    }
    return (sln, snn)
}
print(timSLNvaSNN(daySo: [1,5,2,9,7,5]))

func helloInfor(name: String, age: Int){
    guard !name.isEmpty else{
        print("not name")
        return
    }
    print("Hello, \(name)")

    if age <= 0 {
        print("age error")
    }else{
        print("Age is \(age)")
    }
}
helloInfor(name: "Cong", age: 24)

let hero = "ad and sp"
switch hero {
case "garen":
    print("I'm garen")
case "lux", "Leesin":
    print("We are support")
case let h where h.hasSuffix("sp"):
    print("Hello, \(h)")
default:
    print("not hero")
}

let arr = [
    "Prime" : [1,5,2,9,7],
    "Garen" : [9,10,6,8,3],
    "Lucian" : [7,10,21,8,6]
]
var sl = 0
var kindName = ""
for (kind, numbers) in arr {
    for number in numbers {
        if number > sl {
            sl = number
            kindName = kind
        }
    }
}
print(sl, kindName)

var n = 2
while n < 100 {
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
}while m < 100
print(m)

var total = 0
for _ in 0..<10{
    total += 2
}
print(total)
 */

/*
 su d
func g(_ s: String, on b: String, on c: String) -> String {
    return "Hello \(s), today is \(b) \(c)."
}
g("a", on: "a", on: "c")

func run(_ begin: String, to end: String) -> String
{
    return "\(begin), \(end)."
}
run("a", to: "b")



 cac ham chuc nang co the duoc su dung long nhau

func makeIncrementer() ->((Int) -> Int){
    func addOne(_ number: Int) -> Int{
        return 1 + number
    }
    return addOne
}

var addOne = makeIncrementer()

print(addOne(9))
*/
 
/*
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool{
    for item in list {
        if  condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool{
    return number < 10
}

var numbers = [1,5,20,9,10]
hasAnyMatches(list: numbers, condition: lessThanTen)
*/

/*
func createChanLe() -> (chan: [Int], le: [Int]){
    var arrChan = [Int]()
    var arrLe = [Int]()
    for so in 0 ..< 20 {
        if so % 2 == 0 {
            arrChan.append(so)
        }else if so % 2 != 0{
            arrLe.append(so)
        }
    }
    return (arrChan, arrLe)
}
createChanLe()
*/

/*
func xacDinhChanLe(so: Int) -> Int{
    if so % 2 == 0 {
        print("\(so) la so chan")
    }else{
        print("\(so) la so le")
    }
    return (so)
}
xacDinhChanLe(so: 0)
*/


// ve hinh chu nhat
/*
func hinhChuNhat(rong: Int, dai: Int){
    for j in 1 ... rong{
        for i in 0 ... dai {
            print(terminator: "*")
        }
        print("\t")
    }
}

hinhChuNhat(rong: 4, dai: 7)
*/

/*
// hinh chu nhat trong giua
func chuNhatTrongGiua(rong: Int, dai: Int){
    for i in 1 ... rong{
        print(separator: "\t")
        for j in 1 ... dai {
            if (i == 1 || j == 1 || i == rong || j == dai){
            print(terminator: "*")
            }else{
                print(terminator: " ")
            }
        }
    }
}
chuNhatTrongGiua(rong: 4, dai: 7)
*/


//func soGiua(a: Int, b: Int, c: Int, d: Int, e: Int){
//    var arrGiua = [Int]()
//    arrGiua.append(a)
//    arrGiua.append(b)
//    arrGiua.append(c)
//    arrGiua.append(d)
//    arrGiua.append(e)
//    var dem = 0
//    var arrayTangDan = arrGiua.sorted()
//
//    for _ in arrayTangDan {
//        dem += 1
//    }
//    if dem / 2 != 0 {
//        let d = dem / 2
//        print("\(d)")
//        print("So o giua co gia tri la: \(arrayTangDan[d])")
//    }
//}
//soGiua(a: 5, b: 2, c: 9, d: 10, e: 1)

//func sapXep(arrSoGiua: [Int]){
//    var c = arrSoGiua.sorted(by: <
//    )
//    print("\(c)")
//}
//sapXep(arrSoGiua: [1, 9, 8, 4, 6])

/*
// sap xep noi bot
var a = [2,3,0,8]
func sapXepArray(_ arr: inout [Int]){
    for i in 0..<arr.count {
        for j in 0..<(arr.count - i - 1) {
            if arr[j] > arr[j + 1] {
                let largerValue = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = largerValue
            }
        }
    }
}

sapXepArray(&a)
print(a)
 */
/*
// in hinh tam giac
func tamGiacCan(h: Int){
    for i in 0..<h {
        for j in 0..<h*2 {
            if j >= h - i && j <= h + i {
                print(terminator: "*")
            }else{
                print(terminator: " ")
            }
        }
        print("\t")
    }
}

tamGiacCan(h: 5)
 */

/*
// tam giac vuong
func tamGiacVuong(h: Int){
    for i in 0..<h {
        for j in 0..<h*2 {
            if j >= h - i - 1 && j <= h + i - 1 {
                print(terminator: "*")
            }
        }
        print("\t")
    }
}

tamGiacVuong(h: 5)
*/
func timUCLN(a: Int, b: Int) -> Int{
    var a = a
    var b = b
    if a == 0 && b != 0 {
        print("UCLN: \(b)")
        return b
    }
    else if a != 0 && b == 0{
        print("UCLN: \(a)")
        return a
    }
    while a != b {
        if a > b {
            a -= b
        }
        else{
            b -= a
        }
    }
    print("UCLN: \(a)")
    return a
}

func timBCNN(a: Int, b: Int) -> Int{
    var a = a
    var b = b
    var result = timUCLN(a: a, b: b)
    var c = a * b / result
    print("BCNN: \(c)")
    return c
}
timBCNN(a: 2, b: 4)












import UIKit

//課題1-1  型
let itemA: Int = 1000
let itemB: String = "こんにちわ"
let itemC: Double = 42.195
let itemD: String = "ture"    //trueと見せかけた引っ掛け？そうでなければBool型

//課題1-2  四則演算
let valueA: Int = 100
let valueB: Int = 20

print(valueA + valueB)
print(valueA - valueB)
print(valueA * valueB)
print(valueA / valueB)

//課題1-3  if文
var valueC: Int = 4
if (valueC < 10) {
    print("\(valueC)は1桁の値です。")
} else if (valueC < 100) {
    print("\(valueC)は2桁の値です。")
} else if (valueC < 1000) {
    print("\(valueC)は3桁の値です。")
} else {
    print("\(valueC)は4桁以上の値です。")
}

//課題1-4  switch文
valueC = 333

switch valueC {
case 0..<10: print("\(valueC)は1桁の値です。")
case 10..<100: print("\(valueC)は2桁の値です。")
case 100..<1000: print("\(valueC)は3桁の値です。")
default:"\(valueC)は4桁以上の値です。"
}

//課題1-5  関数単一の引数
func calculationA (value: Int) -> Int {
    
    return value * 10
}
print(calculationA(value: 10))

//課題1-6  関数複数の引数
func calculationB (valueA: Int,valueB: Int) -> Int {
    
    return valueA % valueB
}
print(calculationB(valueA: 100, valueB: 30))


//課題1-7  関数の戻り値
func calculationC (valueA: Int, valueB: Int) -> Int {
    
    return(valueA + valueB)
}
var result = calculationC(valueA: 40, valueB: 25)
print (result)
if (result % 2) == 0 {
    print("計算結果\(result)は偶数です。")
} else {
    print("計算結果\(result)は奇数です。")
}


//課題1-8 クラスのインスタンス
class HogeA {
    func put() {
        print("クラスAインスタンスです。")
    }
}
let insA = HogeA()
insA.put()

//課題1-9  クラスのインスタンスと関数
class HogeB {
    func putName(name: String) {
        
        print("私の名前は\(name)です。")
    }
}
let takashi = HogeB()
let ken = HogeB()

takashi.putName(name: "たかし")
ken.putName(name:"ケン")

//課題1-10  イニシャライザ
class HogeC {
    var name: String
    init(name: String){
        self.name = name
    }
    func putName(){
        print("私の名前は\(self.name)です。")
    }
}
let yamada = HogeC(name: "やまだ")
let miyata = HogeC(name: "みやた")

yamada.putName()
miyata.putName()

//課題1-11  Enum
enum User: String {
    case name, age, bloodType
}
let user = User.name
switch user {
case .name:
    print("名前")
case .age:
    print("年齢")
case .bloodType:
    print("血液型")
}


//課題1-12 for文
var numbers = 1...50
for number in numbers {
    print(number)
}

//課題1-13  配列（追加）
var valueE = [Int]()
var Numbers = 1...50
for number in Numbers {
    valueE.append(number)
}
print(valueE)


//課題1-14  配列（削除）
var valueF: [String] = ["リュウ", "ケン", "ナッシュ", "ガイル", "ベガ", "フェイロン"]
valueF.remove(at: 2)
print (valueF)

//課題1-15  配列（ソート）
let valueG: [Int] = [5, 4, 100, 49, 30, 1, 12, 0]
valueG.sorted(by: <)
print(valueG)

valueG.sorted(by: >)
print(valueG)

//varで宣言した場合↓

//var valueG: [Int] = [5, 4, 100, 49, 30, 1, 12, 0]
//
//valueG.sort(by: <)
//print(valueG)
//
//valueG.sort(by: >)
//print(valueG)


//課題1-16  配列（要素数）

//var valueG: [Int]
print(valueG.count)


//課題1-17  辞書型
let valueH = ["a":1, "b":2, "c":3]
print(valueH["b"])


//課題1-18  Optional
if let value = valueH["b"] {
    print(value)
}

//課題1-19
print(valueH["k"] ?? "値はnilです")


//課題1-20 総復習
var valueI: [Any?] = [1, "こんにちわ" , "こんばんわ", nil, 3, 100, "よろしく", nil, "お願いします。"]

for value in valueI {
    if value == nil {
        print("値はnilです。")
    } else if  (value is Int) {
        print("数値\(value!)です。")
    } else if (value is String) {
        print(value!)
    }
}




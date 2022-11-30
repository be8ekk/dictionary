import Foundation

var code = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]

func wifr(text : String) -> String {
    var result = ""
    for ch in text {
        if let r = code[String(ch)] {
            result.append(r)
        } else {
            result.append(ch)
        }
    }
    return result
}

print(wifr(text: "hello programmer"))

var array = [16, 42, 42, 34, 45, 36, 37, 573, 2384, 493]

func countElements(array: [Int]) -> [Int : Int] {
    var dic: [Int : Int] = [:]
    for i in array {
        if dic[i] != nil {
            dic[i] = dic[i]! + 1
        } else {
            dic[i] = 1
        }
    }
    return dic
}

print(countElements(array: array))

var dict = ["Zangar" : 3.2, "Ali" : 3.7, "Alisher" : 4, "Kainar" : 2.9]

func avgGpa(dict : [String : Double]) -> Double {
    var sum: Double = 0
    for (_, value) in dict {
        sum += value 
    }
    if dict.count == 0 {
        return 0 
    }
    return sum / Double(dict.count)
}

print(avgGpa(dict: dict))


func gpaAbove3(dict: [String : Double]) -> [String : Double] {
    var newDict: [String : Double] = [:]
    for (key, value) in dict {
        if value >= 3 {
            newDict[key] = value
        } 
    }
    return newDict
}

print(gpaAbove3(dict: dict)) 

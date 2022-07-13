//
//  main.swift
//  AtCoderPASTv1
//
//  Created by maiko morisaki on 2021/12/04.
//

import Foundation

// 標準入力
func readInt() -> Int {
    return Int(readLine()!)!
}

func readInts() -> [Int] {
    return readLine()!.split(separator: " ").map { Int(String($0))! }
}

func readTwoInts() -> (a: Int, b: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1])
}

func readThreeInts() -> (a: Int, b: Int, c: Int) {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    return (a: ints[0], b: ints[1], c: ints[2])
}

qe()

// 問題
func qe() {
    // n 人数
    // q 回数
    let (n, q) = readTwoInts()
    let array = (0..<q).map{ _ in readInts() }
    var follow: [[Bool]] = []
    
    let followInit: [Bool] = (0..<n).map{ _ in false }
    
    for index in 0..<n {
        follow.append(followInit)
    }
    
    for action in array {
        let type = action[0]
        if type == 1 {
            let from = action[1]
            let to = action[2]
            follow[from][to-1] = true
        } else if type == 2 {
            var me = action[1]
            for row in 0..<follow.count {
                if follow[row]
            }
        } else if type == 3 {
            
        }
    }
    
    print(follow)
}

func qd() {
    let n = readInt()
    let array = (0..<n).map{ _ in readInt() }
    let set = Set(array)
    if set.count == n {
        print("Correct")
        return
    }
    var dic: [Int: Int] = [:]
    
    // O(n)
    for nom in 0..<n {
        let index = nom + 1
        dic[index] = 0
    }
    
    // O(n)
    for nom in 0..<n {
        let index = nom + 1
        
        if (index) == array[nom] {
            dic[index]! += 1
        } else {
            dic[array[nom]]! += 1
        }
    }
    
    var y = 0
    var x = 0
    // O(n)
    for set in dic {
        if set.value == 2 {
            y = set.key
        }
        if set.value == 0 {
            x = set.key
        }
    }
    print(y, x)
}

// botu
// TLE
// filter: O(n)
// for: O(n)

//func qd() {
//    let n = readInt()
//    var x = 0
//    var y = 0
//    let array = (0..<n).map{ _ in readInt() }
//    for index in 1...n {
//        let count = array.filter{ $0 == index }.count
//        if count == 0 {
//            x = index
//        }
//        if count == 2 {
//            y = index
//        }
//    }
//    if x == 0 && y == 0 {
//        print("Correct")
//        return
//    }
//    print(y, x)
//}

func qc() {
    let ints = readLine()!.split(separator: " ").map { Int(String($0))! }
    var array = Array(ints)
    array.sort { $1 < $0 }
    print(array[2])
}

func qb() {
    let n = readInt()
    var array: [Int] = []
    array = (0..<n).map{ _ in readInt() }
    for index in 0..<array.count {
        if index == array.count - 1 {
            return
        }
        let diff = array[index+1] - array[index]
        if diff < 0 {
            print("down", abs(diff))
        } else if diff > 0 {
            print("up", abs(diff))
        } else {
            print("stay")
        }
    }
}

func qa() {
    let read = readLine()!
    let array = Array(read)
    let isNum = array.allSatisfy({ Int(String($0)) != nil })
    if isNum {
        let result = Int(String(read))! * 2
        print(result)
    } else {
        print("error")
    }
}

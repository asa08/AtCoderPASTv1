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

qa()

// 問題
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

//
//  main.swift
//  AtCoderPASTv1
//
//  Created by maiko morisaki on 2021/12/04.
//

import Foundation

// MARK: - 標準入力
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

otoshidama_1()

// MARK: - Product
func product() {
    let (a, b) = readTwoInts()
    print((a * b).isMultiple(of: 2) ? "Even" : "Odd")
}

// MARK: - Placing Marbles
func placingMarbles() {
    let input = readLine()!
    let conut = input.reduce(0) { $0 + Int(String($1))! }
    print(conut)
}

// MARK: - Shift Only
func shiftOnly() {
    let count = readInt()
    var ints = readInts()
    var result = 0
    while ints.allSatisfy({ $0.isMultiple(of: 2) }) {
        result += 1
        ints = ints.map({ $0 / 2 })
    }
    print(result)
}

// MARK: - Otoshidama
func otoshidama_1() {
    let (N, Y) = readTwoInts()

    for i in 0...N {
        for j in 0...N {
            for k in 0...N {
                if N < i + j + k {
                    continue
                }
                if Y == (i * 10000) + (j * 5000) + (k * 1000) {
                    print(i, j, k)
                    return
                }
            }
        }
    }

    print(-1, -1, -1)
}

func otoshidama_2() {
    let (N, Y) = readTwoInts()

    for i in 0...N {
        for j in 0...N {
            let k = N - i - j
            if k >= 0, Y == (i * 10000) + (j * 5000) + (k * 1000) {
                print(i, j, k)
                return
            }
        }
    }

    print(-1, -1, -1)
}

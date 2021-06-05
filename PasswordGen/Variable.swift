//
//  Variable.swift
//  PasswordGen
//
//  Created by Tim Randall on 30/5/21.
//

import Foundation
enum Page {
    case page1
    case page2
}
var char = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", ".", ",", "?", "!", "'", "$", "%"]
var show: Bool = true
var selector: Int = 3
func lowerCase() -> String {
    var count: Int = 0
    var wordOne: String = ""
    while count < 11 {
        let low: String = char[Int.random(in:0...25)]
        count += 1
        wordOne += low
    }
    return wordOne
}
func lowerNum() -> String {
    var count: Int = 0
    var wordTwo: String = ""
    while count < 11 {
        let lownum: String = char[Int.random(in:0...35)]
        count += 1
        wordTwo += lownum
    }
    return wordTwo
}
func lowerUpNum() -> String {
    var count: Int = 0
    var wordThree: String = ""
    while count < 11 {
        let lownumhi = char[Int.random(in:0...61)]
        count += 1
        wordThree += lownumhi
    }
    return wordThree
}
func allchar() -> String {
    var count: Int = 0
    var wordFour: String = ""
    while count < 11 {
        let all = char[Int.random(in:0...68)]
        count += 1
        wordFour += all
    }
    return wordFour
}
func xer(txt: String) -> String {
    var xword: String = ""
    for i in txt {
        xword += "*"
    }
    return xword
}


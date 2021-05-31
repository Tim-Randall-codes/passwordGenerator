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

var lownum: String = char[Int.random(in:0...35)]
var lownumhi = char[Int.random(in:0...61)]
var all = char[Int.random(in:0...68)]
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

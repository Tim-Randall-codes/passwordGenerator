import UIKit

var str = ["1", "2", "3", "4", "5", "a", "b", "c"]
var rannum: Int = Int.random(in:0...7)
print(str[Int.random(in:0...7)])
var hello: String = "Hello "
var world: String = "World!"
print(hello + world)
var count: Int = 0
var word: String = ""
while count < 8 {
    count += 1
    word += hello
}
print(word)

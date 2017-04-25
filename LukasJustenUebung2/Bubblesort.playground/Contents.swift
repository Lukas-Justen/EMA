//: Playground - noun: a place where people can play

import UIKit

var list: [Int] = [4,1,7,0,9,3,5,2,8,6]

for i in 0..<list.count {
    for j in i+1..<list.count {
        if list[i] > list[j] {
            var k: Int = list[i]
            list[i] = list[j]
            list[j] = k
        }
    }
}

print(list)

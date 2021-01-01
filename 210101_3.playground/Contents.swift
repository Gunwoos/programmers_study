import UIKit
import Foundation

func solution(_ n:Int) -> Int {
    var result = [Int]()
    var num = n
    var sum = 0
    var k = 1

    while ( num>=3){
        let rest = num%3
        num = num/3
        result.append(rest)
    }
    if (num < 3){
        result.append(num)
    }

    result = result.reversed()

    for i in 0..<result.count{
        sum = sum + result[i]*k
        print(sum, result[i], result[i]*k)
        k = k * 3
    }

    return sum
}

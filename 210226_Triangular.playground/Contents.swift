import UIKit
import Foundation


func solution(_ n:Int) -> [Int] {
    var arr : [[Int]] = [[]]
    var arr2 : [Int] = []
    var result : [Int] = []
    var count = 0
    
    arr.removeAll()
    
    for i in 0..<n{
        for _ in 0...i{
            arr2.append(0)
            count += 1
        }
        arr.append(arr2)
        arr2.removeAll()
    }
    
    arr[0][0] = 1
    print(count)
    
    
    return result
}

solution(5)

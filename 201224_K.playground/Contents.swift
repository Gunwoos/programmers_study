import UIKit
import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var arraryK : [Int] = []
    var kNum : Int
    var startNum : Int
    var endNum : Int
    
    for i in 0..<commands.count{
        var arrayPick : [Int] = []
        startNum = commands[i][0] - 1
        endNum = commands[i][1] - 1
        kNum = commands[i][2] - 1
        
        for j in startNum...endNum{
            arrayPick.append(array[j])
        }
        
        arrayPick.sort()
        arraryK.append(arrayPick[kNum])
    }
    
    return arraryK
}

solution([1,5,2,6,3,7,4], [[2,5,3],[4,4,1],[1,7,3]])


import UIKit
import Foundation


func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    let b_length : Int = bridge_length
    let b_weight : Int = weight
    var start_t : [Int] = truck_weights
    var move_t : [[Int]] = [[]]
    var time : Int = 0
    
    
    
//    while !start_t.isEmpty{
        
        time += 1
        
        if move_t.isEmpty{
            move_t.append([start_t[start_t.startIndex],0])
            start_t.remove(at: start_t.startIndex)
        }
        else{
            var move_w : Int = 0
            
            for i in 0..<move_t.count{
                move_w = move_w + move_t[i][0]
            }
            
            if move_w <= b_weight{
                move_t.append([start_t[start_t.startIndex],0])
                start_t.remove(at: start_t[start_t.startIndex])
            }
            
            for i in 0..<move_t.count{
                move_t[i][1] += 1
            }
            
            if move_t[move_t.startIndex][1] > b_length{
                move_t.remove(at: move_t.startIndex)
            }
        }
//    }
    

    print(time)
    
    return time
}

solution(5, 20, [5,4,6,3])




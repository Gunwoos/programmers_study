import UIKit
import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    let total = n
    let lost = lost
    var reserve = reserve
    var lostNum = lost.count
    
    if total>0{
        for i in 0..<lost.count{
            if reserve.contains(lost[i]){
                reserve.remove(at: reserve.firstIndex(of: lost[i])!)
                lostNum = lostNum - 1
            }
            else{
                if lost[i]==1{
                    if reserve.contains(2){
                        reserve.remove(at: reserve.firstIndex(of: 2)!)
                        lostNum = lostNum - 1
                    }
                }
                else if lost[i]==total{
                    if reserve.contains(total-1){
                        reserve.remove(at: reserve.firstIndex(of: total-1)!)
                        lostNum = lostNum - 1
                    }
                }
                else{
                    if reserve.contains(lost[i]-1){
                        reserve.remove(at: reserve.firstIndex(of: lost[i]-1)!)
                        lostNum = lostNum - 1
                    }
                    else if reserve.contains(lost[i]+1){
                        reserve.remove(at: reserve.firstIndex(of: lost[i]+1)!)
                        lostNum = lostNum - 1
                    }
                }
            }
        }
        return total-lostNum
    }
    else{
        return 0
    }
}


//solution(5, [1,3], [2,4,5])
solution(0, [2,3], [2])
solution(5, [2,4], [3])
solution(3, [3], [1])

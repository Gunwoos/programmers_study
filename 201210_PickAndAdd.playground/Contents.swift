import UIKit
import Foundation

var array1 = [2,1,3,4,1]
var array2 = [5,0,2,7]
func solution(_ numbers:[Int]) -> [Int] {
    let myNums = numbers
    var sumNums : [Int] = []
    var sum = 0
    
    
    for i in 0..<myNums.count{
        for j in i..<myNums.count-1{
            sum = myNums[i] + myNums[j+1]
            if sumNums.isEmpty{
                sumNums.append(sum)
            }
            else{
                if sumNums.contains(sum){

                }
                else{
                    sumNums.append(sum)
                }
            }
        }
    }
    sumNums = sumNums.sorted(by:<)
    
    
    return sumNums
}

solution(array1)
solution(array2)

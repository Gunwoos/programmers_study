import UIKit
import Foundation

let answers = [Int](repeating: 2, count: 99)

func solution(_ answers:[Int]) -> [Int] {
    let answers1 = [1,2,3,4,5]
    let answers2 = [2,1,2,3,2,4,2,5]
    let answers3 = [3,3,1,1,2,2,4,4,5,5]
    var correct : [Int] = [0,0,0]
    var winner : [Int] = []
    
    for i in 0..<answers.count{
        if answers[i]==answers1[i%5] { correct[0] = correct[0] + 1}
        if answers[i]==answers2[i%8] { correct[1] = correct[1] + 1}
        if answers[i]==answers3[i%10] { correct[2] = correct[2] + 1}
    }
    
    if correct[0]>correct[1]{
        if correct[0]>correct[2]{
            winner.append(1)
        }
        else if correct[0]==correct[2]{
            winner.append(1)
            winner.append(3)
        }
        else{
            winner.append(3)
        }
    }
    else if correct[0]==correct[1]{
        if correct[0]>correct[2]{
            winner.append(1)
            winner.append(2)
        }
        else if correct[0]==correct[2]{
            winner.append(1)
            winner.append(2)
            winner.append(3)
        }
        else{
            winner.append(3)
        }
    }
    else{
        if correct[1]>correct[2]{
            winner.append(2)
        }
        else if correct[1]==correct[2]{
            winner.append(2)
            winner.append(3)
        }
        else{
            winner.append(3)
        }
    }
    
    return winner.sorted()
}


solution(answers)

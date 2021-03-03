import UIKit

func solution(_ priorities:[Int], _ location:Int) -> Int {
    
    var p : [Int] = priorities
    var l : Int = location
    var count = 0
    var result = 0
    

    while !p.isEmpty{
        count = 0
        
        for i in 1..<p.count{
            if p.first! >= p[i]{
                count += 1
            }
        }
        if count == p.count-1{
            result += 1
            if p.startIndex != l{
                l -= 1
            }
            else{
                return result
            }
            p.removeFirst()
        }
        else{
            if p.startIndex != l{
                l -= 1
            }
            else{
                l = p.count-1
            }
            p.append(p.first!)
            p.removeFirst()
            print(p)
        }
    }
    return result
}


solution([2, 1, 3, 2],2)
solution([1, 1, 9, 1, 1, 1], 0)

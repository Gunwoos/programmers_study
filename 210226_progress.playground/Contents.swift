import UIKit

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var p = progresses
    var s = speeds
    
    var result : [Int] = []
    
    while !p.isEmpty{
        if p.count == 1{
            p.removeAll()
            result.append(1)
        }
        else{
            for i in p.indices{
                if p[i] < 100{
                    p[i] += s[i]
                }
                else{
                    if i == p.startIndex{
                        break;
                    }
                }
            }
            if p.first! >= 100{
                var count = 1
                for i in 1..<p.count{
                    if p[i] < 100{
                        break;
                    }
                    else{
                        count += 1
                    }
                }
                for _ in 0..<count{
                    p.removeFirst()
                    s.removeFirst()
                }
                result.append(count)
            }
        }
    }

    return result
}




solution([93, 30, 55], [1, 30, 5])

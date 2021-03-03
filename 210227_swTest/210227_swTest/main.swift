//
//  main.swift
//  210227_swTest
//
//  Created by 임건우 on 2021/02/27.
//

import Foundation

//var Skills : [[String]] = [[]]
//var p_Skills : [[String]] = [[]]
//var idx : [Int] = []
//
//print("스킬을 입력하세요 (공백으로 구분 됩니다.) ")
//var K = (readLine()!.split(separator: " ")).map{String($0)}
//
//
//print("연계 스킬 갯수를 입력하세요. (연계 스킬의 수는 1 이상 ~ 최대 스킬 수 미만 입니다.)")
//var N = Int(readLine()!)!
//while N >= K.count || N <= 1 {
//    print(" 알맞은 연계 스킬 수를 입력하세요. ")
//    N = Int(readLine()!)!
//}
//
//print("연계 스킬을 입력하세요.")
//Skills.removeAll()
//p_Skills.removeAll()
//idx.removeAll()
//
//for _ in 0..<N{
//    var skill = (readLine()!.split(separator: " ")).map{String($0)}
//    var count = 0
//    for i in skill.indices{
//        for k in K{
//            if skill[i] == k{
//                count += 1
//            }
//        }
//    }
//    if count == 2 {
//        Skills.append(skill)
//    }
//}
//
//for i in Skills.indices{
//    for j in Skills.indices{
//        if Skills[i][1] == Skills[j][0]{
//            var s = Skills[i]
//            s.append(Skills[j][1])
//            idx.append(j)
//            p_Skills.append(s)
//        }
//    }
//}
//
//idx = idx.sorted(by : >)
//
//while !idx.isEmpty{
//    Skills.remove(at: idx.first!)
//    idx.removeFirst()
//}
//
//while !Skills.isEmpty{
//    p_Skills.append(Skills.first!)
//    Skills.removeFirst()
//}
//
//print("스킬 : ",K)
//print("연계 스킬 수 : ",N)
//print("가능한 연계 스킬 : ",p_Skills)


var booking : [[Int]] = [[]]
var result : [[Int]] = [[]]

booking.removeAll()
result.removeAll()
print("PC수, 예약자 수, 운영 시간을 입력하세요(공백으로 구분 됩니다.) ")
var PC = (readLine()!.split(separator: " ")).map{Int($0)}

for i in 0..<PC[0]!{
    result.append([i,0])
}

print("예약 PC 번호와 시간을 입력하세요.")

for _ in 0..<PC[1]!{
    var N = (readLine()!.split(separator: " ")).map{Int($0)!}
    booking.append(N)
}


for i in booking.indices{
    if booking[i][1] <= PC[2]!{
        if booking[i][1] >= result[i][1]{
            result[i][1] = booking[i][1]
        }
    }
}

for i in result.indices{
    result[i][1] *= 1000
}

print(result)

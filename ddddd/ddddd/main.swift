//
//  main.swift
//  ddddd
//
//  Created by 임건우 on 2021/02/27.
//

import Foundation

var booking : [[Int]] = [[]]
var result : [[Int]] = [[]]

booking.removeAll()
result.removeAll()
print("PC수, 예약자 수, 운영 시간을 입력하세요(공백으로 구분 됩니다.) ")
var PC = (readLine()!.split(separator: " ")).map{Int($0)}

for i in 0..<PC[0]!{
    result.append([i+1,0])
}

print("예약 PC 번호와 시간을 입력하세요.")
for _ in 0..<PC[1]!{
    var N = (readLine()!.split(separator: " ")).map{Int($0)!}
    booking.append(N)
}

for i in booking.indices{
    if booking[i][1] <= PC[2]! {
        if booking[i][1] >= result[i][1]{
            result[i][1] = booking[i][1]
        }
    }
}

for i in result.indices{
    result[i][1] = result[i][1]*1000
}

print(result)

//
//  main.swift
//  readLineEX
//
//  Created by 임건우 on 2021/02/24.
//

import Foundation

var x = readLine()!
var b = x
var bomb_Count = 0
var razer_Count = 0

for i in b{
    if i=="("{
        bomb_Count += 1
    }
    else{
        if i==")"{
            razer_Count += 1
        }
    }
}
if bomb_Count==razer_Count{
    print("YES")
}else{
    print("NO")
}




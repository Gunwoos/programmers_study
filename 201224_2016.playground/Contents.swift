import UIKit

func solution(_ a:Int, _ b:Int) -> String {
    
    let day = ["SUN","MON","TUE","WED","THU","FRI","SAT"]
    let totalDay = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var sumDay = 0
    
    for i in 0..<a-1{
        sumDay = sumDay + totalDay[i]
    }
    sumDay = sumDay + b
    
    if sumDay%7 == 1 { return day[5]}
    else if sumDay%7 == 2 {return day[6]}
    else if sumDay%7 == 3 {return day[0]}
    else if sumDay%7 == 4 {return day[1]}
    else if sumDay%7 == 5 {return day[2]}
    else if sumDay%7 == 6 {return day[3]}
    else {return day[4]}
}


solution(5,24)
solution(12,31)


import UIKit

func solution(_ s:String) -> String {
    var arr = [String]()
    var result : String = ""
    
    for i in s {
     arr.append(String(i))
    }
    
    if arr.count%2 == 0 {
        let countNum : Int = arr.count/2
        
        result = arr[countNum-1] + arr[countNum]
        
        return result
    }
    else{
        let countNum : Int = arr.count/2
        result = arr[countNum]
        
        return result
    }
    
}

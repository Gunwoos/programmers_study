import UIKit

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var result = 0
    for tree in skill_trees {
        let list = tree.filter { skill.contains($0) }
        let prefix = skill.prefix(list.count)
        if prefix == list {
            result += 1
        }
    }
    return result
}




solution("CBD",["BACDE", "CBADF", "AECB", "BDA"])

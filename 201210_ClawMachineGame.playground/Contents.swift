import UIKit
import Foundation

let board = [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]]
let moves = [1,5,3,5,1,2,1,4]

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var myBoard : [[Int]] = board
    var myMoves : [Int] = moves
    var myBar : [Int] = []
    var bombNum : Int = 0
    
    for i in 0..<myMoves.count{
        myMoves[i] = myMoves[i] - 1
        for j in 0..<myBoard.count{
            if myBoard[j][myMoves[i]]>0{
                let index : Int = myBoard[j][myMoves[i]]

                if myBar.isEmpty{
                    
                    myBar.append(index)
                    myBoard[j][myMoves[i]] = 0
                    print("bar is empty")
                    print(myBar)
                }
                else{
                    if myBar.last == index{
                        let deleteBar = myBar.endIndex - 1
                        myBar.remove(at: deleteBar)
                        myBoard[j][myMoves[i]] = 0
                        bombNum = bombNum + 2
                        print("delete last index")
                        print(myBar)
                    }
                    else{
                        myBar.append(index)
                        myBoard[j][myMoves[i]] = 0
                        print("append last index")
                        print(myBar)
                    }
                }
                break
            }
        }
    }
    print(myMoves)
    print(myBar)
    print(bombNum)

    return bombNum
}

solution(board, moves)

//
//  answer.swift
//  FinalProject
//
//  Created by pixza Yaoita on 2018/06/17.
//  Copyright © 2018年 pixza Yaoita. All rights reserved.
//

import Foundation
import UIKit

class GetTheAnswer {
    var answerNumber = Int(arc4random_uniform(100))+1
    
    var maxNumber = 100
    var minNumber = 1
    
    var isOver = false
    
    func compareNumber(inputText:String) -> String {
        print(answerNumber)
        let inputNumber = Int(inputText)
        
        if isOver == false {
            //inputNumber 為空值
            if inputNumber == nil {
                return "It's between \(minNumber)~\(maxNumber)"
            }
            else{
                if inputNumber == answerNumber {
                    isOver = true
                    return "Bingo!! It's \(answerNumber) !!"
                }
                else{
                    if inputNumber! > maxNumber || inputNumber! < minNumber {
                        return "Out Of Range. Between \(minNumber)~\(maxNumber)"
                    }
                    else{
                        if inputNumber! < answerNumber{
                            minNumber = inputNumber!
                        }
                        else{
                            maxNumber = inputNumber!
                        }
                        return "Between \(minNumber)~\(maxNumber)"
                    }
                }
            }
        }
        else{
            isOver = false
            
            answerNumber = Int(arc4random_uniform(100))+1
            
            maxNumber = 100
            minNumber = 1
            
            return "Between 1 ~ 100"
        }
    }
}

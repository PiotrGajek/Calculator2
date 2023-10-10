//
//  Calculation.swift
//  Calculator2
//
//  Created by student on 03/10/2023.
//

import Foundation

struct Calculation{
    func addTwoInt(of firstVal:String, with secondVal: String) -> Double{
        return Double(firstVal)!+Double(secondVal)!
    }
    func subtractTwoInt(of firstVal:String, with secondVal: String) -> Double{
        return Double(firstVal)!-Double(secondVal)!
    }
    func multiplyTwoInt(of firstVal:String, with secondVal: String) -> Double{
        return Double(firstVal)!*Double(secondVal)!
    }
    func divideTwoInt(of firstVal:String, with secondVal: String) -> Double{
        if(Int(secondVal) != 0){
            return Double(firstVal)!/Double(secondVal)!
        }
        else{
            return Double.greatestFiniteMagnitude
        }
    }
    func sinInt(of val:String) -> Double{
        return sin(Double(val)!)
    }
}

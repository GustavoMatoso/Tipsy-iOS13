//
//  BillCalculator.swift
//  Tipsy
//
//  Created by Gustavo Matoso on 29/03/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
struct BillCalculator{
    var totalBill: Float?
    var tipConverted: Float? = 1.1
    var splitNumber: Int = 2
    var splitBill: String?
    
    mutating func getTotalBill(sender: String){
        totalBill = Float(sender)
        if let totalBill = totalBill{
            print(totalBill, type(of: totalBill))
        }
    }
    
    mutating func getTipValue(sender: String)-> String{
        let tip = sender
        if tip == "0%"{
            tipConverted = 1.0
        } else if tip == "10%"{
            tipConverted = 1.1
        }else if tip == "20%"{
            tipConverted = 1.2
        }
        print(tipConverted!, type(of: tipConverted))
        return tip
    }
    mutating func getSplitNumber(sender: Int)->Int{
        
        if sender != 2{
            splitNumber = sender
        } else{
            splitNumber = 2
        }
        print(splitNumber, type(of: splitNumber))
        return splitNumber
    }
    mutating func calculateSplitBill()-> String{
        if totalBill != nil{
            let splitBillUnformated = ((totalBill!) * (tipConverted!)) / Float(splitNumber)
            splitBill = String(format: "%.2f", splitBillUnformated)}
        return splitBill ?? "Enter the bill total to calculate."
    }
}



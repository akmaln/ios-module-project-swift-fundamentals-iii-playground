import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad: Double = 1.38
let usToMxn: Double = 21.92

var currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    
    var total: Double = 0
    switch currency {
    case .cad:
        total = dollars * usToCad
    case .mxn:
        total = dollars * usToMxn
    }
   return total
}


func convert(amountString: String) -> String {
    
    let amount: Double? = Double(amountString)
    
    guard let unwrappedAmount = amount else {
         
        return ""
    }
   
    return "\(convert(unwrappedAmount))"
}

print(convert(amountString: "100"))

currency = .mxn

print(convert(amountString: "100"))

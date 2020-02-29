import UIKit

enum Currency {
    case cad
    case mxn
}

let usToCad: Double = 1.34
let usToMxn: Double = 19.62

class CurrencyConverter {
    var currency: Currency = .cad
    
    init(currency: Currency) {
        self.currency = currency
    }

    func convert(dollars: Double) -> Double {
        if (currency == Currency.cad) {
            return Double(dollars * usToCad)
        } else {
            return Double(dollars * usToMxn)
        }
    }
}

var newCurr = CurrencyConverter(currency: .cad)
newCurr.convert(dollars: 20)


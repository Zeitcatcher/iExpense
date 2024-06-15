//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Arseniy Oksenoyt on 5/23/24.
//

import SwiftData
import Foundation

@Model
class ExpenseItem {
    let name: String
    let type: String
    let amount: Double
    
    init(name: String, type: String, amount: Double) {
        self.name = name
        self.type = type
        self.amount = amount
    }
}

//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Arseniy Oksenoyt on 5/23/24.
//

import Foundation

struct ExpenseItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}

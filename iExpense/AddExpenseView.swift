//
//  AddExpenseView.swift
//  iExpense
//
//  Created by Arseniy Oksenoyt on 5/14/24.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var name = "New Expense"
    @State private var type = "Personal"
    @State private var amount = 0.0
    
    var expenses: Expenses
    
    let types = ["Business", "Personal"]
    let localCurrency = Locale.current.currency?.identifier ?? "USD"
    
    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Picker("Type", selection: $type) {
                        ForEach(types, id: \.self) {
                            Text($0)
                        }
                    }
                    
                    TextField("Amount", value: $amount, format: .currency(code: localCurrency))
                        .keyboardType(.decimalPad)
                }
                .navigationTitle($name)
                .navigationBarTitleDisplayMode(.inline)
            }
            .overlay(alignment: .bottom) {
                Button("Cancerl") {
                    dismiss()
                }
            }
        }
        
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button("Save") {
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                    dismiss()
                }
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    AddView(expenses: Expenses())
}


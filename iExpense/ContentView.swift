//
//  ContentView.swift
//  iExpense
//
//  Created by Arseniy Oksenoyt on 5/14/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAddExpense = false

    var body: some View {
        NavigationStack {
            ExpensesList()
                .navigationTitle("iExpense")
                .toolbar {
                    NavigationLink {
                        AddExpenseView()
                    } label: {
                        Label("Add Expense", systemImage: "plus")
                    }
                }
                .sheet(isPresented: $showingAddExpense) {
                    AddExpenseView()
                }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ExpenseItem.self  )
}

//
//  Transactions.swift
//  expense-tracker
//
//  Created by Arman Abkar on 11/16/22.
//

import SwiftUI
import Charts

struct Transactions: View {
    
    @State private var selected = "Income"
    var choices  = ["Income", "Expense"]
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Income or Expense",
                       selection: $selected) {
                    ForEach(choices, id: \.self) {
                        Text($0)
                    }
                }
                       .pickerStyle(.segmented)
                       .padding(.bottom)
                
                Chart {
                    BarMark(
                        x: .value("Mount", "Nov 16"),
                        y: .value("Value", 400)
                    )
                    BarMark(
                        x: .value("Mount", "Nov 17"),
                        y: .value("Value", 700)
                    )
                    BarMark(
                        x: .value("Mount", "Nov 18"),
                        y: .value("Value", 100)
                    )
                    BarMark(
                        x: .value("Mount", "Nov 19"),
                        y: .value("Value", 300)
                    )
                    BarMark(
                        x: .value("Mount", "Nov 20"),
                        y: .value("Value", 600)
                    )
                    BarMark(
                        x: .value("Mount", "Nov 21"),
                        y: .value("Value", 900)
                    )
                }
                .frame(height: 300)
            }
            .padding()
            .navigationTitle("Transactions")
        }
    }
}

struct Transactions_Previews: PreviewProvider {
    static var previews: some View {
        Transactions()
    }
}

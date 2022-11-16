//
//  ContentView.swift
//  expense-tracker
//
//  Created by Arman Abkar on 11/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Expenses()
                .tabItem {
                    Label("Expenses",
                          systemImage: "house")
                }
            
            AddExpense()
                .tabItem {
                    Label("Add",
                          systemImage: "plus")
                }
            
            Transactions()
                .tabItem {
                    Label("Transactions",
                          systemImage: "chart.bar")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

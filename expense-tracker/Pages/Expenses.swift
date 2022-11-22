//
//  Expenses.swift
//  expense-tracker
//
//  Created by Arman Abkar on 11/16/22.
//

import SwiftUI

struct Expenses: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hi Welcome!")
                        .foregroundColor(.gray)
                    Text("Your Name")
                        .font(.title)
                }
                .fontWeight(.medium)
                Spacer()
                Image(systemName: "arrow.clockwise")
                    .font(.title3)
                    .fontWeight(.medium)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.clear)
                    .background(LinearGradient(colors: [.indigo, .blue], startPoint: .top, endPoint: .bottomLeading))
                    .frame(height: 250)
                    .cornerRadius(15)
                    .shadow(radius: 2)
                VStack {
                    VStack {
                        Text("Total Balance")
                            .font(.title3)
                            .fontWeight(.medium)
                        Text("$6000")
                            .font(.system(size: 44))
                            .bold()
                    }
                    .padding(.top)
                    Spacer()
                    HStack {
                        HStack {
                            Image(systemName: "arrow.up")
                                .font(.title)
                            VStack(alignment: .leading) {
                                Text("Income")
                                Text("$2000")
                                    .font(.title)
                            }
                        }
                        .foregroundColor(.green)
                        Spacer()
                        HStack {
                            Image(systemName: "arrow.down")
                                .font(.title)
                            VStack(alignment: .leading) {
                                Text("Expenses")
                                Text("$1000")
                                    .font(.title)
                            }
                        }
                        .foregroundColor(.red)
                    }
                    .fontWeight(.medium)
                }
                .foregroundColor(.white)
                .padding()
                .frame(height: 250)
            }
            
            Text("Recent Transactions")
                .font(.title2)
                .bold()
            
            VStack(spacing: 10) {
                Expense(name: "PlayStation 5",
                        description: "My new gaming console.",
                        price: 550,
                        type: .Expanse)
                Expense(name: "Client",
                        description: "Lorem ipsum dolor sit ame.",
                        price: 1200,
                        type: .Income)
                Expense(name: "iPhone 14 Pro",
                        description: "My new smart phone.",
                        price: 1000,
                        type: .Expanse)
                Expense(name: "MacBook Pro",
                        description: "I needed a more powerful machine.",
                        price: 2000,
                        type: .Expanse)
                Expense(name: "PizzaShop",
                        description: "Lorem ipsum dolor sit ame.",
                        price: 3500,
                        type: .Income)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .padding(20)
    }
}

struct Expenses_Previews: PreviewProvider {
    static var previews: some View {
        Expenses()
    }
}

enum TransactionType {
    case Income
    case Expanse
}

struct Expense: View {
    
    let name: String
    let description: String
    let price: Int
    let type: TransactionType
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(name)
                Spacer()
                Text("$\(price)")
                    .foregroundColor(type == .Income ? .green : .red)
            }
            .fontWeight(.medium)
            .font(.title3)
            
            Text(description)
                .foregroundColor(.gray)
        }
    }
}

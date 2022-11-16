//
//  Expenses.swift
//  expense-tracker
//
//  Created by Arman Abkar on 11/16/22.
//

import SwiftUI

struct Expenses: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hi Welcome!")
                        .foregroundColor(.gray)
                    Text("Arman Abkar")
                        .font(.title)
                }
                Spacer()
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
                        Text("$6000")
                            .font(.largeTitle)
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
                }
                .foregroundColor(.white)
                .padding()
                .frame(height: 250)
            }
            
            VStack(alignment: .leading)  {
                Text("Recent Transactions")
                    .font(.title2)
                    .padding(.vertical)
                
                VStack(spacing: 10) {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("PlayStation 5")
                            Spacer()
                            Text("$550")
                        }
                        .font(.title2)
                        Text("My new gaming console.")
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("PlayStation 5")
                            Spacer()
                            Text("$550")
                        }
                        .font(.title2)
                        Text("My new gaming console.")
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("PlayStation 5")
                            Spacer()
                            Text("$550")
                        }
                        .font(.title2)
                        Text("My new gaming console.")
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("PlayStation 5")
                            Spacer()
                            Text("$550")
                        }
                        .font(.title2)
                        Text("My new gaming console.")
                    }
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("PlayStation 5")
                            Spacer()
                            Text("$550")
                        }
                        .font(.title2)
                        Text("My new gaming console.")
                    }
                }
            }
        }
        .padding()
    }
}

struct Expenses_Previews: PreviewProvider {
    static var previews: some View {
        Expenses()
    }
}

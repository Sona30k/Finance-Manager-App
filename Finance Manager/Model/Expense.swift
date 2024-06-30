//
//  Course.swift
//  AnimatedApp
//
//  Created by Meng To on 2022-04-14.
//

import SwiftUI

struct Expense: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var caption: String
    var color: Color
    var image: Image
}

var Expenses = [
    Expense(title: "Monthly Expenses", subtitle: "a overview of your monthly expenses, helping you track and categorize your spending with ease. With intuitive visualizations and detailed reports", caption: "Track, analyze, and manage ", color: .purple, image: Image("Budget")),
    Expense(title: "Budget Planning", subtitle: "Apply your Swift and SwiftUI knowledge by building real, quick and various applications from scratch", caption: "47 sections - 11 hours",color: .blue, image: Image("Topic 2")),
    Expense(title: "Investments", subtitle: "Design and code a SwiftUI 3 app with custom layouts, animations and gestures using Xcode 13, SF Symbols 3, Canvas, Concurrency, Searchable and a whole lot more", caption: "21 sections - 4 hours",color: .white, image: Image("Topic 1"))
]

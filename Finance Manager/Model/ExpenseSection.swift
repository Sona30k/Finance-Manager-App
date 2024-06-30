//
//  CourseSection.swift
//  AnimatedApp
//
//  Created by Meng To on 2022-04-14.
//

import SwiftUI

struct ExpenseSection: Identifiable {
    var id = UUID()
    var title: String
    var caption: String
    var color: Color
    var image: Image
}

var expenseSections = [
    ExpenseSection(title: "State Machine", caption: "Watch video - 15 mins", color: Color("lightPurple"), image: Image("Topic 2")),
    ExpenseSection(title: "Animated Menu", caption: "Watch video - 10 mins", color:Color("6E6AE8"), image: Image("Topic 1")),
    ExpenseSection(title: "Tab Bar", caption: "Watch video - 8 mins", color: Color("005FE7"), image: Image("Topic 2")),
    ExpenseSection(title: "Button", caption: "Watch video - 9 mins", color: Color("BBA6FF"), image: Image("Topic 1"))
]

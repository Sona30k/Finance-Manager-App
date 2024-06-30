//
//  Title View.swift
//  Finance Manager
//
//  Created by Sona kerketta on 30/06/24.
//

import SwiftUI

struct Title_View: View {
    var body: some View {
        ZStack {
            
            Color("Background").ignoresSafeArea()
            ScrollView {
                content
            }
        }
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Finances")
                .font(.largeTitle).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 25) {
                    ForEach(Expenses) { expense in
                        ExpenseTrackView(expense: expense)
                    }
                }
                .padding(20)
                .padding(.bottom, 10)
            }
            Text("Recent")
                .font(.largeTitle).bold()
                .padding(.horizontal, 20)
            
            
            VStack(spacing: 20) {
                ForEach(expenseSections) { section in
                    TabView(section: section )
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    Title_View()
}

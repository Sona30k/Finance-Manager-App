//
//  ExpenseTrackView.swift
//  Finance Manager
//
//  Created by Sona kerketta on 30/06/24.
//

import SwiftUI

struct ExpenseTrackView: View {
    
    var expense: Expense
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(expense.title)
                .font(.custom("Poppins Bold", size: 25))
                .frame(maxWidth: 170, alignment: .leading)
                .layoutPriority(1)
            
            Text(expense.subtitle)
                .opacity(0.8)
                .font(.custom("Inter Regular", size: 20))
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(expense.caption.uppercased())
                .font(.custom("Inter SemiBold", size: 20))
            Spacer()
        }
        .foregroundColor(.white)
        .padding(31)
        .frame(width: 260, height: 310)
        .background(.linearGradient(colors: [Color.purple, Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 33, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 8, x: 0, y: 1)
        
    }
}

struct ExpenseTrack_Previews: PreviewProvider{
    static var previews: some View{
        ExpenseTrackView(expense: Expenses[0] )
    }
    
}

//
//  TabView.swift
//  Finance Manager
//
//  Created by Sona kerketta on 30/06/24.
//

import SwiftUI

struct TabView: View {
    var section: ExpenseSection
    var body: some View {
        HStack(spacing: 20) {
            VStack (alignment: .leading, spacing: 8){
                Text(section.title)
                    .font(.custom("Poppins Bold", size: 25))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(section.caption)
                    .font(.custom("Inter Regular", size: 20))
            }
            Divider()
            section.image
        }
        .padding(30)
        .frame(maxWidth: .infinity, maxHeight: 110)
        .background(.blue)
        .foregroundColor(.black)
        .mask(RoundedRectangle(cornerRadius: 31, style: .continuous))
        
        
       
    }
}

struct TabView_Previews: PreviewProvider{
    static var previews: some View{
        TabView(section: expenseSections[1] )
    }
    
}

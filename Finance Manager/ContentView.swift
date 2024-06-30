//
//  ContentView.swift
//  Finance Manager
//
//  Created by Sona kerketta on 26/06/24.
//

import SwiftUI
import RiveRuntime

struct ContentView: View {
    
    @AppStorage("selectedTab") var selectedTab: Tab = .chat
    @State private var isOpen = false
    let button = RiveViewModel(fileName: "menu_button",  animationName: "open", autoPlay: false)
    var body: some View {
        ZStack {
            switch selectedTab {
            case .chat:
                Title_View()
            case .search:
                Text("Search")
            case .timer:
                Text("Timer")
            case .bell:
                Text("Bell")
            case .user:
                Text("User")
            
            }
            button.view()
                .frame(width: 44, height: 44)
                .mask(Circle())
                .shadow(color: Color("Shadow").opacity(0.2), radius: 5, x: 0, y: 5)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding()
                .onTapGesture {
                
                    try? button.setInput("isOpen", value: isOpen)
                    
                    
                }
            
            HomePageView()
       
            
        }
        
    }
}

#Preview {
    ContentView()
}

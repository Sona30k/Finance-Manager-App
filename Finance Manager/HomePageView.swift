//
//  HomePageView.swift
//  Finance Manager
//
//  Created by Sona kerketta on 29/06/24.
//

// RiveViewModel.swift
import SwiftUI
import RiveRuntime


struct HomePageView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .chat
   
   
            
        
    
    
    
    let icon = RiveViewModel(fileName: "icons", artboardName: "CHAT")
    var body: some View {
        VStack {
            Spacer()
            HStack {
               content
            }
            .padding(12)
            .background(Color("Background 2").opacity(0.8))
            .background(.ultraThinMaterial)
            .mask(RoundedRectangle(cornerRadius: 23, style: .continuous))
            .shadow(color: Color("Background 2").opacity(0.3), radius: 20, x: 0, y: 20)
            
            .padding(.horizontal, 24)
        }
    }
    var content: some View {
        ForEach(tabitems) { item in
            Button {
                try? item.icon.setInput("active", value: true)
                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                    try? item.icon.setInput("active", value: false)
                }
                withAnimation {
                    selectedTab = item.tab
                }
            } label:{
                item.icon.view()
                    .frame(height: 36 )
                    .opacity(selectedTab == item.tab ? 1 : 0.5)
                    .background(
                        VStack {
                            RoundedRectangle(cornerRadius: 2)
                                .fill(.blue)
                                .frame(width: selectedTab == item.tab ? 20: 0, height: 4)
                                .offset(y: -4)
                                .opacity(selectedTab == item.tab ? 1: 0)
                            Spacer()
                        })
        }
        }
    }
}

#Preview {
    HomePageView()
}

struct TabItem: Identifiable {
    var id = UUID()
    var icon: RiveViewModel
    var tab: Tab
}




var tabitems = [
    TabItem(icon: RiveViewModel(fileName: "icons", artboardName: "CHAT"), tab: .chat),
    TabItem(icon: RiveViewModel(fileName: "icons", artboardName: "SEARCH"), tab: .search),
    TabItem(icon: RiveViewModel(fileName: "icons", artboardName: "TIMER"), tab: .timer),
    TabItem(icon: RiveViewModel(fileName: "icons", artboardName: "BELL"), tab: .bell),
    TabItem(icon: RiveViewModel(fileName: "icons", artboardName: "USER"), tab: .user),
    
]

enum Tab: String {
    case chat
    case search
    case timer
    case bell
    case user
}

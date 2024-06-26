//
//  SwiftUIView.swift
//  Finance Manager
//
//  Created by Sona kerketta on 26/06/24.
//

import SwiftUI
import RiveRuntime

struct SwiftUIView: View {
    let button = RiveViewModel(fileName: "button")
    var body: some View {
        ZStack {
            background
            
            
            
            VStack(alignment:.leading,spacing: 16) {
                Text("Manage all your Finances")
                    .fontWeight(.bold)
                    .font(.custom("Poppins Bold",size: 60, relativeTo: .largeTitle))
                    .frame(width: 300, alignment: .leading)
                Text("manage expenses, plan budgets, track savings and investments, get financial advices")
                    .font(.custom("Inter Regular", size: 20, relativeTo: .body
                                 ))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .opacity(0.7)
                
                Spacer()
                
                
                button.view()
                    .frame(width:236, height: 64)
                    .overlay(
                        Label("Get Satrted", systemImage: "arrow.forward")
                            .offset(x:4,y:4)
                            .font(.headline)
                    )
                    .background(
                        Color.black
                            .cornerRadius(30)
                            .blur(radius: 10)
                            .opacity(0.3)
                            .offset(y:10))
                    .onTapGesture {
                        try? button.play(animationName: "active")
                }
            }
            .padding(40)
            .padding(.top, 40)
        }
    }
    var background: some View{
        RiveViewModel(fileName:"shapes").view()
            .ignoresSafeArea()
            .blur(radius: 30)
            .background(
                Image("Spline")
                    .blur(radius: 50)
                    .offset(x:200, y:100)
            )
    }
}

#Preview {
    SwiftUIView()
}


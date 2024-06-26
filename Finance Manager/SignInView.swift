//
//  SignInView.swift
//  Finance Manager
//
//  Created by Sona kerketta on 26/06/24.
//

import SwiftUI

struct SignInView: View {
     
    @State var email = ""
    @State var password = ""

    var body: some View {
        
        VStack(spacing: 24) {
            Text("Sign In")
                .font(.custom("Poppins Bold", size: 38, relativeTo: .largeTitle))
            Text("Embark on your journey to financial freedom with our comprehensive app.")
                .font(.custom("Inter Regular", size: 18, relativeTo: .headline))
            
            VStack(alignment: .leading) {
                Text("Email")
                    .font(.custom("Inter Regular", size: 15, relativeTo: .subheadline))
                    .foregroundColor(.secondary)
                TextField("", text: $email)
                    .padding(15)
                    .padding(.leading, 36)
                    .background(.white)
                    .mask(RoundedRectangle(
                        cornerRadius: 10,
                        style: .continuous)
                    )
                    .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke()
                        .fill(.black.opacity(0.1)))
                    .overlay(Image("Icon Email")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,8)
                    )
            }
            
            VStack (alignment: .leading){
                Text("Password")
                    .font(.custom("Inter Regular", size: 15, relativeTo: .subheadline))
                    .foregroundColor(.secondary)
                SecureField("", text: $password)
                    .padding(15)
                    .padding(.leading, 36)
                    .background(.white)
                    .mask(RoundedRectangle(
                        cornerRadius: 10,
                        style: .continuous)
                    )
                    .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous).stroke()
                        .fill(.black.opacity(0.1)))
                    .overlay(Image("Icon Lock")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading,8)
                    )
            }
            Button(action: {
                        // Action to perform when button is tapped
                        
                    }) {
                        HStack {
                            Image(systemName: "arrow.forward")
                                .foregroundColor(.white)
                            
                            Text("Sign In")
                            
                                .font(.headline)
                                .foregroundColor(.white)
                            
                        }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color(red: 0xF7 / 255, green: 0x7D / 255, blue: 0x8E / 255))
                               
                                .cornerRadius(15)
                                .padding(.horizontal, 20)
                                .shadow(color: .gray, radius: 10, x: 0, y: 5)
                        
                    }
                
                
            
            
            HStack {
                Rectangle().frame(height: 1).opacity(0.1)
                Text("OR")
                    .font(.custom("Inter SemiBold", size: 13, relativeTo: .subheadline))
                .foregroundColor(.black.opacity(0.3))
                Rectangle().frame(height: 1).opacity(0.1)
            }
            
            
            Divider()
            Text("Sign up with Email, Apple or Google")
                .font(.custom("Inter Regular", size: 15, relativeTo: .subheadline))
                .foregroundColor(.secondary)
            
            HStack {
                Image("Logo Email")
                Spacer()
                Image("Logo Apple")
                Spacer()
                Image("Logo Google")
            }
        }
        .padding(30)
        .background(.regularMaterial)
        .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 5, x:0 , y: 3)
        .shadow(color: Color("Shadow").opacity(0.3), radius: 30, x:0 , y: 30)
        .overlay(RoundedRectangle(cornerRadius: 20,style: .continuous)
            .stroke(.linearGradient(colors: [.white.opacity(0.8), .white.opacity(0.1)], startPoint: .topLeading, endPoint: .bottomTrailing)))
        .padding()
    }
}

#Preview {
    SignInView()
}

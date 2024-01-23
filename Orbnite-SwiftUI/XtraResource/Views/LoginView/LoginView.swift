//
//  LoginView.swift
//  Orbnite-SwiftUI
//
//  Created by Febin Puthalath on 22/01/24.
//

import SwiftUI

struct LoginView: View {
    @State private var tokenString = ""
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            VStack(spacing:20){
                Image("Title_Icon")
                    .resizable()
                    .frame(width: 195,height: 60)
                    .offset(y:73)
                   
                Text("Sign In")
                    .font(.custom("nunito-bold", size: 20))
                    .foregroundColor(.mainColor)
                    .frame(height: 56)
                    .offset(y:89)
                
                Rectangle()
                    .frame(maxWidth: .infinity,maxHeight:4)
                    .foregroundColor(.mainColor)
                    .offset(y:65)
                
               FloatingLabelTextField("Token", placeholder: "*************",isPassword: true)
                    .frame(maxWidth: .infinity,maxHeight:63)
                    .padding()
                    .offset(y:65)
                
                Text("Provide your Laravel forge API Token")
                    .font(.custom("nunito-body", size: 14))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .offset(y:25)
                
                Button {
                    
                } label: {
                    Text("Sign In")
                        .font(.custom("nunito-regular", size: 16))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity,maxHeight:44)
                        .background(Color.mainColor)
                        .cornerRadius(5)
                        .padding()
                    ///    .background(Color.mainColor)

                }

                    
                
                Spacer()

            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

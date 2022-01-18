//
//  LoginView.swift
//  Instagram
//
//  Created by MYX on 1/18/22.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color.purple,Color.blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack(spacing:10){
                    Image("instagram_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 220, height: 110)
//                    email field
                    VStack(spacing:20){
                        CustomTextField(text: $email, placeholder: Text("email"), imageName: "envelope")
                            .padding()
                            .background(Color(.init(white:1,alpha:  0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal,32)
    //                    password
                        CustomSecureField(text: $password, placeholder: Text("password"), imageName: "lock")
                            .padding()
                            .background(Color(.init(white:1,alpha:  0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal,32)
//                    sign in
                        Button(action: {}, label: {
                                Text("sign in")
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .frame(width: 300, height: 50)
                                    .background(Color.purple)
                                    .clipShape(Capsule())
                        })
                    }
//                    forgot password
                    HStack{
                        Spacer()
                        Button(action:{}, label: {
                            Text("forgot password?")
                                .font(.system(size: 13, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.top)
                                .padding(.trailing,28)
                        })
                    }
                    Spacer()

//                    sign up
                    NavigationLink(
                        destination: RegistrationView().navigationBarHidden(true),
                    label:{
                            HStack{
                                Text("don't you have an account?")
                                    .font(.system(size: 14))
                                Text("Sign Up ")
                                    .font(.system(size: 14, weight: .semibold))
                            }.foregroundColor(.white)
                        }).padding(.bottom,16)
                    }
                .padding(.top,-45)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

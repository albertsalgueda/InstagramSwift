//
//  RegistrationView.swift
//  Instagram
//
//  Created by MYX on 1/18/22.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var full_name = ""
    @State private var password = ""
    @State private var imagePickerPresented = false
    @State private var selectedImage: UIImage?
    @State private var postImage: Image?
    @Environment(\.presentationMode) var mode
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple,Color.blue]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack(spacing:10){
                Button(action: {}, label: {
                    Image("plus_button")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 140)
                        .foregroundColor(.white)
                }).sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {ImagePicker(image: $selectedImage)})
//                    email field
                VStack(spacing:20){
                    CustomTextField(text: $email, placeholder: Text("email"), imageName: "envelope")
                        .padding()
                        .background(Color(.init(white:1,alpha:  0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal,32)
                    CustomTextField(text: $username, placeholder: Text("username"), imageName: "person")
                        .padding()
                        .background(Color(.init(white:1,alpha:  0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal,32)
                    CustomTextField(text: $full_name, placeholder: Text("full name"), imageName: "person")
                        .padding()
                        .background(Color(.init(white:1,alpha:  0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal,32)
                    
//                    password
                    CustomSecureField(text: $full_name, placeholder: Text("password"), imageName: "lock")
                        .padding()
                        .background(Color(.init(white:1,alpha:  0.15)))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .padding(.horizontal,32)
//                    sign in
                    Button(action: {}, label: {
                            Text("sign up")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 300, height: 50)
                                .background(Color.purple)
                                .clipShape(Capsule())
                    })
                }
                Spacer()
//                    sign up
                Button(action: {
                        mode.wrappedValue.dismiss()
                    },
                label:{
                    HStack{
                        Text("already have an account?")
                            .font(.system(size: 14))
                        Text("Sign In ")
                            .font(.system(size: 14, weight: .semibold))
                    }.foregroundColor(.white)
                    }).padding(.bottom,16)
                }
        }
    }
}

extension RegistrationView {
    func loadImage(){
        guard let selectedImage = selectedImage else {return}
        postImage = Image( uiImage: selectedImage)
    }
}


struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}

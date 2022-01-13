//
//  UploadPost.swift
//  Instagram
//
//  Created by MYX on 1/12/22.
//

import SwiftUI

struct UploadPostView: View {
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText = ""
    var body: some View {
        if postImage != nil{
            Button(action: {},
                   label: {
                Image("plus_button")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                    .clipped()
                    .padding(.top,56)
                    .foregroundColor(.black)
            })
        Spacer()
        }
        else{
            VStack{
                HStack(alignment: .top){
                        Image("ape")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 96, height: 96)
                            .clipped()
                        TextField("Enter your caption", text: $captionText)
                }.padding(.leading)
                Button(action: {}, label: {
                    Text("share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 360, height: 50)
                        .background(Color.blue)
                        .cornerRadius(8)
                        .foregroundColor(.white)
                })
                Spacer()
            }.padding(.top)
            }
        
        }
}

struct UploadPost_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}

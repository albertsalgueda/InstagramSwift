//
//  ProfileHeaderView.swift
//  Instagram
//
//  Created by MYX on 1/13/22.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image("ape")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                Spacer()

                HStack(spacing: 30)
                {
                    UserStatView(value: 22, title: "posts")
                    UserStatView(value: 66, title: "followers")
                    UserStatView(value: 0, title: "following")
                }.padding(.trailing,40)
                
            }.padding(.top)
            Text("Bruce Wayne")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading,.top])
            Text("The one and only ")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top,1)
            HStack{
                Spacer()
                ProfileActionButtonView()
                Spacer()
            }
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}

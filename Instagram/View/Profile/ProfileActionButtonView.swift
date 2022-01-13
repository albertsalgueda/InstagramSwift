//
//  ProfileActionButtonView.swift
//  Instagram
//
//  Created by MYX on 1/13/22.
//

import SwiftUI

struct ProfileActionButtonView: View {
    var isCurrentUser = false
    var isFollowed = false
    var body: some View {
        if isCurrentUser{
            Button(action: {},
                   label: {
                Text("Edit Profile")
                    .font(.system(size: 15, weight: .semibold))
                    .frame(width: 360, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.gray,lineWidth: 1))
            })
        }
        else{
            HStack{
                Button(action: {},
                       label: {
                    Text(isFollowed ? "Following": "Follow")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor(isFollowed ? .black: .white)
                        .background(isFollowed ? Color.white: Color.blue)
                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.gray,lineWidth: 1))
                }).cornerRadius(4)
                Button(action: {},
                       label: {
                    Text("Message")
                        .font(.system(size: 15, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color.gray,lineWidth: 1))
                }).cornerRadius(4)
            }
        }
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView()
    }
}

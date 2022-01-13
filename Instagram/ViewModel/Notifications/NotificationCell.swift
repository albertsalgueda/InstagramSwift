//
//  NotificationCell.swift
//  Instagram
//
//  Created by MYX on 1/13/22.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage = false
    var body: some View {
        HStack{
            Image("ape")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            Text("albertsalgueda").font(.system(size: 15, weight:.semibold)) +
                Text(" liked one of your posts")
                .font(.system(size: 14))
            Spacer()
            if showPostImage{
                Image("ape")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
            }
            else{
                Button(action: {},
                       label: {Text("follow")
                        .padding(.horizontal,20)
                        .padding(.vertical,8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                })
            }
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
    }
}

//
//  FeedCell.swift
//  Instagram
//
//  Created by Albert Salgueda on 1/12/22.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(alignment: .leading){
//            container - vertical stack
//            user info
            HStack{
                Image("ape")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("albertsalgueda")
                    .font(.system(size:14,weight:.semibold))
            }
            .padding([.leading,.bottom],8)

//            post image
            Image("ape")
                .resizable()
                .scaledToFill()
                .frame(maxHeight:440)
                .clipped()
//            action button
            HStack{
                Button(action: {}, label: {
                    Image(systemName:"heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .padding(4)
                }
                )
                Button(action: {}, label: {
                    Image(systemName:"bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .padding(4)
                }
                )
                Button(action: {}, label: {
                    Image(systemName:"paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .padding(4)
                }
                )
            }
            .padding([.leading,.bottom],1)
            .foregroundColor(.black)
            Text("666 likes")
                .font(.system(size: 14,
                              weight:.semibold))
                .padding(.leading,8)
                .padding(.bottom,0.25)
            HStack{
                Text("albertsalgueda").font(.system(size: 15, weight:.semibold)) +
                    Text(" El poder genera límites")
                    .font(.system(size: 14))
            }.padding(.horizontal,8)
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading,8)
                .padding(.top,-6)
    }
        .scaledToFit()
    }
        
}
struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}

//
//  UserCell.swift
//  Instagram
//
//  Created by MYX on 1/13/22.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            Image("ape")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text("user_name")
                    .font(.system(size:14, weight: .semibold))
                Text("Full name")
                    .font(.system(size:14))
            }
            Spacer()
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}

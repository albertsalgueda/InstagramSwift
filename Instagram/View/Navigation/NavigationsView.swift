//
//  NotificationsView.swift
//  Instagram
//
//  Created by MYX on 1/12/22.
//

import SwiftUI

struct NavigationsView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ..< 20) { _ in
                    NotificationCell()
                        .padding(.top)
                }
            }
        }
    }
}

struct NavigationsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationsView()
    }
}

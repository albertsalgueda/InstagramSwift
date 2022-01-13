//
//  NotificationListView.swift
//  Instagram
//
//  Created by MYX on 1/13/22.
//

import SwiftUI

struct NotificationListView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0 ..< 20){ _ in
                    NavigationLink(
                        destination: ProfileView(),
                        label: {
                            NotificationCell()
                                .padding(.leading)
                        }
                    )
                        
                    
                }
            }
        }
    }
}

struct NotificationListView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationListView()
    }
}

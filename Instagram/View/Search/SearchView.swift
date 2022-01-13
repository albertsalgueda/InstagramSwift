//
//  SearchView.swift
//  Instagram
//
//  Created by MYX on 1/12/22.
//

import SwiftUI

struct SearchView: View {
    @State var searchText=""
    @State var inSearchMode = false
    var body: some View {
        ScrollView{
//            search
            SearchBar(text:$searchText, isEditing: $inSearchMode)
                .padding()
//            grid bas
            ZStack{
                if inSearchMode{
                    UserListView()
                }
                else{
                    PostGridView()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

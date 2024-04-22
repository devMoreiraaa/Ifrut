//
//  SearchView.swift
//  Ifrut
//
//  Created by leonardo Moreira on 15/04/24.
//

import SwiftUI

struct SearchView: View {
    
    @State private var Search = ""
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                VStack{
                    Text("ola mundo")
                }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $Search, prompt: "Pesquisar seu Produto")
        }
        
    }
}

#Preview {
    SearchView()
}

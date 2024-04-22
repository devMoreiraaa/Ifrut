//
//  TabBarView.swift
//  Ifrut
//
//  Created by leonardo Moreira on 15/04/24.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var selectedTab = 0
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(0)
            
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(1)
            
           CarrinhoView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Carrinho")
                }
                .tag(2)
            
            PerfilView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Perfil")
                }
                .tag(3)

        }
        .navigationBarBackButtonHidden(false)
    }
}

#Preview {
    TabBarView()
}

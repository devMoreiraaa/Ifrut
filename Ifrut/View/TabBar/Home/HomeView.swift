//
//  HomeView.swift
//  Ifrut
//
//  Created by leonardo Moreira on 15/04/24.
//

import SwiftUI

struct HomeView: View {
    
    @State private var search = ""

    @State private var SelectedProdutos: FiltroDeProdutos = .Vegetais
    @Namespace var animation
    @State private var columns: [GridItem] = [.init(),.init(),]
        
    
    
    var body: some View {
      
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                    HStack( spacing: 20) {
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "line.3.horizontal")
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.white)
                                .background(Color.verde)
                                .cornerRadius(10)
                                .padding(.leading, 10)
                        })
                       
                        
                        Spacer()
                        
                        Text("AV.Marquês, Unip - SP")
                            .font(.subheadline)
                            .bold()
                        
                        
                        Spacer()
                        Image(.eu)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 40, height: 40)
                            .cornerRadius(12)
                    }
                    .padding(.leading)
                    .padding(.trailing)
                    
                    VStack {
                        Text(" Encontre Os ")
                        +
                        Text("Melhores\n Vegetais")
                            .fontWeight(.black)
                        
                        +
                        Text(" Perto de você")
                    }
                    .font(.title)
                    .padding(.top, 40)
                    .padding(.leading)
                    
                    
                    HStack {
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(.verde)
                            .padding(.leading, 30)
                            
                        
                        TextField("Pesquise seu vegetal favorito", text: $search)
                        
                        Image(systemName: "slider.horizontal.3")
                            .frame(width: 30, height: 30)
                            .foregroundStyle(.white)
                            .background(Color.verde)
                            .cornerRadius(10)
                        
                            .padding(.trailing)
                    }
                    .frame(width: 360, height: 50)
                    .foregroundStyle(.black)
                    .cornerRadius(13)
                    .padding(.top)
                    
                    
                    
                    HStack(spacing: 30) {
                        ForEach(FiltroDeProdutos.allCases) { fruta in
                            
                            
                            VStack {
                                Text(fruta.title)
                                    .font(.subheadline)
                                    .fontWeight(SelectedProdutos == fruta ? .semibold : .regular)
                                
                                if SelectedProdutos == fruta {
                                    Rectangle()
                                        .foregroundStyle(.black)
                                        .frame(width: 60 , height: 1)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundStyle(.clear)
                                        .frame(width: 50 , height: 1)
                                }
                                
                            }
                            .padding(.leading, 2)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    SelectedProdutos = fruta
                                }
                            }
                        }
                    }
                    .padding()
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: columns, spacing: 10) {
                                  
                            ForEach(produto) { Produto in
                                
                                ProductCell(product: Produto)
                                
                            }
                            
                        }
                    }
                    .padding(2)
                
                
                }
            }
            .padding(10)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

#Preview {
    HomeView()
}

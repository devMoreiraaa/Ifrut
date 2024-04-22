//
//  WelcomeView.swift
//  Ifrut
//
//  Created by leonardo Moreira on 12/04/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Color.color
            
                

            VStack(alignment: .leading) {
                ZStack {
                    Image(.image40)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    .frame(width: 465, height: 100)
                }
                .ignoresSafeArea()
               
                
                VStack(alignment: .leading) {
                    
                    Image(.logo)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 70, height: 70)
                        .padding(.leading)
                    
                    Text(" Seja Bem vindo ao\n aplicativo Ifrut!\n Aqui você encontrará \n Um mundo de")
                        .font(.title)
                        .fontWeight(.bold)
                       
                    
                    +
                    Text("  Frescor e\n")
                        .font(.title)
                        .foregroundColor(.letrasbotao)
                        
                    +
                    Text("Saúde")
                        .font(.title)
                        .foregroundColor(.letrasbotao)
                        
                    
                }
                .padding(.horizontal, 70)
                .multilineTextAlignment(.leading)
                  
                    
                VStack{
                    Button {
                        //
                    } label: {
                        NavigationLink(destination: LoginView()) {
                            Text("Vamos começar ?")
                                .frame(width: 300, height: 50)
                                .font(.title)
                                .foregroundStyle(.white)
                                .background(Color.letrasbotao)
                                .cornerRadius(11)
                        }
                       
                    }

                }
                .padding(.leading, 70)
            

                .frame(height: 196)
            
            }
            
            
            
            .padding(.top, 100)
            
        }
        
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
        
}

#Preview {
    NavigationView {
        WelcomeView()
    }
   
}

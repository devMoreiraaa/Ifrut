//
//  LoginView.swift
//  Ifrut
//
//  Created by leonardo Moreira on 15/04/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        ZStack {
            Color(.color)
                .ignoresSafeArea()
            VStack {
                Image(.image40) // IMAGEM DE FUNDO DOS LEGUMES
                    .resizable()
                    .scaledToFill()
                    .frame(width: 420, height: 00)
                  
                VStack(alignment: .center, spacing: 12) {
                
                    Image(.logo) // IMAGEM DA LOGO
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .ignoresSafeArea()
                    
                    
                    Text("Bem Vindo De Volta") // BEM VINDO DE VOLTA
                        .font(.title)
                    
                    HStack(spacing: 100){
                        Button(action: {
                            
                        }, label: {
                            Text("Entrar") // BOTÃO DE ENTRAR NO APLICATIVO
                        })
                        
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Registro") // BOTÃO PARA VC FAZER O CADASTRO
                        })
                    }
                    .frame(width: 332, height: 57)
                    .foregroundStyle(.black)
                    .bold()
                    .cornerRadius(12)
                    .padding()
                    
                    
                    // CHECKMARK SE VOCÊ JÁ ESTÁ LOGADO, E O EMAIL Q ESTÁ CADASTRADO
                    HStack{
                    Image(systemName: "checkmark.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundStyle(.green)
                            .padding(.leading)
                        
                        Divider()
                            .frame(width: 0, height: 30)
                            .padding(.leading)
                        
                        VStack(alignment: .leading){
                            Text("salvo como")
                            
                            Text("leonardoazevedomoreiraagmail.com")
                                
                        }
                        .frame(width: 280, height: 51)
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        
                    }
                    .padding(.horizontal)
                    
                  
                    // BOTÃO PARA INICIAR O APLICATIVO
                    
                        RoundButton(title: "Continuar")
                        .padding(.top)
                    
                    
                      HStack {
                        VStack {
                                Divider()
                                .frame(width: 100, height: 20)
                        }
                        
                        Text("ou entre com")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        
                        VStack {
                                Divider()
                                .frame(width: 100, height: 20)
                        }
                    }
                    .padding(.top, 40)
                    
                    
                    HStack(spacing: 40){
                        Image(.google)
                        
                        Image(.facebook)
                            
                        Image(.apple)
                    }
                    .padding(.top)
                }
                .ignoresSafeArea()
            }
        }

    }
}

#Preview {
    LoginView()
}

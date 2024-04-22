//
//  PerfilView.swift
//  Ifrut
//
//  Created by leonardo Moreira on 15/04/24.
//

import SwiftUI

struct PerfilView: View {
    var body: some View {
        
        NavigationStack{
            
            ScrollView(showsIndicators: false) {
                VStack {
                    Image(.eu)       // Foto do perfil
                        .resizable()
                        .scaledToFill()
                        .frame(width: 88, height: 88)
                        .cornerRadius(20)
                        .padding(.top, 100)
                    
                    Text("Leonardo Moreira")  // meu nome
                        .bold()
                    
                    Text("Leonardoazevedomoreiraagmail.com") // meu email
                        .font(.footnote)
                        .foregroundStyle(.gray)
                        .padding(.bottom, 50)
                    
                    
                    
                
                    
                    HStack(alignment: .center) {
                        Image(systemName: "person.fill")  // imagem do systemName Person
                            .foregroundStyle(.green)
                        
                        VStack(alignment: .leading){
                            Text("Nome")   // representando o nome
                                .bold()
                            
                            Text("Leonardo Moreira") // seu nome
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }
                   
                        
                        Spacer()
                        Text("Editar")  // editar caso queira mudar seu nome de usúario
                            .foregroundStyle(.gray)
                    }
                    .frame(width: 320, height: 60)
                                    
                    
                    HStack(alignment: .center) {
                        Image(systemName: "mail.fill")  // imagem do systemName Person
                            .foregroundStyle(.green)
                        
                        VStack(alignment: .leading){
                            Text("Nome")   //  seu email
                                .bold()
                            
                            Text("Leonardomoreira@@gmail.com") // seu nome
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        Text("Editar")  // editar caso queira mudar seu nome de usúario
                            .foregroundStyle(.gray)
                    }
                    
                    .padding(.top, 10)
                    .frame(width: 320, height: 50)
                  
                    
                    
                    HStack(alignment: .center) {
                        Image(systemName: "lock.fill")  // imagem do systemName Person
                            .foregroundStyle(.green)
                        
                        VStack(alignment: .leading){
                            Text("Nome")   // representando o nome
                                .bold()
                            
                            Text("(11) 965782680") // seu número de telefone
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        Text("Editar")  // editar caso queira mudar seu nome de usúario
                            .foregroundStyle(.gray)
                    }
                    .padding(.top, 10)
                    .frame(width: 320, height: 50)
                    
                    
                    
                    HStack(alignment: .center) {
                        Image(systemName: "phone")  // imagem do systemName Person
                            .foregroundStyle(.green)
                        
                        VStack(alignment: .leading){
                            Text("Senha")   // representando o nome
                                .bold()
                            
                            Text("**********") // seu nome
                                .font(.footnote)
                                .foregroundStyle(.gray)
                        }
                        
                        Spacer()
                        Text("Editar")  // editar caso queira mudar seu nome de usúario
                            .foregroundStyle(.gray)
                    }
                    .padding(.top, 10)
                    .frame(width: 320, height: 50)
                     Spacer()
                       
                  
                    
                    
                }
            }
            .navigationTitle("Perfil")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
        
}

#Preview {
    PerfilView()
}

//
//  RoundButton.swift
//  Ifrut
//
//  Created by leonardo Moreira on 12/04/24.
//

import SwiftUI

struct RoundButton: View {
    @State var title: String = "Tittle"
    
    var body: some View {
        
        Button(action: {
            
        }, label: {
                 Text(title)
                .frame(width: 300, height: 50)
                .font(.title)
                .foregroundStyle(.white)
                .background(Color.letrasbotao)
                .cornerRadius(11)
        })
        
        
        
    }
}

#Preview {
    RoundButton()
            .padding(20)
}

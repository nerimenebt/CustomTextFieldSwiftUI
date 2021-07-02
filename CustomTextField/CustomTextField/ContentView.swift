//
//  ContentView.swift
//  CustomTextField
//
//  Created by Nerimene on 2/7/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var email = ""
    
    var body: some View {
        HStack {
            Image(systemName: "envelope")
                .foregroundColor(.gray)
            
            TextField("Email ID", text: $email)
        }.padding()
        .background(Color.white)
        .shadow(color: .primary.opacity(email == "" ? 0 : 0.1), radius: 5, x: 5, y: 5)
        .shadow(color: .primary.opacity(email == "" ? 0 : 0.1), radius: 5, x: -5, y: -5)
        .padding()
        .animation(.easeIn, value: email)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  MyCardApp
//
//  Created by mak on 25.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.04, green: 0.52, blue: 0.89)
                .ignoresSafeArea()
            
            VStack {
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 222, height: 222)
                    .clipShape(Circle())
                Text("Azamat Vaniev")
                    .font(.system(size: 32, weight: .bold, design: .serif))
                
                Text("iOS Developer")
                    .font(.system(size: 24, design: .serif))
                Divider()
                Card(image: "phone.fill", message: "+7999XX9XXXX")
                
                Card(image: "envelope.fill", message: "test@mail.ru")
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 320, height: 60)
            .padding()
            .overlay(
                HStack{
                Image(systemName: image)
                    .foregroundColor(Color(red: 0.04, green: 0.52, blue: 0.89))
                Text(message)
                    .foregroundColor(.black)
            }
                    
            )
    }
}

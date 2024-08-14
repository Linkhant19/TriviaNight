//
//  ContentView.swift
//  TriviaNight
//
//  Created by Lin Khant Ko on 8/13/24.
//

import SwiftUI

// extension for our hex value colors!!!
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet(charactersIn: "#"))
        let rgbValue = UInt32(hex, radix: 16)
        let r = Double((rgbValue! & 0xFF0000) >> 16) / 255
        let g = Double((rgbValue! & 0x00FF00) >> 8) / 255
        let b = Double(rgbValue! & 0x0000FF) / 255
        self.init(red: r, green: g, blue: b)
    }
}

struct ContentView: View {
    let mainColor = Color(hex: "#253342")
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    var body: some View {
        ZStack {
            mainColor
            VStack (alignment: .center){
                Spacer().frame(width: 100.0, height: 500.0)
                Text("Let's go!!!").font(Font.custom("NewAmsterdam-Regular", size: 40)).foregroundStyle(Color.white).bold()
                Button(action: {
                    print("Hey Lin!")
                }, label: {
                    Text("Greet").foregroundStyle(Color.white).font(Font.custom("NewAmsterdam-Regular", size: 20)).bold()
                }).padding(.all, 10.0).border(Color.white, width: 2).background(Color.cyan)
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}

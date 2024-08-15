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
    let mainColor = Color(hex: "#53BDA5")
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack (alignment: .center){
                Text("1 / 10")
                    .font(Font.custom("NewAmsterdam-Regular", size: 20))
                    .padding()
                
                Text("What day does Lin's birthday fall on?")
                    .font(Font.custom("NewAmsterdam-Regular", size: 42, relativeTo: .largeTitle))
                    .multilineTextAlignment(.leading)
                    .bold()
                    .lineSpacing(0)
                Spacer()
                
                HStack{
                    Button(action: {
                        print("Tapped choice 1")
                    }, label: {
                        Text("Choice 5")
                            .padding()
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                                .background(Color.white)
                                .font(Font.custom("Ivy", size: 20))
                                .padding(.trailing, 15.0)
                    })
                    
                    Button(action: {
                        print("Tapped choice 2")
                    }, label: {
                        Text("Choice 2")
                            .padding()
                                .border(Color.black, width: 3)
                                .background(Color.white)
                                .font(Font.custom("Ivy", size: 20))
                    })
                
                }
                
                HStack{
                    Button(action: {
                        print("Tapped choice 3")
                    }, label: {
                        Text("Choice 3")
                            .padding()
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                                .background(Color.white)
                                .font(Font.custom("Ivy", size: 20))
                                .padding(.trailing, 15.0)
                    })
                    
                    Button(action: {
                        print("Tapped choice 4")
                    }, label: {
                        Text("Choice 4")
                            .padding()
                                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                                .background(Color.white)
                                .font(Font.custom("Ivy", size: 20))
                    })
                }
            }
            .padding().foregroundColor(Color.black)
        }
        
    }
}

#Preview {
    ContentView()
}

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
    
    let question = Question(questionText: "When is Lin's birthday?", possibleAnswers: ["12", "13", "17", "19"], correctAnswerIndex: 3)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack (alignment: .center){
                Text("1 / 10")
                    .font(Font.custom("NewAmsterdam-Regular", size: 20))
                    .padding()
                
                Text(question.questionText)
                    .font(Font.custom("NewAmsterdam-Regular", size: 42, relativeTo: .largeTitle))
                    .multilineTextAlignment(.leading)
                    .bold()
                    .lineSpacing(0)
                Spacer()
                
                HStack{
                    ForEach(0..<question.possibleAnswers.count) {answerIndex in
                        Button(action: {
                            print("Tapped choice 3")
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                
                }.padding(.bottom, 10.0)
                
//                HStack{
//                    Button(action: {
//                        print("Tapped choice 3")
//                    }, label: {
//                        ChoiceTextView(choiceText: question.possibleAnswers[2])
//                    })
//                    
//                    Button(action: {
//                        print("Tapped choice 4")
//                    }, label: {
//                        ChoiceTextView(choiceText: question.possibleAnswers[3])
//                    })
//                }
            }
            .padding().foregroundColor(Color.black)
        }
        
    }
}

#Preview {
    ContentView()
}

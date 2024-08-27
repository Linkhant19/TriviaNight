//
//  ChoiceTextView.swift
//  TriviaNight
//
//  Created by Lin Khant Ko on 8/26/24.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    var body: some View {
        Text(choiceText)
            .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 3)
                .background(Color.white)
                .font(Font.custom("Ivy", size: 20))
                .padding(.trailing, 15.0)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text!")
    }
}

//#Preview {
//    ChoiceTextView()
//}

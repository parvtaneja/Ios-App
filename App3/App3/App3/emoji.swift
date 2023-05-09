//
//  emoji.swift
//  App3
//
//  Created by Parv Taneja on 09/05/23.
import SwiftUI

enum Emoji: String, CaseIterable {
    case 👀, 🫀, 🧶, 🧑‍💻
}

struct emoji: View {
    @State var selection: Emoji = .👀
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 170))
                
                Picker("Select Emoji", selection: $selection){
                    ForEach(Emoji.allCases, id: \.self) {emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji World!")
            .padding()

        }
        
    }
}

struct emoji_Previews: PreviewProvider {
    static var previews: some View {
        emoji()
    }
}

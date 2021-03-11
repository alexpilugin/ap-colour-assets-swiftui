//
//  ContentView.swift
//  AP Colour Assets
//
//  Created by Alex Pilugins on 11/03/2021.
//

import SwiftUI

struct VerticalText: ViewModifier {
   func body(content: Content) -> some View {
      content
        .rotationEffect(.degrees(-90))
        .fixedSize()
   }
}

func ColorBlock(colorName: String, textColor: Color = .white) -> some View {
    Color(colorName)
        .overlay(
            Text(colorName)
                .foregroundColor(textColor)
                .modifier(VerticalText())
        )
}

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            HStack(alignment: .top, spacing: 0, content: {
                //max quantity of views = 10
                Group {
                    ColorBlock(colorName: "Liquorice")
                    ColorBlock(colorName: "Lead")
                    ColorBlock(colorName: "Tungsten")
                    ColorBlock(colorName: "Iron")
                    ColorBlock(colorName: "Steel")
                    ColorBlock(colorName: "Tin")
                    
                    ColorBlock(colorName: "Nickel", textColor: .black)
                    ColorBlock(colorName: "Aluminium", textColor: .black)
                    ColorBlock(colorName: "Magnesium", textColor: .black)
                    ColorBlock(colorName: "Silver", textColor: .black)
                }
                ColorBlock(colorName: "Mercury", textColor: .black)
                ColorBlock(colorName: "Snow", textColor: .black)
            })
            HStack(alignment: .top, spacing: 0, content: {
                //max quantity of views = 10
                Group {
                    ColorBlock(colorName: "Cayenne")
                    ColorBlock(colorName: "Mocha")
                    ColorBlock(colorName: "Asparagus")
                    ColorBlock(colorName: "Fern")
                    ColorBlock(colorName: "Clover")
                    ColorBlock(colorName: "Moss")
                    ColorBlock(colorName: "Teal")
                    ColorBlock(colorName: "Ocean")
                    ColorBlock(colorName: "Midnight")
                    ColorBlock(colorName: "Aubergine")
                }
                ColorBlock(colorName: "Plum")
                ColorBlock(colorName: "Maroon")
            })
            HStack(alignment: .top, spacing: 0, content: {
                //max quantity of views = 10
                Group {
                    ColorBlock(colorName: "Maraschino")
                    ColorBlock(colorName: "Tangerine")
                    ColorBlock(colorName: "Lemon")
                    ColorBlock(colorName: "Lime")
                    ColorBlock(colorName: "Spring")
                    ColorBlock(colorName: "Sea Foam")
                    ColorBlock(colorName: "Turquoise")
                    ColorBlock(colorName: "Aqua")
                    ColorBlock(colorName: "Blueberry")
                    ColorBlock(colorName: "Grape")
                }
                ColorBlock(colorName: "Magenta")
                ColorBlock(colorName: "Strawberry")
            })
            HStack(alignment: .top, spacing: 0, content: {
                //max quantity of views = 10
                Group {
                    ColorBlock(colorName: "Salmon", textColor: .black)
                    ColorBlock(colorName: "Cantaloupe", textColor: .black)
                    ColorBlock(colorName: "Banana", textColor: .black)
                    ColorBlock(colorName: "Honeydew", textColor: .black)
                    ColorBlock(colorName: "Flora", textColor: .black)
                    ColorBlock(colorName: "Spindrift", textColor: .black)
                    ColorBlock(colorName: "Ice", textColor: .black)
                    ColorBlock(colorName: "Sky", textColor: .black)
                    ColorBlock(colorName: "Orchid", textColor: .black)
                    ColorBlock(colorName: "Lavender", textColor: .black)
                }
                ColorBlock(colorName: "Bubblegum", textColor: .black)
                ColorBlock(colorName: "Carnation", textColor: .black)
            })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

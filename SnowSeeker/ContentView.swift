//
//  ContentView.swift
//  SnowSeeker
//
//  Created by Takasur Azeem on 04/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13 mini")
                .previewInterfaceOrientation(.landscapeRight)
            ContentView()
                .previewInterfaceOrientation(.portrait)
            ContentView()
                .previewInterfaceOrientation(.landscapeRight)
            ContentView()
                .previewDevice("iPad mini (6th generation)")
            ContentView()
                .previewDevice("iPad mini (6th generation)")
                .previewInterfaceOrientation(.landscapeRight)
            ContentView()
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}

//
//  SideBySideViews.swift
//  SnowSeeker
//
//  Created by Takasur Azeem on 04/08/2022.
//

import SwiftUI

struct SideBySideViews: View {
    var body: some View {
        NavigationView {
            NavigationLink {
                Text("New Secondary")
            } label: {
                Text("Hello, world!")
            }
            .navigationTitle("Primary")
            
            Text("Secondary")
            Text("Third")
            Text("Fourth")
        }
    }
}

struct SideBySideViews_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SideBySideViews()
                .previewDevice("iPhone 13 mini")
                .previewInterfaceOrientation(.landscapeRight)
            SideBySideViews()
                .previewInterfaceOrientation(.portrait)
            SideBySideViews()
                .previewInterfaceOrientation(.landscapeRight)
            SideBySideViews()
                .previewDevice("iPad mini (6th generation)")
            SideBySideViews()
                .previewDevice("iPad mini (6th generation)")
                .previewInterfaceOrientation(.landscapeRight)
            SideBySideViews()
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}

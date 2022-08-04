//
//  AlertAndSheetWithOptionals.swift
//  SnowSeeker
//
//  Created by Takasur Azeem on 04/08/2022.
//

import SwiftUI

struct AlertAndSheetWithOptionals: View {
    @State private var selectedUser: User? = nil
    @State private var isShowingUser = false

    var body: some View {
        Text("Salam!")
            .onTapGesture {
                isShowingUser = true
                selectedUser = User()
            }
            .alert("Welcome", isPresented: $isShowingUser) { }
    }
}

struct AlertAndSheetWithOptionals_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            AlertAndSheetWithOptionals()
                .previewDevice("iPhone 13 mini")
                .previewInterfaceOrientation(.landscapeRight)
            AlertAndSheetWithOptionals()
                .previewInterfaceOrientation(.portrait)
            AlertAndSheetWithOptionals()
                .previewInterfaceOrientation(.landscapeRight)
            AlertAndSheetWithOptionals()
                .previewDevice("iPad mini (6th generation)")
            AlertAndSheetWithOptionals()
                .previewDevice("iPad mini (6th generation)")
                .previewInterfaceOrientation(.landscapeRight)
            AlertAndSheetWithOptionals()
                .previewDevice("iPad Pro (12.9-inch) (5th generation)")
                .previewInterfaceOrientation(.landscapeRight)
        }
    }
}

extension AlertAndSheetWithOptionals {
    struct User: Identifiable {
        var id = "Takasur Azeem"
    }
}

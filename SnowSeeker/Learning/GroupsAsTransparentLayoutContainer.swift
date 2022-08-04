//
//  GroupsAsTransparentLayoutContainer.swift
//  SnowSeeker
//
//  Created by Takasur Azeem on 04/08/2022.
//

import SwiftUI

struct GroupsAsTransparentLayoutContainer: View {
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var body: some View {
        if sizeClass == .compact {
            VStack(content: UserView.init)
        } else {
            HStack(content: UserView.init)
        }
    }
    
    struct UserView: View {
        var body: some View {
            Group {
                Text("Name: Takasur")
                Text("Country: Pakistan")
                Text("Hobbies: SwiftUI")
            }
            .font(.title)
        }
    }
}

struct GroupsAsTransparentLayoutContainer_Previews: PreviewProvider {
    static var previews: some View {
        GroupsAsTransparentLayoutContainer()
//            .previewInterfaceOrientation(.landscapeRight)
    }
}



//
//  GroupsAsTransparentLayoutContainer.swift
//  SnowSeeker
//
//  Created by Takasur Azeem on 04/08/2022.
//

import SwiftUI

struct GroupsAsTransparentLayoutContainer: View {
    @State private var layoutVertically = false

    var body: some View {
        Group {
            if layoutVertically {
                VStack {
                    UserView()
                }
            } else {
                HStack {
                    UserView()
                }
            }
        }
        .onTapGesture {
            layoutVertically.toggle()
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
    }
}



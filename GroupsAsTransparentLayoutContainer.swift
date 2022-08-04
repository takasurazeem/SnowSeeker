//
//  GroupsAsTransparentLayoutContainer.swift
//  SnowSeeker
//
//  Created by Takasur Azeem on 04/08/2022.
//

import SwiftUI

struct GroupsAsTransparentLayoutContainer: View {
    
    var body: some View {
        UserView()
    }
    
    struct UserView: View {
        var body: some View {
            Group {
                Text("Name: Takasur Azeem")
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



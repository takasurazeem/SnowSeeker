//
//  SearchableViews.swift
//  SnowSeeker
//
//  Created by Takasur Azeem on 05/08/2022.
//

import SwiftUI

struct SearchableViews: View {
    @State private var searchText = ""
    let allNames = ["Takasur", "Azeem", "Ali", "Ahmed"]
    
    var filteredNames: [String] {
        if searchText.isEmpty {
            return allNames
        }
        return allNames.filter { $0.localizedStandardContains(searchText) }
    }
    
    var body: some View {
        NavigationView {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
            .searchable(text: $searchText, prompt: "Looking for something?")
            .navigationTitle("Searching")
        }
    }
}

struct SearchableViews_Previews: PreviewProvider {
    static var previews: some View {
        SearchableViews()
    }
}

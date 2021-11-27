//
//  ContentView.swift
//  MixN
//
//  Created by Kyle Lampa on 11/24/21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 2
    
    var body: some View {
        
        TabView(selection: $selection) {
            IngredientsView()
                .tabItem {
                    Label("Ingredients", systemImage: "text.book.closed")
                }
                .tag(1)
            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(2)
            RandomView()
                .tabItem {
                    Label("Random", systemImage: "dice")
                }
                .tag(3)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

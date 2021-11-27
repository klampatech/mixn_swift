//
//  SearchView.swift
//  MixN
//
//  Created by Kyle Lampa on 11/24/21.
//

import SwiftUI

struct SearchView: View {
    @StateObject var apiReturn = Api()
    
    var body: some View {
        NavigationView {
                listView
                .searchable(text: $apiReturn.searchText, prompt: "Search Cocktails")
                .navigationTitle("Search")
        }
                
        }
    
    @ViewBuilder
        var listView: some View {
            if apiReturn.searchText.isEmpty {
                emptyListView
            } else {
                objectsListView
            }
        }

        var emptyListView: some View {
            List(apiReturn.cats) { obj in
                NavigationLink(destination: CategoryDetailsView(item: obj.strCategory!)) {
                Text(obj.strCategory!)
                }
            }
            .onAppear {
                apiReturn.getCategories()
            }
        }

        var objectsListView: some View {
            List(apiReturn.drinks) { obj in
                NavigationLink(destination: DetailsView(item: obj)) {
                HStack {
                    AsyncImage(url: URL(string: obj.strDrinkThumb!)) { image in
                        image.resizable()
                    } placeholder: {
                        Color.gray
                    }
                    .frame(width: 75, height: 75)
                    .clipShape(RoundedRectangle(cornerRadius: 25))
                    VStack(alignment: .leading, spacing: 10) {
                        Text(obj.strDrink!)
                        Text(obj.strCategory!)
                            .foregroundColor(.gray)
                    }
                }
            }
            }
        }
        
    }


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}



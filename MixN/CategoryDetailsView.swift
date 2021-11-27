//
//  CategoryDetailsView.swift
//  MixN
//
//  Created by Kyle Lampa on 11/25/21.
//

import SwiftUI

struct CategoryDetailsView: View {
    @StateObject var apiReturn = Api()
    var item: String
    
    var body: some View {
        
        List(apiReturn.drinks) { obj in
            NavigationLink(destination: FromCategoryDetailsView(idDrink: obj.idDrink!)) {
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
                }
            }
            .navigationTitle(item)
            .navigationBarTitleDisplayMode(.inline)
        }
        }
        .onAppear {
            apiReturn.getCocktailsByCategory(category: item)
        }
    }
}

//struct CategoryDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryDetailsView()
//    }
//}

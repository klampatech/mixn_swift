//
//  FromCategoryDetailsView.swift
//  MixN
//
//  Created by Kyle Lampa on 11/26/21.
//

import SwiftUI

struct FromCategoryDetailsView: View {
    @StateObject var apiReturn = Api()
    var idDrink: String
    
    var body: some View {
        List(apiReturn.lookupDrink) { obj in
            VStack {
                AsyncImage(url: URL(string: obj.strDrinkThumb!)) { image in
                    image.resizable()
                } placeholder: {
                    Color.gray
                }
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding(.top, 10)
                VStack(alignment: .leading) {
                    Text("Recipe")
                .font(.headline)
                .padding(.bottom, 10)

                .foregroundColor(.gray)
                    Text(obj.strInstructions!)
                }
                .padding()
                VStack(alignment: .leading) {
                    Text("Measurements & Ingredients")
                .font(.headline)
                .padding(.bottom, 10)
                .foregroundColor(.gray)
                    HStack {
                        Text(obj.strMeasure1 ?? "")
                        Text(obj.strIngredient1 ?? "")
                    }
                    HStack {
                        Text(obj.strMeasure2 ?? "")
                        Text(obj.strIngredient2 ?? "")
                    }
                    HStack {
                        Text(obj.strMeasure3 ?? "")
                        Text(obj.strIngredient3 ?? "")
                    }
                    HStack {
                        Text(obj.strMeasure4 ?? "")
                        Text(obj.strIngredient4 ?? "")
                    }
                    HStack {
                        Text(obj.strMeasure5 ?? "")
                        Text(obj.strIngredient5 ?? "")
                    }
                    HStack {
                        Text(obj.strMeasure6 ?? "")
                        Text(obj.strIngredient6 ?? "")
                    }
                    HStack {
                        Text(obj.strMeasure7 ?? "")
                        Text(obj.strIngredient7 ?? "")
                    }
                    HStack {
                        Text(obj.strMeasure8 ?? "")
                        Text(obj.strIngredient8 ?? "")
                    }
                }
                Spacer()
                    }
                    .navigationTitle(obj.strDrink!)
                    .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            apiReturn.getCocktailById(drinkId: idDrink)
        }
    }
}

//struct FromCategoryDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        FromCategoryDetailsView()
//    }
//}

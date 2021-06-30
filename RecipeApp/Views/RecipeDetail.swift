//
//  RecipeDetail.swift
//  RecipeApp
//
//  Created by MyMac on 6/12/21.
//

import SwiftUI

struct RecipeDetail: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView{
            
            
            VStack(alignment: .leading){
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    ForEach (recipe.ingredients){
                       item in
                        Text("'" + item.name)
                    }
                    Divider()
                    VStack(alignment: .leading, spacing: 3.0){
                        Text("Directions")
                            .font(.headline)
                            .padding(.bottom, 5)
                        ForEach(recipe.directions, id: \.self) {
                            item in
                            Text(item)
                                .multilineTextAlignment(.leading)
                                .padding(.trailing, 7.0)
                                
                        }
                    }
                    
                }
                
            }
            
            
        }
        .navigationBarTitle(recipe.name)
    
}

struct RecipeDetail_Previews: PreviewProvider {
    static var previews: some View {
        //create a dummy recipe and pass it inot the detail view so that we can see a preview
        let model = RecipeModel()
        
        RecipeDetail(recipe: model.recipes[0])
    }
}
}

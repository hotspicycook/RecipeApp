//
//  ContentView.swift
//  RecipeApp
//
//  Created by MyMac on 6/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = RecipeModel()
    var body: some View {
        
        
        
        NavigationView ()  {
            List(model.recipes) { r in
                NavigationLink(
                    destination: RecipeDetail(recipe:r),
                    label: {
                    
                
                HStack(spacing: 20){
                    Image(r.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .clipped()
                        .cornerRadius(5)
                    Text(r.name)
                }
             })
            }
            .navigationBarTitle("All Recipes")
            .font(.caption)
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

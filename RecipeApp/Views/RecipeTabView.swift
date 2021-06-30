//
//  RecipeTabView.swift
//  RecipeApp
//
//  Created by MyMac on 6/25/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView{
            
            
            recipeFeatureView()
                .tabItem {
                    VStack{
                        Image(systemName: "star")
                        Text("Start Screen")
                    }
                }
            ContentView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
            
        }
        .environmentObject(RecipeModel())
        
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}

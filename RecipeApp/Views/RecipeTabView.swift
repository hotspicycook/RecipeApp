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
            Text("Featured View")
                .tabItem {
                    VStack{
                        Image(systemName: "star")
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
        
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}

//
//  RecipeModel.swift
//  RecipeApp
//
//  Created by MyMac on 6/12/21.
//

import Foundation

class RecipeModel: ObservableObject{
    @Published var recipes = [Recipe]()
    init() {
        
        //create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
        //set the recipes property
        
        
    }
    
    
    
}

//
//  DataService.swift
//  RecipeApp
//
//  Created by MyMac on 6/12/21.
//

import Foundation
class DataService  {
    static func getLocalData() -> [Recipe]{
        //parse local json file
        
        
        //get a url path to the jason file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //check is the pathstring is not nil otherwise...
        guard pathString != nil else {
            return [Recipe]()
        }
        // create a url object
        let url = URL(fileURLWithPath: pathString!)
        do{
            // create a data object
            let data = try Data(contentsOf: url)
            
            //decode the data with a json decoder
            let decoder = JSONDecoder()
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                //add the unique IDS
                for r in recipeData{
                    r.id = UUID()
                }
                //return the recipes
                return recipeData
            }
            catch{
             //error with parsing json
                print(error)
            }
            
            //add the unique IDS
            
            //return the recipes
        }
        catch{
            //error with getting the data
            print(error)
            
        }
        
        
        //decode the data with a json decoder
        
        //add the unique IDS
        
        //return the recipes
        return [Recipe]()
        
        
    }
}

//
//  Recipe.swift
//  RecipeApp
//
//  Created by MyMac on 6/12/21.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var servings:Int
    var highlights:[String]
    var ingredients:[indgredient]
    var directions:[String]
    
    
    
}

 class indgredient: Identifiable, Decodable {
    
    
    var id:UUID?
    var name:String
    var num:Int?
    var denom:Int?
    var unit:String?
     
    
    
}

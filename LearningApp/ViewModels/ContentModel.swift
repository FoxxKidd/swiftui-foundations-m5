//
//  ContentModel.swift
//  LearningApp
//
//  Created by AM Alice - Kelsie Culbert on 12/1/21.
//

import Foundation

class ContentModel: ObservableObject{
    
    @Published var modules = [Module]()
    
    var styleData: Data?
    
    init()
    {
        
        getLocalData()
        
    }

    func getLocalData(){
        
        // get a URL to json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do{
        // Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            let jsonDecoder = JSONDecoder()
            
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            //Assign parsed modules to modules property
            self.modules = modules
        }
        catch{
            print("parsed local data")
        }
        
        //parse style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        
        do{
            let styleData = try Data(contentsOf: styleUrl!)
            
            self.styleData = styleData
        }
        catch{
            //log error
            print("couldn't parse style data")
        }
    }
}

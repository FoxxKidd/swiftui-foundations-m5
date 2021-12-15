//
//  TestView.swift
//  LearningApp
//
//  Created by AM Alice - Kelsie Culbert on 12/15/21.
//

import SwiftUI

struct TestView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        if model.currentQuestion != nil{
            
            VStack{
                // Question number
                
                // Question
                
                // Answer
                
                // Button
                
            }
            .navigationBarTitle("\(model.currentModule?.category ??"") Test")
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

//
//  ContentDetailView.swift
//  LearningApp
//
//  Created by AM Alice - Kelsie Culbert on 12/10/21.
//

import SwiftUI
import AVKit

struct ContentDetailView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        let lesson = model.currentLesson
        let url = URL(String: Constants.videoHostUrl + (lesson?.video ?? ""))
        
        VStack{
            // Only show video if we get a valid URL
            if url != nil {
                VideoPlayer(player: AVPlayer(url: url!))
                    .cornerRadius(10)
            }
            
            // TODO: Description
            
            // Shownext lesson button, only if there is a next lesson
            if model.hasNextLesson(){
                
                Button(action: {
                    
                    // Advance the lesson
                    model.nextLesson()
                    
                }, label: {
                    
                    ZStack{
                        
                        Rectangle()
                            .frame(height:48)
                            .foregroundColor(Color.green)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                        
                        Text("Next Lesson: \(model.currentModule!.content.lessons[model.currentLessonIndex + 1].title)")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                })
            }
        }
            .padding()
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}

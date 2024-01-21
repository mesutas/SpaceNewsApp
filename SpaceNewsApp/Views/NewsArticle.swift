//
//  NewsArticle.swift
//  SpaceNewsApp
//
//  Created by asdirector on 21.01.2024.
//

import SwiftUI
import CachedAsyncImage

struct NewsArticle: View {
    let title: String
    let imageUrl: String
    let siteName: String
    let summary: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(siteName)
                .foregroundStyle(.blue)
                .italic()
            
            HStack(alignment: .center){
                CachedAsyncImage(url: URL(string: imageUrl), transaction: Transaction(animation: .easeInOut)) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .transition(.opacity)
                        
                        
                    } else {
                        HStack{
//                            Place Holder
                        }
//                       Place holder
                    }
                }
                
                
            }
            Text(title)
                .font(.headline)
                .padding(8)
            
            Text(summary)
                .lineLimit(6)
                .font(.body)
                .padding(8)
        }
    }
}

#Preview {
    NewsArticle(title: "Code Palace", imageUrl: "...", siteName: "Code Place Youtube", summary: "Check out code palace for more cool tutorials.")
}

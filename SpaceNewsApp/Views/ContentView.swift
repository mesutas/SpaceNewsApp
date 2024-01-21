//
//  ContentView.swift
//  SpaceNewsApp
//
//  Created by asdirector on 20.01.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var data = SpaceAPI()
    @State private var opac = 0.0
    
    var body: some View {
        NavigationView {
            VStack {
                NewsView()
                    .opacity(opac)
                
            }
            .navigationTitle("Space news")
            .environmentObject(data)
            .onAppear{
                data.getData()
                
                withAnimation(.easeIn(duration: 2)) {
                    opac = 1.0
                }
                
            }
        }
    }
}

#Preview {
    ContentView()
}

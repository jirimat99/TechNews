//
//  ContentView.swift
//  TechNews
//
//  Created by Jiri Matousek on 27.10.2022.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("TECH NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



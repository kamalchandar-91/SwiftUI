//
//  ContentView.swift
//  Sidebar
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            //This is the sidebar for ipad layout.
            List {
                NavigationLink(destination:SwiftUIView()) {
                    Label("SwiftUI", systemImage: "swift")
                }
                NavigationLink(destination:iOSDevelopment()) {
                    Label("iOS Development", systemImage: "iphone")
                }
            }
            //Navigation title should be present at the content of navigation stack itself and not outside the content.
            .navigationTitle(Text("Learn"))
            .navigationBarTitleDisplayMode(.large)
            
            //Default view
            SwiftUIView()
        }
        
    }
}

#Preview {
    ContentView()
}

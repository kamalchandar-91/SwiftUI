//
//  ContentView.swift
//  Stacks
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Vertical Stack - alignment has leading and trailing
        //Since 1st text has padding, leading wont work.
        /*
        VStack(alignment: .leading) {
            Text("Hello World!")
                .padding()
            Text("Second line")
        }*/
        VStack(alignment:.leading, spacing: 16) {
            Text("Hello World!")
                .font(.title)
            Spacer()
            Text("Second Line")
        }
        .padding()
        .frame(height: 100)
        
        //Horizontal Stack
        //alignment has top & bottom

        HStack(alignment: .top,spacing: 16) {
            Text("Hello World")
                .font(.title)
            Text("Second Line")
        }
        .padding()
        .frame(width: 200)
        
        ZStack(alignment:.topLeading) {
            Rectangle()
                .foregroundStyle(.blue)
            Text("Hello World")
                .font(.title)
            Text("Second Line")
            
        }
        .padding()
        .frame(width: 320)
    }
}

#Preview {
    ContentView()
}

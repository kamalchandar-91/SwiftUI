//
//  ContentView.swift
//  ImageView
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("Illustration")
                .resizable() //occupies full space, so a frame is provided to the required size
                .aspectRatio(contentMode: .fit) //preserves images original size - fill is also available
            .frame(width: 200, height: 200,alignment: .top) //adds a frame that image fits within it
            
            Image("Illustration")
                .resizable(resizingMode: .stretch) //inside resizable, resizing mode is provided, on how the image needs to be available. Either streched or tile
        }
    }
}

#Preview {
    ContentView()
}

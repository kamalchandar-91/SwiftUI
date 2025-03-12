//
//  ContentView.swift
//  ShapesAndStrokes
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.blue)
                .ignoresSafeArea(.all)
            
            VStack(spacing: 8) {
                Circle()
                    .stroke(.black,lineWidth: 2)
                    .frame(width: 44, height: 44)
                Text("Kamal Chandar")
                    .font(.title2).bold()
                Text("SwiftUI Developer")
                    .foregroundStyle(.secondary)
                Capsule()
                    .fill(.green)
                    .frame(width: 100)
                    .frame(height: 44)
                    .overlay(Text("Sign up").bold())
            }
            .padding()
            .frame(width: 300, height: 200)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
        }
        
    }
}

#Preview {
    ContentView()
}

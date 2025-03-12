//
//  TransitionAnimation.swift
//  SwiftUIPractise
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct TransitionAnimation: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            Text("View Transition")
                .padding()
                .background(RoundedRectangle(cornerSize: CGSize(width: 40, height: 35)).stroke())
            
            
            if show {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.gray)
                    .padding()
                    //.transition(.scale) //different transition states are available. scale, .identity, .slide
                    //.transition(.move(edge: .bottom))
                    .transition(.scale(scale: 0.1, anchor: .bottomTrailing))

                    //.transition(.offset(x: 300, y: 300))
                    .zIndex(1)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

#Preview {
    TransitionAnimation()
}

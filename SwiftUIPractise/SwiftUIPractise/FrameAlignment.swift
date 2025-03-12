//
//  FrameAlignment.swift
//  SwiftUIPractise
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct FrameAlignment: View {
    var body: some View {
        
        /*
         Below xmark can also be created with frame containing maxwidth, maxheight and alignment
         
        VStack {
            HStack {
                Spacer()
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .background(Circle().stroke())
            }
            Spacer()
        }
        .padding()
         */
        
        /*
        Image(systemName: "xmark")
            .frame(width: 40, height: 40)
            .background(Circle().stroke())
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding()
        */
        
        //if this needs to be present above any view
        VStack {
            Rectangle().fill(.blue)
                .ignoresSafeArea()
        }
        .overlay(
            Image(systemName: "xmark")
                .foregroundStyle(.white) //color of xmark
                .frame(width: 40, height: 40)
                .background(Circle().stroke().fill(.white)) //stroke and stroke color
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding()
        )
    }
}

#Preview {
    FrameAlignment()
}

//
//  DragGesture.swift
//  SwiftUIPractise
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct DragGestureView: View {
    @State var viewState = CGSize.zero
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.green)
            .frame(width: 300, height: 400)
            .offset(x: viewState.width, y: viewState.height)
            .animation(.spring, value: viewState)
            .gesture(
                DragGesture()
                    
                    .onChanged { value in
                        viewState = value.translation
                    }
                    .onEnded { _ in
                        viewState = .zero
                    }
            )
            .padding()
    }
}

#Preview {
    DragGestureView()
}

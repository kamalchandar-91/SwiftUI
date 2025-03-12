//
//  AnimationStates.swift
//  SwiftUIPractise
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct AnimationStates: View {
    @State var show: Bool = false
    var body: some View {
        VStack {
            Text("View More")
                .bold()
                .foregroundStyle(.white)
        }
        .frame(width: show ? 320 : 300, height: show ? 400 : 45)
        .background(.gray)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .gray.opacity(0.4), radius: 25)
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

#Preview {
    AnimationStates()
}

//
//  AnimationWithDelay.swift
//  SwiftUIPractise
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct AnimationWithDelay: View {
    @State var tap = false
    
    var body: some View {
        VStack {
            Text("View More").foregroundStyle(.white).bold()
                .font(.largeTitle)
        }
        .frame(width: 300, height: 300)
        .background(.orange)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .orange.opacity(0.7), radius: 15)
        .scaleEffect(tap ? 0.8 : 0.6)
        .animation(.spring(response: 0.4, dampingFraction: 0.6), value: tap)
        .onTapGesture {
            tap = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                tap = false
            }
        }
    }
}

#Preview {
    AnimationWithDelay()
}

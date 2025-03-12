//
//  AnimationTimingCurve.swift
//  SwiftUIPractise
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct AnimationTimingCurve: View {
    @Namespace private var animation  // Add namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            Color.black.opacity(show ? 0.8 : 0.2)
                .ignoresSafeArea()
                .animation(.easeInOut, value: 0.1)
            
            RoundedRectangle(cornerRadius: 40)
                .foregroundStyle(.brown)
                .frame(height: 300)
                .opacity(show ? 1 : 0.5)
                .padding(show ? 16 : 32)
                .offset(y: show ? 0 : 30)
                .animation(.spring(duration: 0.5,bounce: 0.4),value: show)
                //.matchedGeometryEffect(id: "shape", in: animation)
            RoundedRectangle(cornerRadius: 40)
                .foregroundStyle(.white)
                .frame(height: 300)
                .offset(y: show ? 600 : 0)
                .shadow(radius: 40)
                .padding()
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8),value: show)
                //.matchedGeometryEffect(id: "shape", in: animation)
        }
        .onTapGesture {
            show.toggle()
        }
    }
}

#Preview {
    AnimationTimingCurve()
}

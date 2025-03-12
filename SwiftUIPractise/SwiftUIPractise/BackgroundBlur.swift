//
//  BackgroundBlur.swift
//  SwiftUIPractise
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct BackgroundBlur: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(.gray)
                .padding()
            VisualEffectBlur(blurStyle: .dark)
                .ignoresSafeArea()
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .frame(width: 300, height: 400)
                .shadow(color: .black.opacity(0.3), radius: 20)
            
                
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundBlur()
}

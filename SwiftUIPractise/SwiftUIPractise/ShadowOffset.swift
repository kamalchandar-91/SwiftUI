//
//  ShadowOffset.swift
//  SwiftUIPractise
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct ShadowOffset: View {
    var body: some View {
        VStack {
            Text("Shadow Offset").textCase(.uppercase)
                .font(.title).bold()
                .foregroundStyle(.white)
                .shadow(radius: 20)
        }
        .frame(width: 300, height: 400)
        .background(.red)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .shadow(color: .black.opacity(0.2), radius:5, x: 0,y: 2)
        .shadow(color: .pink.opacity(0.3), radius:20, x: 0,y: 2)
    }
}

#Preview {
    ShadowOffset()
}

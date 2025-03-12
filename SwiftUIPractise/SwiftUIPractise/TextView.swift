//
//  TextView.swift
//  SwiftUIPractise
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and surprisingly little code. You can bring even better experiences to everyone, on any Apple device, using just one set of tools and APIs.")
            //.font(.title) //default font provided by apple
            .font(.system(size: 28, weight: .bold, design: .serif)) //custom font with size, weight and font design
            .foregroundStyle(.gray)
            .frame(width: 300, alignment: .leading)
            .multilineTextAlignment(.leading)
            //.lineLimit(5) limit can be set
            .lineSpacing(2)
    }
}

#Preview {
    TextView()
}

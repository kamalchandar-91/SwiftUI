//
//  MaskAndTransparency.swift
//  SwiftUIPractise
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct MaskAndTransparency: View {
    var body: some View {
        var color = Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)),Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            VStack {
                ForEach(0..<5) { item in
                    Text("Mask and Transparency")
                        .font(.title3).bold()
                        .padding(.vertical)
                        .frame(maxWidth: .infinity,alignment: .leading)
                    Divider()
                }
            }
            .frame(height: 300,alignment: .top)
            .padding()
            .background(.white)
            .mask(
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)),Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)),Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)).opacity(0)]), startPoint: .top, endPoint: .bottom)
            )
            .clipShape(RoundedRectangle(cornerRadius:25))
            .padding()
        }
    }
}

#Preview {
    MaskAndTransparency()
}

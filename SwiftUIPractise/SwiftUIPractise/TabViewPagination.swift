//
//  TabViewPagination.swift
//  SwiftUIPractise
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct TabViewPagination: View {
    var body: some View {
        TabView {
            RoundedRectangle(cornerRadius: 25)
                .fill(.brown)
                .padding()
            RoundedRectangle(cornerRadius: 25)
                .fill(.gray)
                .padding()
            RoundedRectangle(cornerRadius: 25)
                .fill(.cyan)
                .padding()
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
    }
}

#Preview {
    TabViewPagination()
}

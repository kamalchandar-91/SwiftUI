//
//  ContentView.swift
//  Toolbar
//
//  Created by kamal chandar on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("My App")
                .toolbar {
                    //can be used individually also
                    ToolbarItem(placement:.topBarLeading) {
                        Button {
                            
                        }label: {
                            Image(systemName: "person.circle")
                        }
                    }
                    ToolbarItem(placement:.topBarTrailing) {
                        Button {
                            
                        }label: {
                            Image(systemName: "bell")
                        }
                    }
                    
                    //can be added in a group
                    ToolbarItemGroup(placement: .bottomBar) {
                        //without actions
                        Image(systemName: "person")
                        Spacer()
                        Image(systemName: "ellipsis")
                        Spacer()
                        Image(systemName: "trash")
                    }
                    
                    //Toolbaritem with actions
                    ToolbarItemGroup(placement: .bottomBar) {
                        Button {
                            
                        }label: {
                            Image(systemName: "trash")
                        }
                    }
                }
                .navigationTitle("ToolbarItem")
        }
    }
}

#Preview {
    ContentView()
}

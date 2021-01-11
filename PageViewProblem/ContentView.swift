//
//  ContentView.swift
//  PageViewProblem
//
//  Created by Stefan Mehnert on 11.01.21.
//

import SwiftUI

struct ContentView: View {
    
    let items = [
        PageViewItem(id: 0, name: "First item"),
        PageViewItem(id: 1, name: "Item 2"),
        PageViewItem(id: 2, name: "Item 3"),
        PageViewItem(id: 3, name: "Item 4"),
        PageViewItem(id: 4, name: "Item 5"),
        PageViewItem(id: 5, name: "Item 6"),
        PageViewItem(id: 6, name: "Item 6"),
        PageViewItem(id: 7, name: "Item 7"),
        PageViewItem(id: 8, name: "Last Item"),
    ]
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PageViewItem {
    let id: Int
    let name: String
}

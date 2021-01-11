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
        VStack {
            TabView {
                Text("1")
                    .onAppear {
                        print("1 appeared")
                    }
                Text("2")
                    .onAppear {
                        print("2 appeared")
                    }
                Text("3")
                    .onAppear {
                        print("3 appeared")
                    }
                Text("4")
                    .onAppear {
                        print("4 appeared")
                    }
            }
            .background(Color.red)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            /*TabView {
                ForEach(self.items) { item in
                    Text(item.name)
                        .tag(item.id)
                        .onAppear {
                            print("\(item.name) appears")
                        }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))*/
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PageViewItem: Identifiable {
    let id: Int
    let name: String
}

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
    
    @State var selectedIndex: Int = 0
        
    var body: some View {
        VStack {
            TabView(selection: $selectedIndex) {
                Text("1")
                    .onAppear {
                        print("1 appeared")
                    }
                    .tag(0)
                Text("2")
                    .onAppear {
                        print("2 appeared")
                    }
                    .tag(1)
                Text("3")
                    .onAppear {
                        print("3 appeared")
                    }
                    .tag(2)
                Text("4")
                    .onAppear {
                        print("4 appeared")
                    }
                    .tag(3)
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

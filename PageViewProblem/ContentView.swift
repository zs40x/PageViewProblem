//
//  ContentView.swift
//  PageViewProblem
//
//  Created by Stefan Mehnert on 11.01.21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = ContentViewModel()
    @State var selectedIndex: Int = 0
        
    var body: some View {
        VStack {
            TabView(selection: $selectedIndex) {
                ForEach(model.items) { item in
                    TabViewContent(item: item)
                }
            }
            .background(Color.red)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

class ContentViewModel: ObservableObject {
    @Published var items = [PageViewItem]()
    
    init() {
        items.append(contentsOf:
            [
                PageViewItem(id: 0, name: "First item"),
                PageViewItem(id: 1, name: "Item 2"),
                PageViewItem(id: 2, name: "Item 3"),
                PageViewItem(id: 3, name: "Item 4"),
                PageViewItem(id: 4, name: "Item 5"),
                PageViewItem(id: 5, name: "Item 6"),
                PageViewItem(id: 6, name: "Item 6"),
                PageViewItem(id: 7, name: "Item 7"),
                PageViewItem(id: 8, name: "Last Item"),
            ])
    }
}

struct TabViewContent: View {
    @ObservedObject var item: PageViewItem
    
    var body: some View {
        VStack {
            Text(item.name)
                .font(.headline)
            Text("Appear-count: \(item.count)")
        }
        .tag(item.id)
        .onAppear {
            item.count += 1
            print("\(item.name) appeared: \(item.count)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class PageViewItem: ObservableObject, Identifiable {
    let id: Int
    let name: String
    @Published var count: Int = 0
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

//
//  ContentView.swift
//  SwiftUINewArchitecture
//
//  Created by Jaime Jazareno III on 1/18/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: AppStore

    var body: some View {
        NavigationView {
            List {
                ForEach(store.state.project.projects) { project in
                    Text(project.title)
                }
                .onDelete(perform: { indexSet in
                    indexSet.forEach { index in
                        store.send(.project(action: .delete(index: index)))
                    }
                })
            }
            .navigationTitle("Projects")
            .navigationBarItems(trailing:
                Button("Add", action: {
                    let project = Project(id: 1, title: "Test")
                    store.send(.project(action: .add(project: project)))
                })
            )
        }
        .ignoresSafeArea(edges: .horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

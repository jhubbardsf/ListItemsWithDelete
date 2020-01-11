//
//  ContentView.swift
//  ListItemsWithDelete
//
//  Created by Josh Hubbard on 1/10/20.
//  Copyright © 2020 YeetBox. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    // 1.
    @State private var animals = ["Dog", "Cat", "Cow", "Sheep", "Snake"]

    var body: some View {
    
        NavigationView {
            // 2.
            List {
                ForEach(animals, id: \.self) { animal in
                    Text(animal)
                }
                // 3.
                .onDelete(perform: self.deleteRow)
            }
            .navigationBarTitle(Text("Animals"))
        }
    }
    // 4.
    private func deleteRow(at indexSet: IndexSet) {
        self.animals.remove(atOffsets: indexSet)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

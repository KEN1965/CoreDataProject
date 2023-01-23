//
//  ContentView.swift
//  CoreDataProject
//
//  Created by K.Takahama on R 5/01/23.
//

import SwiftUI

//DataControllerを作っていきます。

struct Student: Hashable {
    let name: String
}

struct ContentView: View {
    
    let Students = [Student(name: "Harry Potter"), Student(name: "Hermione Granger")]
    
    var body: some View {
        List(Students, id: \.self) { student in
            Text(student.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  CoreDataProject
//
//  Created by K.Takahama on R 5/01/23.
//

import CoreData
import SwiftUI

struct ContentView: View {
    //Project12_part2　やっていきやしょう(๑>◡<๑)
    
    @Environment(\.managedObjectContext) var moc
    
    //E で始まらない 大文字と小文字を区別しない場合
    @FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "NOT name BEGINSWITH[c] %@" , "e")) var ships: FetchedResults<Ship>
    
        
    var body: some View {
        VStack {
            List(ships, id: \.self) { ship in
                Text(ship.name ?? "Unknown name")
            }
            Button("Add Examples") {
                let ship1 = Ship(context: moc)
                ship1.name = "Enterprise"
                ship1.universe = "Star Trek"
                
                let ship2 = Ship(context: moc)
                ship2.name = "Defiant"
                ship2.universe = "Star Trek"
                
                let ship3 = Ship(context: moc)
                ship3.name = "Millennium Falcon"
                ship3.universe = "Star Wars"
                
                let ship4 = Ship(context: moc)
                ship4.name = "Executor"
                ship4.universe = "Star Wars"
                
                try? moc.save()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

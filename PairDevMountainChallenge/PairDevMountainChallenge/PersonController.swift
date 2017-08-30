//
//  PersonController.swift
//  PairDevMountainChallenge
//
//  Created by Mitch Praag on 8/29/17.
//  Copyright © 2017 Mitch Praag. All rights reserved.
//

import Foundation
import CoreData


class PersonController1 {
    
    private let container: NSPersistentContainer
    
    private init() {
        container = NSPersistentContainer(name: "Model")
        container.loadPersistentStores { (description: NSPersistentStoreDescription, error: Error?) in if let error = error {
            NSLog("error loading persisten sotres: \(error)")
            }
    }
    }
    
    func createPerson1(name1: String) -> Person1 {
        let person1 = Person1(name1: name1, in: container.viewContext)
        save()
        return person1
    }
    func createPerson2(name2: String) -> Person2 {
        let person2 = Person2(name2: name2, in: container.viewContext)
        save()
        return person2
    
    }
    

    func save() {
        do {
            try container.viewContext.save()
        } catch {
            NSLog("error saving\(error)")
        }
    }
}




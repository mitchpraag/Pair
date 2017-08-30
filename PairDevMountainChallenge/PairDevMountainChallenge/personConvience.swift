//
//  personConvience.swift
//  PairDevMountainChallenge
//
//  Created by Mitch Praag on 8/29/17.
//  Copyright © 2017 Mitch Praag. All rights reserved.
//

import Foundation
import CoreData


extension Person1 {
    convenience init(name1: String, in context:NSManagedObjectContext) {
        self.init(context:context)
        
        self.name1 = name1
    }
}

extension Person2 {
    convenience init(name2: String, in context:NSManagedObjectContext) {
        self.init(context:context)
        
        self.name2 = name2
    }
}

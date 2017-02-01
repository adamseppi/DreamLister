//
//  Item+CoreDataClass.swift
//  DreamLister
//
//  Created by Adam Seppi on 1/24/17.
//  Copyright © 2017 AdamSeppi. All rights reserved.
//

import Foundation
import CoreData

@objc(Item)
public class Item: NSManagedObject {

    public override func awakeFromInsert() {
        super.awakeFromInsert()
        
        self.created = NSDate()
        
    }
    
}

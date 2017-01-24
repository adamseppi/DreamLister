//
//  ItemType+CoreDataProperties.swift
//  DreamLister
//
//  Created by Adam Seppi on 1/24/17.
//  Copyright © 2017 AdamSeppi. All rights reserved.
//

import Foundation
import CoreData
import 

extension ItemType {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ItemType> {
        return NSFetchRequest<ItemType>(entityName: "ItemType");
    }

    @NSManaged public var type: String?
    @NSManaged public var toItem: Item?

}

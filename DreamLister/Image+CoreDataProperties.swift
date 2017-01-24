//
//  Image+CoreDataProperties.swift
//  DreamLister
//
//  Created by Adam Seppi on 1/24/17.
//  Copyright © 2017 AdamSeppi. All rights reserved.
//

import Foundation
import CoreData
import 

extension Image {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Image> {
        return NSFetchRequest<Image>(entityName: "Image");
    }

    @NSManaged public var image: NSObject?
    @NSManaged public var toItem: Item?
    @NSManaged public var toStore: Store?

}

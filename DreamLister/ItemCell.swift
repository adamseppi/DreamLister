//
//  ItemCell.swift
//  DreamLister
//
//  Created by Adam Seppi on 1/25/17.
//  Copyright © 2017 AdamSeppi. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var detail: UILabel!
    
    func configureCell(item: Item) {
        
        title.text = item.title
        price.text = "$\(item.price)"
        detail.text = item.details
    }
}

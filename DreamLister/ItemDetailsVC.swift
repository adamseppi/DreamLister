//
//  ItemDetailsVC.swift
//  DreamLister
//
//  Created by Adam Seppi on 1/31/17.
//  Copyright © 2017 AdamSeppi. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailsVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{

    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var detailsField: UITextView!
    
    var stores = [Store]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        
        storePicker.delegate = self
        storePicker.dataSource = self
        
//        let store1 = Store(context: context)
//        store1.name = "BestBuy"
//        let store2 = Store(context: context)
//        store2.name = "Wal-Mart"
//        let store3 = Store(context: context)
//        store3.name = "Dollar General"
//        let store4 = Store(context: context)
//        store4.name = "Vietnam"
//        let store5 = Store(context: context)
//        store5.name = "Car Dealer"
//        let store6 = Store(context: context)
//        store6.name = "Apple Store"
//        
//        ad.saveContext()
        getStores()
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let store = stores[row]
        return store.name
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stores.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //update when selected
    }
    
    func getStores(){
        let fetchRequest: NSFetchRequest<Store> = Store.fetchRequest()
        
        do{
            self.stores = try context.fetch(fetchRequest)
            self.storePicker.reloadAllComponents()
        } catch {
            //handle error
        }
    }
    
    @IBAction func savePressed(_ sender: UIButton) {
        let newItem = Item(context: context)
        if let title = titleField.text{
            newItem.title = title
        }
        
        if let price = priceField.text{
            newItem.price = (price as NSString).doubleValue
        }
        
        if let details = detailsField.text {
            newItem.details = details
        }
        
        newItem.toStore = stores[storePicker.selectedRow(inComponent: 0)]
        
        ad.saveContext()
        
        _ = navigationController?.popViewController(animated: true)
        
    }

}

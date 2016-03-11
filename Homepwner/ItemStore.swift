//
//  ItemStore.swift
//  Homepwner
//
//  Created by Richard Martin on 2016-03-11.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
        
    }
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
}

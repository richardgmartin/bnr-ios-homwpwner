//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Richard Martin on 2016-03-11.
//  Copyright © 2016 Richard Martin. All rights reserved.
//

import UIKit

class ItemsViewController: UITableViewController{
    
    var itemStore: ItemStore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // get the height of the status bar
        let statusBarHeight = UIApplication.sharedApplication().statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // get a new or recycled cell
        let cell = tableView.dequeueReusableCellWithIdentifier("UITableViewCell", forIndexPath: indexPath)
        
        // set the txt on the cell with the description of the item that is at the nth index of items
        // where n = row this cell and will appear in tableview
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel!.text = item.name
        cell.detailTextLabel!.text = "$\(item.valueInDollars)"
        
        return cell
        
    }
    
}

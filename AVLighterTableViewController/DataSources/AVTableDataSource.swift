//
//  AVTableDataSource.swift
//  AVLighterTableViewController
//
//  Created by Angel Vasa on 31/12/15.
//  Copyright © 2015 Angel Vasa. All rights reserved.
//

import UIKit
import Foundation

protocol AVCellProtocol {
    func data(items: AnyObject)
}

class AVTableDataSource: NSObject, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    @IBInspectable var cellHeight: NSNumber! = 44
    var cellIdentifier: String = ""
    var tableViewCellClass : AnyClass!
    var tableCellNibName : String = ""
    var delegate : AVCellProtocol?
    var objects: [AnyObject] = []
    var selectedObject: AnyObject -> Void = {_ in }
    
    
    //    MARK: Cell Register
    func registerTableCellClass(tableViewCell: AnyClass, cellIdentifier : String) {
        self.cellIdentifier = cellIdentifier
        self.tableViewCellClass = tableViewCell
        self.tableView!.registerClass(tableViewCell, forCellReuseIdentifier: cellIdentifier)
    }
    
    func registerTableCellNib(tableCellNibName : String, cellIdentifier: String) {
        self.cellIdentifier = cellIdentifier
        self.tableCellNibName = tableCellNibName
        self.tableView!.registerNib(UINib(nibName: tableCellNibName, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    
    //    MARK: Set Data
    func setupData(objects: [AnyObject]!) {
        self.objects = objects
    }
    
    
    //    MARK: Table Delegate & DataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return self.cellHeight! as CGFloat
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as (UITableViewCell)
        self.delegate = cell as! AVBaseTableViewCell
        self.delegate!.data(objects[indexPath.row])
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.selectedObject(self.objects[indexPath.row])
    }
    
    
    //    MARK: Blocks
    func selectedObject(selectedObject: AnyObject -> Void) {
        self.selectedObject = selectedObject
    }
}

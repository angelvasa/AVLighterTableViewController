//
//  ViewController.swift
//  AVLighterTableViewController
//
//  Created by Angel Vasa on 31/12/15.
//  Copyright © 2015 Angel Vasa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dataSource : AVTableDataSource!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        self.dataSource.registerTableCellNib("MyCustomTableViewCell", cellIdentifier: "myCell")
        self.dataSource.setupData(["One", "Two", "Three"]) // Pass your object after server call
        self.dataSource.selectedObject { (selectedObject) -> Void in
            print(selectedObject)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


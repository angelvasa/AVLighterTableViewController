//
//  MyCustomTableViewCell.swift
//  AVLighterTableViewController
//
//  Created by Angel Vasa on 31/12/15.
//  Copyright © 2015 Angel Vasa. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: AVBaseTableViewCell {
    
    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func data(items: AnyObject) {
        super.data(items)
        print(items)
        label.text = items as? String
    }
    
}



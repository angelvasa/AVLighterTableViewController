//
//  AVBaseTableViewCell.swift
//  AVLighterTableViewController
//
//  Created by Angel Vasa on 31/12/15.
//  Copyright © 2015 Angel Vasa. All rights reserved.
//

import UIKit

class AVBaseTableViewCell: UITableViewCell, AVCellProtocol {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    // Override this method in subclass
    func data(items: AnyObject) {
        
    }

}

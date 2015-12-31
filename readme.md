# AVLighterTableViewController

**Why AVLighterTableViewController?**

As an iOS developer, we need to use UITableView as a basic component for any of our project and we need to implement delegates and datasource in each and every view controller but as a solution we can make one lighter delegate & datasoucre class which will handle all the mess for you.


**How to use it**

You just need to copy 2 classes from above demo project 


**1) AVTableDataSource**

**2) AVBaseTableViewCell**

-- After copying this class you need to add NSObject into your storyboard, and apply custom class to AVTableDataSource for that NSObject

-- Now connect tableview outlet of NSObject to your tableview

-- Apply tableview's delegate and datasource to NSObject

-- Now create custom cell with xib and subclass that class with AVBaseTableViewCell

-- In your viewcontroller you can add below line and you are done!!

```
self.dataSource.registerTableCellNib("MyCustomTableViewCell", cellIdentifier: "myCell")
self.dataSource.setupData(["One", "Two", "Three"]) // Pass your object after server call
self.dataSource.selectedObject { (selectedObject) -> Void in
print(selectedObject)
}
```

-- Hope you like it. 

**If you have any query or suggestion you can always contact me at vasaangel91@gmail.com**

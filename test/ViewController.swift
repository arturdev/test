//
//  ViewController.swift
//  test
//
//  Created by tecso on 09/04/16.
//  Copyright © 2016 tecso. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, CustomCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    var arr:[String] = ["test1","test2","test3","test4","test5","test6"];
    let cellItem = "cellItem"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! customCell
        cell.label.text = arr[indexPath.row]
        cell.delegate = self;
        cell.tableView = tableView;
        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func customCellDidSelectPrice(cell: AnyObject) {
        
    }
   
    @IBAction func btnTap(sender: UIButton) {
        sender.backgroundColor = UIColor.init(red: 51/255, green: 51/255, blue: 51/255, alpha: 0.5)
    }
    
}


//
//  customCell.swift
//  test
//
//  Created by tecso on 09/04/16.
//  Copyright © 2016 tecso. All rights reserved.
import UIKit

public protocol CustomCellDelegate : NSObjectProtocol {
    func customCellDidSelectPrice(cell: AnyObject);
}

class customCell: UITableViewCell  {
 
    weak var delegate: CustomCellDelegate?
    weak var tableView: UITableView?
    
    var dropDown: DropDownView?
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var roundedBackgroundView: UIView!
    @IBOutlet weak var priceButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.roundedBackgroundView.layer.cornerRadius = 4;
        self.roundedBackgroundView.layer.masksToBounds = true;
        
        self.layer.shadowOffset = CGSizeMake(1, 1);
        self.layer.shadowColor = UIColor.blackColor().CGColor;
        self.layer.shadowRadius = 2;
        self.layer.masksToBounds = false;
        self.layer.shadowOpacity = 1;
    }
    
    @IBAction func priceButtonTapped(sender: AnyObject) {
        self.delegate?.customCellDidSelectPrice(self);
        
        if (self.dropDown?.superview != nil) {
            self.hideDropDown()
        } else {
            self.showDropDown()
        }
    }
    
    private func hideDropDown() {
        self.dropDown?.removeFromSuperview()
    }
    
    private func showDropDown() {
        let rect = self.priceButton.convertRect(self.priceButton.bounds, toView: self.tableView);
        self.dropDown = NSBundle.mainBundle().loadNibNamed("DropDownView", owner: nil, options: nil)[0] as? DropDownView;
        self.dropDown?.frame.origin.x = rect.origin.x;
        self.dropDown?.frame.origin.y = rect.origin.y + rect.size.height;
        
        self.tableView!.addSubview(self.dropDown!);
    }
}
